import 'package:flutter/material.dart';
import 'package:poster_maker/services/verify_otp_service.dart';


// class VerifyOtpProvider extends ChangeNotifier {
//   final VerifyOtpService _otpService = VerifyOtpService();
  
//   bool _isLoading = false;
//   bool _isResending = false;
//   String _message = '';
//   bool _isSuccess = false;

//   bool get isLoading => _isLoading;
//   bool get isResending => _isResending;
//   String get message => _message;
//   bool get isSuccess => _isSuccess;

//   Future<void> verifyOtp(String otp) async {
//     _isLoading = true;
//     _message = '';
//     _isSuccess = false;
//     notifyListeners();

//     try {
//       final result = await _otpService.verifyOtp(otp);
      
//       _isSuccess = result['success'];
//       _message = result['message'];
      
//       if (_isSuccess) {
        
//       }
//     } catch (e) {
//       _isSuccess = false;
//       _message = 'An error occurred during verification';
//     } finally {
//       _isLoading = false;
//       notifyListeners();
//     }
//   }

//   Future<void> resendOtp() async {
//     _isResending = true;
//     _message = '';
//     notifyListeners();

//     try {
//       final result = await _otpService.resendOtp();
//       _message = result['message'];
//     } catch (e) {
//       _message = 'Failed to resend OTP';
//     } finally {
//       _isResending = false;
//       notifyListeners();
//     }
//   }

//   void clearMessage() {
//     _message = '';
//     notifyListeners();
//   }
// }

















class VerifyOtpProvider extends ChangeNotifier {
  final VerifyOtpService _otpService = VerifyOtpService();
  
  bool _isLoading = false;
  bool _isResending = false;
  String _message = '';
  bool _isSuccess = false;

  bool get isLoading => _isLoading;
  bool get isResending => _isResending;
  String get message => _message;
  bool get isSuccess => _isSuccess;

  Future<void> verifyOtp(String otp, {String? token}) async {
    _isLoading = true;
    _message = '';
    _isSuccess = false;
    notifyListeners();

    try {
      final result = await _otpService.verifyOtp(otp, token: token);
      
      _isSuccess = result['success'];
      _message = result['message'];
      
      print('Provider - Verification result: $result');
      
      if (_isSuccess) {
        // Handle successful verification
        // You can store user data or token here if needed
        print('OTP verification successful!');
      } else {
        print('OTP verification failed: ${result['message']}');
      }
    } catch (e) {
      _isSuccess = false;
      _message = 'An error occurred during verification: ${e.toString()}';
      print('Provider error: $e');
    } finally {
      _isLoading = false;
      notifyListeners();
    }
  }

  Future<void> resendOtp() async {
    _isResending = true;
    _message = '';
    notifyListeners();

    try {
      final result = await _otpService.resendOtp();
      _message = result['message'];
    } catch (e) {
      _message = 'Failed to resend OTP';
    } finally {
      _isResending = false;
      notifyListeners();
    }
  }

  void clearMessage() {
    _message = '';
    notifyListeners();
  }
}