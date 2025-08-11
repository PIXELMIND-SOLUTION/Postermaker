// // models/registration_model.dart
// class RegistrationModel {
//   final String fullName;
//   final String email;
//   final String phoneNumber;
//   final String password;
//   final String confirmPassword;

//   RegistrationModel({
//     required this.fullName,
//     required this.email,
//     required this.phoneNumber,
//     required this.password,
//     required this.confirmPassword,
//   });

//   // Convert model to JSON for API request
//   Map<String, dynamic> toJson() {
//     return {
//       'fullName': fullName,
//       'email': email,
//       'phoneNumber': phoneNumber,
//       'password': password,
//       'confirmPassword': confirmPassword,
//     };
//   }

//   // Create model from JSON response
//   factory RegistrationModel.fromJson(Map<String, dynamic> json) {
//     return RegistrationModel(
//       fullName: json['fullName'] ?? '',
//       email: json['email'] ?? '',
//       phoneNumber: json['phoneNumber'] ?? '',
//       password: json['password'] ?? '',
//       confirmPassword: json['confirmPassword'] ?? '',
//     );
//   }

//   // Copy with method for easy updates
//   RegistrationModel copyWith({
//     String? fullName,
//     String? email,
//     String? phoneNumber,
//     String? password,
//     String? confirmPassword,
//   }) {
//     return RegistrationModel(
//       fullName: fullName ?? this.fullName,
//       email: email ?? this.email,
//       phoneNumber: phoneNumber ?? this.phoneNumber,
//       password: password ?? this.password,
//       confirmPassword: confirmPassword ?? this.confirmPassword,
//     );
//   }
// }

// // Response model for registration API
// class RegistrationResponse {
//   final bool success;
//   final String message;
//   final String? token;
//   final Map<String, dynamic>? userData;

//   RegistrationResponse({
//     required this.success,
//     required this.message,
//     this.token,
//     this.userData,
//   });

//   factory RegistrationResponse.fromJson(Map<String, dynamic> json) {
//     return RegistrationResponse(
//       success: json['success'] ?? false,
//       message: json['message'] ?? 'Unknown error occurred',
//       token: json['token'],
//       userData: json['data'],
//     );
//   }
// }



















// model/registration_model.dart
class RegistrationModel {
  final String fullName;
  final String email;
  final String phoneNumber;
  final String password;
  final String confirmPassword;

  RegistrationModel({
    required this.fullName,
    required this.email,
    required this.phoneNumber,
    required this.password,
    required this.confirmPassword,
  });

  Map<String, dynamic> toJson() {
    return {
      'fullName': fullName,
      'email': email,
      'phoneNumber': phoneNumber,
      'password': password,
      'confirmPassword': confirmPassword,
    };
  }
}

class RegistrationResponse {
  final bool success;
  final String message;
  final String? token;
  final Map<String, dynamic>? userData;

  RegistrationResponse({
    required this.success,
    required this.message,
    this.token,
    this.userData,
  });

  factory RegistrationResponse.fromJson(Map<String, dynamic> json) {
    // Debug print to see the actual structure
    print('Parsing JSON: $json');
    
    return RegistrationResponse(
      success: json['success'] ?? json['status'] ?? false,
      message: json['message'] ?? json['msg'] ?? json['error'] ?? '',
      // Check multiple possible locations for the token
      token: json['token'] ?? 
             json['access_token'] ?? 
             json['authToken'] ?? 
             json['data']?['token'] ?? 
             json['user']?['token'] ??
             json['otp_token'] ??
             json['verification_token'],
      // Check multiple possible locations for user data
      userData: json['data'] ?? 
                json['user'] ?? 
                json['userData'] ?? 
                (json['success'] == false ? null : json),
    );
  }
}