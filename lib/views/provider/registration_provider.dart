// // providers/registration_provider.dart
// import 'package:flutter/material.dart';
// import 'package:poster_maker/helper/helper_function.dart';
// import 'package:poster_maker/model/registration_model.dart';
// import 'package:poster_maker/services/registration_services.dart';

// class RegistrationProvider extends ChangeNotifier {
//   final RegistrationService _registrationService = RegistrationService();

//   // Loading state
//   bool _isLoading = false;
//   bool get isLoading => _isLoading;

//   // Error state
//   String? _errorMessage;
//   String? get errorMessage => _errorMessage;

//   String? _token;
// String? get token => _token;

//   // Success state
//   bool _isRegistrationSuccessful = false;
//   bool get isRegistrationSuccessful => _isRegistrationSuccessful;

//   // Form controllers
//   final TextEditingController fullNameController = TextEditingController();
//   final TextEditingController emailController = TextEditingController();
//   final TextEditingController phoneController = TextEditingController();
//   final TextEditingController passwordController = TextEditingController();
//   final TextEditingController confirmPasswordController =
//       TextEditingController();

//   bool _isFullNameValid = true;
//   bool _isEmailValid = true;
//   bool _isPhoneValid = true;
//   bool _isPasswordValid = true;
//   bool _isConfirmPasswordValid = true;

//   bool get isFullNameValid => _isFullNameValid;
//   bool get isEmailValid => _isEmailValid;
//   bool get isPhoneValid => _isPhoneValid;
//   bool get isPasswordValid => _isPasswordValid;
//   bool get isConfirmPasswordValid => _isConfirmPasswordValid;

//   // Validation error messages
//   String _fullNameError = '';
//   String _emailError = '';
//   String _phoneError = '';
//   String _passwordError = '';
//   String _confirmPasswordError = '';

//   String get fullNameError => _fullNameError;
//   String get emailError => _emailError;
//   String get phoneError => _phoneError;
//   String get passwordError => _passwordError;
//   String get confirmPasswordError => _confirmPasswordError;

//   // Clear error message
//   void clearError() {
//     _errorMessage = null;
//     notifyListeners();
//   }

//   // Clear success state
//   void clearSuccess() {
//     _isRegistrationSuccessful = false;
//     notifyListeners();
//   }

//   // Validate full name
//   void validateFullName(String value) {
//     if (value.trim().isEmpty) {
//       _isFullNameValid = false;
//       _fullNameError = 'Full name is required';
//     } else if (value.trim().length < 2) {
//       _isFullNameValid = false;
//       _fullNameError = 'Full name must be at least 2 characters';
//     } else {
//       _isFullNameValid = true;
//       _fullNameError = '';
//     }
//     notifyListeners();
//   }

//   // Validate email
//   void validateEmail(String value) {
//     if (value.trim().isEmpty) {
//       _isEmailValid = false;
//       _emailError = 'Email is required';
//     } else if (!_registrationService.isValidEmail(value.trim())) {
//       _isEmailValid = false;
//       _emailError = 'Please enter a valid email address';
//     } else {
//       _isEmailValid = true;
//       _emailError = '';
//     }
//     notifyListeners();
//   }

//   // Validate phone number
//   void validatePhone(String value) {
//     if (value.trim().isEmpty) {
//       _isPhoneValid = false;
//       _phoneError = 'Phone number is required';
//     } else if (!_registrationService.isValidPhoneNumber(value.trim())) {
//       _isPhoneValid = false;
//       _phoneError = 'Please enter a valid 10-digit phone number';
//     } else {
//       _isPhoneValid = true;
//       _phoneError = '';
//     }
//     notifyListeners();
//   }

//   // Validate password
//   void validatePassword(String value) {
//     if (value.isEmpty) {
//       _isPasswordValid = false;
//       _passwordError = 'Password is required';
//     } else if (!_registrationService.isStrongPassword(value)) {
//       _isPasswordValid = false;
//       _passwordError =
//           'Password must be at least 8 characters with uppercase, lowercase, number and special character';
//     } else {
//       _isPasswordValid = true;
//       _passwordError = '';
//     }
//     notifyListeners();
//   }

//   // Validate confirm password
//   void validateConfirmPassword(String value) {
//     if (value.isEmpty) {
//       _isConfirmPasswordValid = false;
//       _confirmPasswordError = 'Confirm password is required';
//     } else if (value != passwordController.text) {
//       _isConfirmPasswordValid = false;
//       _confirmPasswordError = 'Passwords do not match';
//     } else {
//       _isConfirmPasswordValid = true;
//       _confirmPasswordError = '';
//     }
//     notifyListeners();
//   }

