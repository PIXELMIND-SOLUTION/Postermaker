import 'dart:convert';
import 'package:http/http.dart' as http;

// class VerifyOtpService {
//   final String baseUrl = 'https://postmaker-backend-1.onrender.com/api/verify-otp';
  
//   Future<Map<String, dynamic>> verifyOtp(String otp) async {
//     try {
//       final response = await http.post(
//         Uri.parse(baseUrl),
//         headers: {
//           'Content-Type': 'application/json',
//         },
//         body: jsonEncode({
//           'otp': otp,
//         }),
//       );
        
//       print('meeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee${response.statusCode}');
//       print('hhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhh${response.body}');

//       if (response.statusCode == 200) {
//         return {
//           'success': true,
//           'data': jsonDecode(response.body),
//           'message': 'OTP verified successfully'
//         };
//       } else {
//         return {
//           'success': false,
//           'message': 'Invalid OTP or verification failed',
//           'error': response.body
//         };
//       }
//     } catch (e) {
//       return {
//         'success': false,
//         'message': 'Network error occurred',
//         'error': e.toString()
//       };
//     }
//   }
  
//   Future<Map<String, dynamic>> resendOtp() async {
//     try {
//       // Assuming there's a resend endpoint
//       final response = await http.post(
//         Uri.parse('https://postmaker-backend-1.onrender.com/api/resend-otp'),
//         headers: {
//           'Content-Type': 'application/json',
//         },
//       );
      
//       if (response.statusCode == 200) {
//         return {
//           'success': true,
//           'message': 'OTP resent successfully'
//         };
//       } else {
//         return {
//           'success': false,
//           'message': 'Failed to resend OTP'
//         };
//       }
//     } catch (e) {
//       return {
//         'success': false,
//         'message': 'Network error occurred',
//         'error': e.toString()
//       };
//     }
//   }
// }


















import 'dart:convert';
import 'package:http/http.dart' as http;

class VerifyOtpService {
  final String baseUrl = 'https://postmaker-backend-1.onrender.com/api/verify-otp';
  
  Future<Map<String, dynamic>> verifyOtp(String otp, {String? token}) async {
    try {
      // Prepare headers
      Map<String, String> headers = {
        'Content-Type': 'application/json',
      };
      
      // Add authorization header if token is provided
      if (token != null && token.isNotEmpty) {
        headers['Authorization'] = 'Bearer $token';
      }
      
      // Prepare request body
      Map<String, dynamic> requestBody = {
        'otp': otp,
      };
      
      print('=== OTP Verification Debug ===');
      print('URL: $baseUrl');
      print('Headers: $headers');
      print('Request Body: ${jsonEncode(requestBody)}');
      
      final response = await http.post(
        Uri.parse(baseUrl),
        headers: headers,
        body: jsonEncode(requestBody),
      );
      
      print('Response Status Code: ${response.statusCode}');
      print('Response Body: ${response.body}');
      print('Response Headers: ${response.headers}');
      
      // Parse response body
      Map<String, dynamic> responseData = {};
      try {
        responseData = jsonDecode(response.body);
      } catch (e) {
        print('Error parsing response body: $e');
        responseData = {'message': response.body};
      }
      
      // Check different success conditions
      if (response.statusCode == 200 || response.statusCode == 201) {
        // Check if response indicates success
        bool isSuccess = responseData['success'] == true || 
                        responseData['status'] == 'success' ||
                        responseData['message']?.toString().toLowerCase().contains('success') == true ||
                        responseData['verified'] == true;
        
        if (isSuccess) {
          return {
            'success': true,
            'data': responseData,
            'message': responseData['message'] ?? 'OTP verified successfully'
          };
        }
      }
      
      // Handle different error responses
      String errorMessage = 'Invalid OTP or verification failed';
      
      if (responseData['message'] != null) {
        errorMessage = responseData['message'].toString();
      } else if (responseData['error'] != null) {
        errorMessage = responseData['error'].toString();
      } else if (response.statusCode == 400) {
        errorMessage = 'Invalid OTP format';
      } else if (response.statusCode == 401) {
        errorMessage = 'Unauthorized - Invalid token';
      } else if (response.statusCode == 404) {
        errorMessage = 'OTP verification endpoint not found';
      } else if (response.statusCode >= 500) {
        errorMessage = 'Server error - Please try again later';
      }
      
      return {
        'success': false,
        'message': errorMessage,
        'error': response.body,
        'statusCode': response.statusCode
      };
      
    } catch (e) {
      print('Network error: $e');
      return {
        'success': false,
        'message': 'Network error occurred: ${e.toString()}',
        'error': e.toString()
      };
    }
  }
  
  Future<Map<String, dynamic>> resendOtp() async {
    try {
      // Assuming there's a resend endpoint
      final response = await http.post(
        Uri.parse('https://postmaker-backend-1.onrender.com/api/resend-otp'),
        headers: {
          'Content-Type': 'application/json',
        },
      );
      
      if (response.statusCode == 200) {
        return {
          'success': true,
          'message': 'OTP resent successfully'
        };
      } else {
        return {
          'success': false,
          'message': 'Failed to resend OTP'
        };
      }
    } catch (e) {
      return {
        'success': false,
        'message': 'Network error occurred',
        'error': e.toString()
      };
    }
  }
}