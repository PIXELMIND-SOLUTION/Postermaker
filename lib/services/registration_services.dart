// // services/registration_service.dart
// import 'dart:convert';
// import 'dart:io';
// import 'package:http/http.dart' as http;
// import 'package:poster_maker/model/registration_model.dart';


// class RegistrationService {
//   final String baseUrl = 'https://postmaker-backend-1.onrender.com/api/register';

//   // Register user
//   Future<RegistrationResponse> registerUser(RegistrationModel registrationData) async {
//     try {
//       final uri = Uri.parse(baseUrl);
      
//       final response = await http.post(
//         uri,
//         headers: {
//           'Content-Type': 'application/json',
//           'Accept': 'application/json',
//         },
//         body: jsonEncode(registrationData.toJson()),
//       );

//       final responseBody = jsonDecode(response.body);


//       print('rrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrr${response.statusCode}');
//        print('kkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkk${response.body}');

//       if (response.statusCode == 200 || response.statusCode == 201) {
//         return RegistrationResponse.fromJson(responseBody);
//       } else {
//         return RegistrationResponse(
//           success: false,
//           message: responseBody['message'] ?? 'Registration failed',
//         );
//       }
//     } on SocketException {
//       return RegistrationResponse(
//         success: false,
//         message: 'No internet connection. Please check your network.',
//       );
//     } on http.ClientException {
//       return RegistrationResponse(
//         success: false,
//         message: 'Network error. Please try again.',
//       );
//     } on FormatException {
//       return RegistrationResponse(
//         success: false,
//         message: 'Invalid response format from server.',
//       );
//     } catch (e) {
//       return RegistrationResponse(
//         success: false,
//         message: 'An unexpected error occurred: ${e.toString()}',
//       );
//     }
//   }

//   // Validate email format
//   bool isValidEmail(String email) {
//     return RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$').hasMatch(email);
//   }

//   // Validate phone number
//   bool isValidPhoneNumber(String phoneNumber) {
//     return RegExp(r'^\d{10}$').hasMatch(phoneNumber);
//   }

//   // Validate password strength
//   bool isStrongPassword(String password) {
//     // At least 8 characters, 1 uppercase, 1 lowercase, 1 number, 1 special character
//     return RegExp(r'^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[@$!%*?&])[A-Za-z\d@$!%*?&]{8,}$')
//         .hasMatch(password);
//   }
// }














// services/registration_service.dart
import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;
import 'package:poster_maker/model/registration_model.dart';

class RegistrationService {
  final String baseUrl = 'https://postmaker-backend-1.onrender.com/api/register';

  // Register user
  Future<RegistrationResponse> registerUser(RegistrationModel registrationData) async {
    try {
      final uri = Uri.parse(baseUrl);
      
      final response = await http.post(
        uri,
        headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json',
        },
        body: jsonEncode(registrationData.toJson()),
      );

      print('Status Code: ${response.statusCode}');
      print('Response Body: ${response.body}');

      final responseBody = jsonDecode(response.body);
      print('Parsed Response Body: $responseBody');

      // Check for different success scenarios
      if (response.statusCode == 200 || response.statusCode == 201) {
        // Parse the response
        final registrationResponse = RegistrationResponse.fromJson(responseBody);
        
        // Some APIs might return success=false but still provide a token for OTP verification
        // Check if we have a token even if success is false
        if (registrationResponse.token != null && registrationResponse.token!.isNotEmpty) {
          print('Token found in response: ${registrationResponse.token}');
          return RegistrationResponse(
            success: true, // Override success to true if we have a token
            message: registrationResponse.message.isNotEmpty 
                ? registrationResponse.message 
                : 'OTP sent successfully. Please verify your account.',
            token: registrationResponse.token,
            userData: registrationResponse.userData,
          );
        }
        
        return registrationResponse;
      } else if (response.statusCode == 422 || response.statusCode == 400) {
        // Validation errors or bad request
        return RegistrationResponse(
          success: false,
          message: responseBody['message'] ?? 'Validation failed',
        );
      } else {
        return RegistrationResponse(
          success: false,
          message: responseBody['message'] ?? 'Registration failed',
        );
      }
    } on SocketException {
      return RegistrationResponse(
        success: false,
        message: 'No internet connection. Please check your network.',
      );
    } on http.ClientException {
      return RegistrationResponse(
        success: false,
        message: 'Network error. Please try again.',
      );
    } on FormatException catch (e) {
      print('JSON Format Error: $e');
      return RegistrationResponse(
        success: false,
        message: 'Invalid response format from server.',
      );
    } catch (e) {
      print('Unexpected Error: $e');
      return RegistrationResponse(
        success: false,
        message: 'An unexpected error occurred: ${e.toString()}',
      );
    }
  }

  // Validate email format
  bool isValidEmail(String email) {
    return RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$').hasMatch(email);
  }

  // Validate phone number
  bool isValidPhoneNumber(String phoneNumber) {
    return RegExp(r'^\d{10}$').hasMatch(phoneNumber);
  }

  // Validate password strength
  bool isStrongPassword(String password) {
    // At least 8 characters, 1 uppercase, 1 lowercase, 1 number, 1 special character
    return RegExp(r'^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[@$!%*?&])[A-Za-z\d@$!%*?&]{8,}$')
        .hasMatch(password);
  }
}