//   // Check if form is valid
//   bool get isFormValid {
//     return _isFullNameValid &&
//         _isEmailValid &&
//         _isPhoneValid &&
//         _isPasswordValid &&
//         _isConfirmPasswordValid &&
//         fullNameController.text.trim().isNotEmpty &&
//         emailController.text.trim().isNotEmpty &&
//         phoneController.text.trim().isNotEmpty &&
//         passwordController.text.isNotEmpty &&
//         confirmPasswordController.text.isNotEmpty;
//   }

//   // Register user
//   Future<void> registerUser() async {
//     if (!isFormValid) {
//       _errorMessage = 'Please fill all fields correctly';
//       notifyListeners();
//       return;
//     }

//     _setLoading(true);
//     _clearError();

//     try {
//       final registrationData = RegistrationModel(
//         fullName: fullNameController.text.trim(),
//         email: emailController.text.trim(),
//         phoneNumber: phoneController.text.trim(),
//         password: passwordController.text,
//         confirmPassword: confirmPasswordController.text,
//       );

//       final response =
//           await _registrationService.registerUser(registrationData);

//       if (response.success) {
//         _isRegistrationSuccessful = true;
        

//         // Save user data to SharedPreferences if token is provided
//         if (response.token != null) {
//           _token = response.token!;
//           await SharedPreferencesHelper.saveRegistrationData(
//             token: response.token!,
//             userData: response.userData ?? {},
//             email: registrationData.email,
//             fullName: registrationData.fullName,
//             phoneNumber: registrationData.phoneNumber,
//           );
//         }

//         // Clear form
//         clearForm();
//       } else {
//         _errorMessage = response.message;
//       }
//     } catch (e) {
//       _errorMessage = 'An unexpected error occurred. Please try again.';
//     } finally {
//       _setLoading(false);
//     }
//   }

//   // Clear form
//   void clearForm() {
//     fullNameController.clear();
//     emailController.clear();
//     phoneController.clear();
//     passwordController.clear();
//     confirmPasswordController.clear();

//     _isFullNameValid = true;
//     _isEmailValid = true;
//     _isPhoneValid = true;
//     _isPasswordValid = true;
//     _isConfirmPasswordValid = true;

//     _fullNameError = '';
//     _emailError = '';
//     _phoneError = '';
//     _passwordError = '';
//     _confirmPasswordError = '';

//     notifyListeners();
//   }

//   // Private helper methods
//   void _setLoading(bool loading) {
//     _isLoading = loading;
//     notifyListeners();
//   }

//   void _clearError() {
//     _errorMessage = null;
//   }

//   @override
//   void dispose() {
//     fullNameController.dispose();
//     emailController.dispose();
//     phoneController.dispose();
//     passwordController.dispose();
//     confirmPasswordController.dispose();
//     super.dispose();
//   }
// }




















// providers/registration_provider.dart
import 'package:flutter/material.dart';
import 'package:poster_maker/helper/helper_function.dart';
import 'package:poster_maker/model/registration_model.dart';
import 'package:poster_maker/services/registration_services.dart';

class RegistrationProvider extends ChangeNotifier {
  final RegistrationService _registrationService = RegistrationService();

  // Loading state
  bool _isLoading = false;
  bool get isLoading => _isLoading;

  // Error state
  String? _errorMessage;
  String? get errorMessage => _errorMessage;

  String? _token;
  String? get token => _token;

  // Success state
  bool _isRegistrationSuccessful = false;
  bool get isRegistrationSuccessful => _isRegistrationSuccessful;

  // Form controllers
  final TextEditingController fullNameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController =
      TextEditingController();

  bool _isFullNameValid = true;
  bool _isEmailValid = true;
  bool _isPhoneValid = true;
  bool _isPasswordValid = true;
  bool _isConfirmPasswordValid = true;

  bool get isFullNameValid => _isFullNameValid;
  bool get isEmailValid => _isEmailValid;
  bool get isPhoneValid => _isPhoneValid;
  bool get isPasswordValid => _isPasswordValid;
  bool get isConfirmPasswordValid => _isConfirmPasswordValid;

  // Validation error messages
  String _fullNameError = '';
  String _emailError = '';
  String _phoneError = '';
  String _passwordError = '';
  String _confirmPasswordError = '';

  String get fullNameError => _fullNameError;
  String get emailError => _emailError;
  String get phoneError => _phoneError;
  String get passwordError => _passwordError;
  String get confirmPasswordError => _confirmPasswordError;

  // Clear error message
  void clearError() {
    _errorMessage = null;
    notifyListeners();
  }

  // Clear success state
  void clearSuccess() {
    _isRegistrationSuccessful = false;
    _token = null; // Also clear the token
    notifyListeners();
  }

  // Validate full name
  void validateFullName(String value) {
    if (value.trim().isEmpty) {
      _isFullNameValid = false;
      _fullNameError = 'Full name is required';
    } else if (value.trim().length < 2) {
      _isFullNameValid = false;
      _fullNameError = 'Full name must be at least 2 characters';
    } else {
      _isFullNameValid = true;
      _fullNameError = '';
    }
    notifyListeners();
  }

