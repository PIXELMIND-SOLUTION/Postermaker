// import 'package:flutter/material.dart';
// import 'package:poster_maker/services/forgot_password_service.dart';

// class ForgotPasswordProvider extends ChangeNotifier {
//   final ForgotPasswordService _service = ForgotPasswordService();
  
//   bool _isLoading = false;
//   String _message = '';
//   String _phoneNumber = '';
//   bool _otpSent = false;
//   bool _otpVerified = false;
  

//   bool get isLoading => _isLoading;
//   String get message => _message;
//   String get phoneNumber => _phoneNumber;
//   bool get otpSent => _otpSent;
//   bool get otpVerified => _otpVerified;

//   void _setLoading(bool loading) {
//     _isLoading = loading;
//     notifyListeners();
//   }
  

//   void _setMessage(String message) {
//     _message = message;
//     notifyListeners();
//   }
  

//   void setPhoneNumber(String phoneNumber) {
//     _phoneNumber = phoneNumber;
//     notifyListeners();
//   }
  
//   // Send OTP
//   Future<bool> sendOtp(String phoneNumber) async {
//     _setLoading(true);
//     _setMessage('');
    
//     final result = await _service.sendOtp(phoneNumber);
    
//     if (result['success']) {
//       _phoneNumber = phoneNumber;
//       _otpSent = true;
//       _setMessage(result['message']);
//       _setLoading(false);
//       return true;
//     } else {
//       _setMessage(result['message']);
//       _setLoading(false);
//       return false;
//     }
//   }
  
//   // Verify OTP
//   Future<bool> verifyOtp(String otp) async {
//     _setLoading(true);
//     _setMessage('');
    
//     final result = await _service.verifyOtp(otp);
    
//     if (result['success']) {
//       _otpVerified = true;
//       _setMessage(result['message']);
//       _setLoading(false);
//       return true;
//     } else {
//       _setMessage(result['message']);
//       _setLoading(false);
//       return false;
//     }
//   }
  
//   // Reset password
//   Future<bool> resetPassword(String newPassword, String confirmPassword) async {
//     _setLoading(true);
//     _setMessage('');
    
//     // Validation
//     if (newPassword.isEmpty || confirmPassword.isEmpty) {
//       _setMessage('Please fill in all fields');
//       _setLoading(false);
//       return false;
//     }
    
//     if (newPassword != confirmPassword) {
//       _setMessage('Passwords do not match');
//       _setLoading(false);
//       return false;
//     }
    
//     if (newPassword.length < 6) {
//       _setMessage('Password must be at least 6 characters long');
//       _setLoading(false);
//       return false;
//     }
    
//     final result = await _service.resetPassword(newPassword, confirmPassword);
    
//     if (result['success']) {
//       _setMessage(result['message']);
//       _setLoading(false);
//       return true;
//     } else {
//       _setMessage(result['message']);
//       _setLoading(false);
//       return false;
//     }
//   }
  
//   // Clear all data
//   void clearData() {
//     _phoneNumber = '';
//     _otpSent = false;
//     _otpVerified = false;
//     _message = '';
//     _isLoading = false;
//     notifyListeners();
//   }
  
//   // Show snackbar message
//   void showMessage(BuildContext context, String message, {bool isError = true}) {
//     ScaffoldMessenger.of(context).showSnackBar(
//       SnackBar(
//         content: Text(message),
//         backgroundColor: isError ? Colors.red : Colors.green,
//         duration: const Duration(seconds: 3),
//       ),
//     );
//   }
// }




















// import 'package:flutter/material.dart';
// import 'package:poster_maker/helper/helper_function.dart';

// import 'package:poster_maker/services/forgot_password_service.dart';

// class ForgotPasswordProvider extends ChangeNotifier {
//   final ForgotPasswordService _service = ForgotPasswordService();
  
//   bool _isLoading = false;
//   String _message = '';
//   String _phoneNumber = '';
//   bool _otpSent = false;
//   bool _otpVerified = false;
//   String? _token;
  
