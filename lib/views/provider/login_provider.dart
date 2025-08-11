// import 'package:flutter/material.dart';
// import 'package:poster_maker/services/login_service.dart';


// class LoginProvider extends ChangeNotifier {
//   final LoginService _loginService = LoginService();
  
//   bool _isLoading = false;
//   String? _errorMessage;
//   Map<String, dynamic>? _userData;


//   bool get isLoading => _isLoading;
//   String? get errorMessage => _errorMessage;
//   Map<String, dynamic>? get userData => _userData;


//   void clearError() {
//     _errorMessage = null;
//     notifyListeners();
//   }

//   // Login method
//   Future<bool> login({
//     required String phoneNumber,
//     required String password,
//   }) async {
//     _isLoading = true;
//     _errorMessage = null;
//     notifyListeners();

//     try {
//       final result = await _loginService.login(
//         phoneNumber: phoneNumber,
//         password: password,
//       );

//       _isLoading = false;

//       if (result['success'] == true) {
//         _userData = result['data'];
//         _errorMessage = null;
//         notifyListeners();
//         return true;
//       } else {
//         _errorMessage = result['message'];
//         notifyListeners();
//         return false;
//       }
//     } catch (e) {
//       _isLoading = false;
//       _errorMessage = 'An unexpected error occurred';
//       notifyListeners();
//       return false;
//     }
//   }

//   // Logout method
//   void logout() {
//     _userData = null;
//     _errorMessage = null;
//     notifyListeners();
//   }

//   // Check if user is logged in
//   bool get isLoggedIn => _userData != null;
// }



















import 'package:flutter/material.dart';
import 'package:poster_maker/helper/helper_function.dart';
import 'package:poster_maker/services/login_service.dart';


class LoginProvider extends ChangeNotifier {
  final LoginService _loginService = LoginService();
  
  bool _isLoading = false;
  String? _errorMessage;
  Map<String, dynamic>? _userData;

  bool get isLoading => _isLoading;
  String? get errorMessage => _errorMessage;
  Map<String, dynamic>? get userData => _userData;

  void clearError() {
    _errorMessage = null;
    notifyListeners();
  }

  // Login method
  Future<bool> login({
    required String phoneNumber,
    required String password,
  }) async {
    _isLoading = true;
    _errorMessage = null;
    notifyListeners();

    try {
      final result = await _loginService.login(
        phoneNumber: phoneNumber,
        password: password,
      );

      _isLoading = false;

      if (result['success'] == true) {
        _userData = result['data'];
        _errorMessage = null;
        
        // Save login data to SharedPreferences
        await _saveLoginDataToPreferences(result);
        
        notifyListeners();
        return true;
      } else {
        _errorMessage = result['message'];
        notifyListeners();
        return false;
      }
    } catch (e) {
      _isLoading = false;
      _errorMessage = 'An unexpected error occurred';
      notifyListeners();
      return false;
    }
  }

  // Save login data to SharedPreferences
  Future<void> _saveLoginDataToPreferences(Map<String, dynamic> result) async {
    try {
      final userData = result['data'];
      
      // Extract token from the response (adjust key names based on your API response)
      String? token = userData['token'] ?? userData['access_token'] ?? userData['auth_token'];
      
      if (token != null) {
        // Save user token
        await SharedPreferencesHelper.saveUserToken(token);
      }
      
      // Save user data
      await SharedPreferencesHelper.saveUserData(userData);
      
      // Save basic user info (adjust key names based on your API response)
      String email = userData['email'] ?? '';
      String fullName = userData['full_name'] ?? userData['name'] ?? '';
      String phone = userData['phone'] ?? userData['phone_number'] ?? '';
      
      await SharedPreferencesHelper.saveUserBasicInfo(
        email: email,
        fullName: fullName,
        phoneNumber: phone,
      );
      
      // Set login status to true
      await SharedPreferencesHelper.setLoginStatus(true);
      
      print('✅ Login data saved to SharedPreferences successfully');
    } catch (e) {
      print('❌ Error saving login data to SharedPreferences: $e');
    }
  }

  // Logout method
  Future<void> logout() async {
    _userData = null;
    _errorMessage = null;
    
    // Clear all data from SharedPreferences
    await SharedPreferencesHelper.clearUserData();
    
    print('✅ User logged out and data cleared');
    notifyListeners();
  }

  // Check if user is logged in (from memory)
  bool get isLoggedIn => _userData != null;
  
  // Initialize user data from SharedPreferences on app start
  Future<void> initializeUserData() async {
    try {
      bool isLoggedIn = await SharedPreferencesHelper.getLoginStatus();
      if (isLoggedIn) {
        _userData = await SharedPreferencesHelper.getUserData();
        notifyListeners();
        print('✅ User data loaded from SharedPreferences');
      }
    } catch (e) {
      print('❌ Error loading user data from SharedPreferences: $e');
    }
  }
}