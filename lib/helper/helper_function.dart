// helpers/shared_preferences_helper.dart
import 'dart:convert';
import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferencesHelper {
  // Keys for storing data
  static const String _userTokenKey = 'user_token';
  static const String _userDataKey = 'user_data';
  static const String _isLoggedInKey = 'is_logged_in';
  static const String _userEmailKey = 'user_email';
  static const String _userNameKey = 'user_name';
  static const String _userPhoneKey = 'user_phone';

  // Save user token
  static Future<bool> saveUserToken(String token) async {
    try {
      final prefs = await SharedPreferences.getInstance();
      return await prefs.setString(_userTokenKey, token);
    } catch (e) {
      return false;
    }
  }

  // Get user token
  static Future<String?> getUserToken() async {
    try {
      final prefs = await SharedPreferences.getInstance();
      return prefs.getString(_userTokenKey);
    } catch (e) {
      return null;
    }
  }

  // Save user data
  static Future<bool> saveUserData(Map<String, dynamic> userData) async {
    try {
      final prefs = await SharedPreferences.getInstance();
      final userDataString = jsonEncode(userData);
      return await prefs.setString(_userDataKey, userDataString);
    } catch (e) {
      return false;
    }
  }

  // Get user data
  static Future<Map<String, dynamic>?> getUserData() async {
    try {
      final prefs = await SharedPreferences.getInstance();
      final userDataString = prefs.getString(_userDataKey);
      if (userDataString != null) {
        return jsonDecode(userDataString) as Map<String, dynamic>;
      }
      return null;
    } catch (e) {
      return null;
    }
  }

  // Save login status
  static Future<bool> setLoginStatus(bool isLoggedIn) async {
    try {
      final prefs = await SharedPreferences.getInstance();
      return await prefs.setBool(_isLoggedInKey, isLoggedIn);
    } catch (e) {
      return false;
    }
  }

  // Get login status
  static Future<bool> getLoginStatus() async {
    try {
      final prefs = await SharedPreferences.getInstance();
      return prefs.getBool(_isLoggedInKey) ?? false;
    } catch (e) {
      return false;
    }
  }

  // Save user basic info
  static Future<bool> saveUserBasicInfo({
    required String email,
    required String fullName,
    required String phoneNumber,
  }) async {
    try {
      final prefs = await SharedPreferences.getInstance();
      await prefs.setString(_userEmailKey, email);
      await prefs.setString(_userNameKey, fullName);
      await prefs.setString(_userPhoneKey, phoneNumber);
      return true;
    } catch (e) {
      return false;
    }
  }

  // Get user email
  static Future<String?> getUserEmail() async {
    try {
      final prefs = await SharedPreferences.getInstance();
      return prefs.getString(_userEmailKey);
    } catch (e) {
      return null;
    }
  }

  // Get user name
  static Future<String?> getUserName() async {
    try {
      final prefs = await SharedPreferences.getInstance();
      return prefs.getString(_userNameKey);
    } catch (e) {
      return null;
    }
  }

  // Get user phone
  static Future<String?> getUserPhone() async {
    try {
      final prefs = await SharedPreferences.getInstance();
      return prefs.getString(_userPhoneKey);
    } catch (e) {
      return null;
    }
  }

  // Clear all user data (for logout)
  static Future<bool> clearUserData() async {
    try {
      final prefs = await SharedPreferences.getInstance();
      await prefs.remove(_userTokenKey);
      await prefs.remove(_userDataKey);
      await prefs.remove(_isLoggedInKey);
      await prefs.remove(_userEmailKey);
      await prefs.remove(_userNameKey);
      await prefs.remove(_userPhoneKey);
      return true;
    } catch (e) {
      return false;
    }
  }

  // Check if user data exists
  static Future<bool> hasUserData() async {
    try {
      final prefs = await SharedPreferences.getInstance();
      return prefs.containsKey(_userTokenKey) && 
             prefs.containsKey(_userDataKey);
    } catch (e) {
      return false;
    }
  }

  // Save complete registration data
  static Future<bool> saveRegistrationData({
    required String token,
    required Map<String, dynamic> userData,
    required String email,
    required String fullName,
    required String phoneNumber,
  }) async {
    try {
      await saveUserToken(token);
      await saveUserData(userData);
      await saveUserBasicInfo(
        email: email, 
        fullName: fullName, 
        phoneNumber: phoneNumber
      );
      await setLoginStatus(true);
      return true;
    } catch (e) {
      return false;
    }
  }
}