//   // Getters
//   bool get isLoading => _isLoading;
//   String get message => _message;
//   String get phoneNumber => _phoneNumber;
//   bool get otpSent => _otpSent;
//   bool get otpVerified => _otpVerified;
//   String? get token => _token;
  
//   // Set loading state
//   void _setLoading(bool loading) {
//     _isLoading = loading;
//     notifyListeners();
//   }
  
//   // Set message
//   void _setMessage(String message) {
//     _message = message;
//     notifyListeners();
//   }
  
//   // Set phone number
//   void setPhoneNumber(String phoneNumber) {
//     _phoneNumber = phoneNumber;
//     notifyListeners();
//   }
  
//   // Send OTP
//   Future<bool> sendOtp(String phoneNumber) async {
//     _setLoading(true);
//     _setMessage('');
    
//     final result = await _service.sendOtp(phoneNumber);
    
//     if (result['success']) {
//       _phoneNumber = phoneNumber;
//       _otpSent = true;
      
//       // Extract token from response if available
//       if (result['data'] != null && result['data']['token'] != null) {
//         _token = result['data']['token'];
//         // Save token to SharedPreferences
//         await SharedPreferencesHelper.saveUserToken(_token!);
//       }
      
//       _setMessage(result['message']);
//       _setLoading(false);
//       return true;
//     } else {
//       _setMessage(result['message']);
//       _setLoading(false);
//       return false;
//     }
//   }
  
//   // Verify OTP
//   Future<bool> verifyOtp(String otp) async {
//     _setLoading(true);
//     _setMessage('');
    
//     final result = await _service.verifyOtp(otp);
    
//     if (result['success']) {
//       _otpVerified = true;
//       _setMessage(result['message']);
//       _setLoading(false);
//       return true;
//     } else {
//       _setMessage(result['message']);
//       _setLoading(false);
//       return false;
//     }
//   }
  
//   // Reset password
//   Future<bool> resetPassword(String newPassword, String confirmPassword) async {
//     _setLoading(true);
//     _setMessage('');
    
//     // Validation
//     if (newPassword.isEmpty || confirmPassword.isEmpty) {
//       _setMessage('Please fill in all fields');
//       _setLoading(false);
//       return false;
//     }
    
//     if (newPassword != confirmPassword) {
//       _setMessage('Passwords do not match');
//       _setLoading(false);
//       return false;
//     }
    
//     if (newPassword.length < 6) {
//       _setMessage('Password must be at least 6 characters long');
//       _setLoading(false);
//       return false;
//     }
    
//     final result = await _service.resetPassword(newPassword, confirmPassword);
    
//     if (result['success']) {
//       _setMessage(result['message']);
//       _setLoading(false);
//       return true;
//     } else {
//       _setMessage(result['message']);
//       _setLoading(false);
//       return false;
//     }
//   }
  
//   // Get stored token
//   Future<String?> getStoredToken() async {
//     if (_token != null) {
//       return _token;
//     }
//     _token = await SharedPreferencesHelper.getUserToken();
//     return _token;
//   }
  
//   // Clear all data
//   void clearData() {
//     _phoneNumber = '';
//     _otpSent = false;
//     _otpVerified = false;
//     _message = '';
//     _isLoading = false;
//     _token = null;
//     notifyListeners();
//   }
  
//   // Show snackbar message
//   void showMessage(BuildContext context, String message, {bool isError = true}) {
//     ScaffoldMessenger.of(context).showSnackBar(
//       SnackBar(
//         content: Text(message),
//         backgroundColor: isError ? Colors.red : Colors.green,
//         duration: const Duration(seconds: 3),
//       ),
//     );
//   }
// }






















import 'package:flutter/material.dart';
import 'package:poster_maker/helper/helper_function.dart';
import 'package:poster_maker/services/forgot_password_service.dart';

class ForgotPasswordProvider extends ChangeNotifier {
  final ForgotPasswordService _service = ForgotPasswordService();
  
  bool _isLoading = false;
  String _message = '';
  String _phoneNumber = '';
  bool _otpSent = false;
  bool _otpVerified = false;
  String? _token;
  