  // Validate email
  void validateEmail(String value) {
    if (value.trim().isEmpty) {
      _isEmailValid = false;
      _emailError = 'Email is required';
    } else if (!_registrationService.isValidEmail(value.trim())) {
      _isEmailValid = false;
      _emailError = 'Please enter a valid email address';
    } else {
      _isEmailValid = true;
      _emailError = '';
    }
    notifyListeners();
  }

  // Validate phone number
  void validatePhone(String value) {
    if (value.trim().isEmpty) {
      _isPhoneValid = false;
      _phoneError = 'Phone number is required';
    } else if (!_registrationService.isValidPhoneNumber(value.trim())) {
      _isPhoneValid = false;
      _phoneError = 'Please enter a valid 10-digit phone number';
    } else {
      _isPhoneValid = true;
      _phoneError = '';
    }
    notifyListeners();
  }

  // Validate password
  void validatePassword(String value) {
    if (value.isEmpty) {
      _isPasswordValid = false;
      _passwordError = 'Password is required';
    } else if (!_registrationService.isStrongPassword(value)) {
      _isPasswordValid = false;
      _passwordError =
          'Password must be at least 8 characters with uppercase, lowercase, number and special character';
    } else {
      _isPasswordValid = true;
      _passwordError = '';
    }
    notifyListeners();
  }

  // Validate confirm password
  void validateConfirmPassword(String value) {
    if (value.isEmpty) {
      _isConfirmPasswordValid = false;
      _confirmPasswordError = 'Confirm password is required';
    } else if (value != passwordController.text) {
      _isConfirmPasswordValid = false;
      _confirmPasswordError = 'Passwords do not match';
    } else {
      _isConfirmPasswordValid = true;
      _confirmPasswordError = '';
    }
    notifyListeners();
  }

  // Check if form is valid
  bool get isFormValid {
    return _isFullNameValid &&
        _isEmailValid &&
        _isPhoneValid &&
        _isPasswordValid &&
        _isConfirmPasswordValid &&
        fullNameController.text.trim().isNotEmpty &&
        emailController.text.trim().isNotEmpty &&
        phoneController.text.trim().isNotEmpty &&
        passwordController.text.isNotEmpty &&
        confirmPasswordController.text.isNotEmpty;
  }

  // Register user
  Future<void> registerUser() async {
    if (!isFormValid) {
      _errorMessage = 'Please fill all fields correctly';
      notifyListeners();
      return;
    }

    _setLoading(true);
    _clearError();

    try {
      final registrationData = RegistrationModel(
        fullName: fullNameController.text.trim(),
        email: emailController.text.trim(),
        phoneNumber: phoneController.text.trim(),
        password: passwordController.text,
        confirmPassword: confirmPasswordController.text,
      );

      final response =
          await _registrationService.registerUser(registrationData);

      print('Registration response success: ${response.success}');
      print('Registration response message: ${response.message}');
      print('Registration token: ${response.token}');

      // Check if registration was successful OR if we have a token (some APIs send token even with success=false)
      if (response.success || (response.token != null && response.token!.isNotEmpty)) {
        // Store the token BEFORE setting success state
        _token = response.token;
        print('Token stored in provider: $_token');
        
        _isRegistrationSuccessful = true;

        // Save user data to SharedPreferences if token is provided
        if (response.token != null && response.token!.isNotEmpty) {
          await SharedPreferencesHelper.saveRegistrationData(
            token: response.token!,
            userData: response.userData ?? {},
            email: registrationData.email,
            fullName: registrationData.fullName,
            phoneNumber: registrationData.phoneNumber,
          );
        }

        // Don't clear form here - let the UI handle navigation first
        // clearForm();
      } else {
        _errorMessage = response.message.isNotEmpty 
            ? response.message 
            : 'Registration failed. Please try again.';
      }
    } catch (e) {
      print('Registration error: $e');
      _errorMessage = 'An unexpected error occurred. Please try again.';
    } finally {
      _setLoading(false);
    }
  }

  // Clear form - call this after successful navigation
  void clearForm() {
    fullNameController.clear();
    emailController.clear();
    phoneController.clear();
    passwordController.clear();
    confirmPasswordController.clear();

    _isFullNameValid = true;
    _isEmailValid = true;
    _isPhoneValid = true;
    _isPasswordValid = true;
    _isConfirmPasswordValid = true;

    _fullNameError = '';
    _emailError = '';
    _phoneError = '';
    _passwordError = '';
    _confirmPasswordError = '';

    notifyListeners();
  }

  // Private helper methods
  void _setLoading(bool loading) {
    _isLoading = loading;
    notifyListeners();
  }

  void _clearError() {
    _errorMessage = null;
  }

  @override
  void dispose() {
    fullNameController.dispose();
    emailController.dispose();
    phoneController.dispose();
    passwordController.dispose();
    confirmPasswordController.dispose();
    super.dispose();
  }
}