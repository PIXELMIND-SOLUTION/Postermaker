// import 'dart:convert';
// import 'package:http/http.dart' as http;

// class ForgotPasswordService {
//   final String _baseUrl = 'https://postmaker-backend-1.onrender.com/api/forgot';
  
//   // Send OTP to phone number
//   Future<Map<String, dynamic>> sendOtp(String phoneNumber) async {
//     try {
//       final response = await http.post(
//         Uri.parse('$_baseUrl/send-otp'),
//         headers: {
//           'Content-Type': 'application/json',
//         },
//         body: json.encode({
//           'phoneNumber': phoneNumber,
//         }),
//       );
      
//       if (response.statusCode == 200 || response.statusCode == 201) {
//         return {
//           'success': true,
//           'data': json.decode(response.body),
//           'message': 'OTP sent successfully'
//         };
//       } else {
//         final errorData = json.decode(response.body);
//         return {
//           'success': false,
//           'message': errorData['message'] ?? 'Failed to send OTP',
//         };
//       }
//     } catch (e) {
//       return {
//         'success': false,
//         'message': 'Network error: ${e.toString()}',
//       };
//     }
//   }
  
//   // Verify OTP
//   Future<Map<String, dynamic>> verifyOtp(String otp) async {
//     try {
//       final response = await http.post(
//         Uri.parse('$_baseUrl/verify-otp'),
//         headers: {
//           'Content-Type': 'application/json',
//         },
//         body: json.encode({
//           'otp': otp,
//         }),
//       );
      
//       if (response.statusCode == 200 || response.statusCode == 201) {
//         return {
//           'success': true,
//           'data': json.decode(response.body),
//           'message': 'OTP verified successfully'
//         };
//       } else {
//         final errorData = json.decode(response.body);
//         return {
//           'success': false,
//           'message': errorData['message'] ?? 'Invalid OTP',
//         };
//       }
//     } catch (e) {
//       return {
//         'success': false,
//         'message': 'Network error: ${e.toString()}',
//       };
//     }
//   }
  
//   // Reset password
//   Future<Map<String, dynamic>> resetPassword(String newPassword, String confirmPassword) async {
//     try {
//       final response = await http.post(
//         Uri.parse('$_baseUrl/reset-password'),
//         headers: {
//           'Content-Type': 'application/json',
//         },
//         body: json.encode({
//           'newPassword': newPassword,
//           'confirmPassword': confirmPassword,
//         }),
//       );
      
//       if (response.statusCode == 200 || response.statusCode == 201) {
//         return {
//           'success': true,
//           'data': json.decode(response.body),
//           'message': 'Password reset successfully'
//         };
//       } else {
//         final errorData = json.decode(response.body);
//         return {
//           'success': false,
//           'message': errorData['message'] ?? 'Failed to reset password',
//         };
//       }
//     } catch (e) {
//       return {
//         'success': false,
//         'message': 'Network error: ${e.toString()}',
//       };
//     }
//   }
// }



















import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:poster_maker/helper/helper_function.dart';

class ForgotPasswordService {
  final String _baseUrl = 'https://postmaker-backend-1.onrender.com/api/forgot';
  
  // Send OTP to phone number
  Future<Map<String, dynamic>> sendOtp(String phoneNumber) async {
    try {
      final response = await http.post(
        Uri.parse('$_baseUrl/send-otp'),
        headers: {
          'Content-Type': 'application/json',
        },
        body: json.encode({
          'phoneNumber': phoneNumber,
        }),
      );


           print('wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww${response.statusCode}');
       print('xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx${response.body}');
      
      if (response.statusCode == 200 || response.statusCode == 201) {
        return {
          'success': true,
          'data': json.decode(response.body),
          'message': 'OTP sent successfully'
        };
      } else {
        final errorData = json.decode(response.body);
        return {
          'success': false,
          'message': errorData['message'] ?? 'Failed to send OTP',
        };
      }
    } catch (e) {
      return {
        'success': false,
        'message': 'Network error: ${e.toString()}',
      };
    }
  }
  
  // Verify OTP - Updated to include token/phone number
  Future<Map<String, dynamic>> verifyOtp(String otp, {String? token, String? phoneNumber}) async {
    try {
      // Get token from SharedPreferences if not provided
      String? authToken = token;
      if (authToken == null) {
        authToken = await SharedPreferencesHelper.getUserToken();
      }
      
      // Get phone number if not provided
      String? userPhone = phoneNumber;
      if (userPhone == null && authToken == null) {
        // If no token and no phone number, we need some way to identify the user
        return {
          'success': false,
          'message': 'Unable to verify OTP: missing identification',
        };
      }

      Map<String, String> headers = {
        'Content-Type': 'application/json',
      };

      // Add authorization header if token is available
      if (authToken != null) {
        headers['Authorization'] = 'Bearer $authToken';
      }

      Map<String, dynamic> requestBody = {
        'otp': otp,
      };

      // Add phone number if available and no token
      if (userPhone != null && authToken == null) {
        requestBody['phoneNumber'] = userPhone;
      }
      
      final response = await http.post(
        Uri.parse('$_baseUrl/verify-otp'),
        headers: headers,
        body: json.encode(requestBody),
      );

       print('mmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmm${response.statusCode}');
       print('eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee${response.body}');
      
      if (response.statusCode == 200 || response.statusCode == 201) {
        return {
          'success': true,
          'data': json.decode(response.body),
          'message': 'OTP verified successfully'
        };
      } else {
        final errorData = json.decode(response.body);
        return {
          'success': false,
          'message': errorData['message'] ?? 'Invalid OTP',
        };
      }
    } catch (e) {
      return {
        'success': false,
        'message': 'Network error: ${e.toString()}',
      };
    }
  }
  
  // Reset password - Updated to include token
  Future<Map<String, dynamic>> resetPassword(String newPassword, String confirmPassword, {String? token}) async {
    try {
      // Get token from SharedPreferences if not provided
      String? authToken = token;
      if (authToken == null) {
        authToken = await SharedPreferencesHelper.getUserToken();
      }

      Map<String, String> headers = {
        'Content-Type': 'application/json',
      };

      // Add authorization header if token is available
      if (authToken != null) {
        headers['Authorization'] = 'Bearer $authToken';
      }

      final response = await http.post(
        Uri.parse('$_baseUrl/reset-password'),
        headers: headers,
        body: json.encode({
          'newPassword': newPassword,
          'confirmPassword': confirmPassword,
        }),
      );
      
      
      print('rrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrr${response.statusCode}');
       print('iiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiii${response.body}');

      if (response.statusCode == 200 || response.statusCode == 201) {
        return {
          'success': true,
          'data': json.decode(response.body),
          'message': 'Password reset successfully'
        };
      } else {
        final errorData = json.decode(response.body);
        return {
          'success': false,
          'message': errorData['message'] ?? 'Failed to reset password',
        };
      }
    } catch (e) {
      return {
        'success': false,
        'message': 'Network error: ${e.toString()}',
      };
    }
  }
}