  // Getters
  bool get isLoading => _isLoading;
  String get message => _message;
  String get phoneNumber => _phoneNumber;
  bool get otpSent => _otpSent;
  bool get otpVerified => _otpVerified;
  String? get token => _token;
  bool get isSuccess => _otpVerified; // Add this getter for compatibility with OtpScreen
  
  // Set loading state
  void _setLoading(bool loading) {
    _isLoading = loading;
    notifyListeners();
  }
  
  // Set message
  void _setMessage(String message) {
    _message = message;
    notifyListeners();
  }
  
  // Set phone number
  void setPhoneNumber(String phoneNumber) {
    _phoneNumber = phoneNumber;
    notifyListeners();
  }
  
  // Send OTP
  Future<bool> sendOtp(String phoneNumber) async {
    _setLoading(true);
    _setMessage('');
    
    final result = await _service.sendOtp(phoneNumber);
    
    if (result['success']) {
      _phoneNumber = phoneNumber;
      _otpSent = true;
      
      // Extract token from response if available
      if (result['data'] != null && result['data']['token'] != null) {
        _token = result['data']['token'];
        // Save token to SharedPreferences
        await SharedPreferencesHelper.saveUserToken(_token!);
      }
      
      _setMessage(result['message']);
      _setLoading(false);
      return true;
    } else {
      _setMessage(result['message']);
      _setLoading(false);
      return false;
    }
  }
  
  // Verify OTP - Updated to handle token parameter
  Future<bool> verifyOtp(String otp, {String? token}) async {
    _setLoading(true);
    _setMessage('');
    
    // Use provided token or stored token or phone number
    String? useToken = token ?? _token;
    
    final result = await _service.verifyOtp(
      otp, 
      token: useToken, 
      phoneNumber: _phoneNumber.isNotEmpty ? _phoneNumber : null
    );
    
    if (result['success']) {
      _otpVerified = true;
      _setMessage(result['message']);
      _setLoading(false);
      return true;
    } else {
      _setMessage(result['message']);
      _setLoading(false);
      return false;
    }
  }
  
  // Resend OTP - Add this method for compatibility with OtpScreen
  Future<bool> resendOtp() async {
    if (_phoneNumber.isNotEmpty) {
      return await sendOtp(_phoneNumber);
    } else {
      _setMessage('Phone number not found. Please restart the process.');
      return false;
    }
  }
  
  // Check if currently resending (for UI state)
  bool get isResending => _isLoading && _otpSent;
  
  // Reset password - Updated to handle token parameter
  Future<bool> resetPassword(String newPassword, String confirmPassword, {String? token}) async {
    _setLoading(true);
    _setMessage('');
    
    // Validation
    if (newPassword.isEmpty || confirmPassword.isEmpty) {
      _setMessage('Please fill in all fields');
      _setLoading(false);
      return false;
    }
    
    if (newPassword != confirmPassword) {
      _setMessage('Passwords do not match');
      _setLoading(false);
      return false;
    }
    
    if (newPassword.length < 6) {
      _setMessage('Password must be at least 6 characters long');
      _setLoading(false);
      return false;
    }
    
    // Use provided token or stored token
    String? useToken = token ?? _token;
    
    final result = await _service.resetPassword(newPassword, confirmPassword, token: useToken);
    
    if (result['success']) {
      _setMessage(result['message']);
      _setLoading(false);
      return true;
    } else {
      _setMessage(result['message']);
      _setLoading(false);
      return false;
    }
  }
  
  // Get stored token
  Future<String?> getStoredToken() async {
    if (_token != null) {
      return _token;
    }
    _token = await SharedPreferencesHelper.getUserToken();
    return _token;
  }
  
  // Clear all data
  void clearData() {
    _phoneNumber = '';
    _otpSent = false;
    _otpVerified = false;
    _message = '';
    _isLoading = false;
    _token = null;
    notifyListeners();
  }
  
  // Show snackbar message
  void showMessage(BuildContext context, String message, {bool isError = true}) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
        backgroundColor: isError ? Colors.red : Colors.green,
        duration: const Duration(seconds: 3),
      ),
    );
  }
}