// import 'package:flutter/material.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';
// import 'package:poster_maker/views/auth/login_screen.dart';
// import 'package:poster_maker/views/auth/sample_screen.dart';

// class SignupScreen extends StatefulWidget {
//   const SignupScreen({super.key});

//   @override
//   State<SignupScreen> createState() => _SignupScreenState();
// }

// class _SignupScreenState extends State<SignupScreen> {
//   bool _obscurePassword = true;
//   bool _obscureConfirmPassword = true;

//   final nameController = TextEditingController();
//   final emailController = TextEditingController();
//   final phoneController = TextEditingController();
//   final passwordController = TextEditingController();
//   final confirmPasswordController = TextEditingController();

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Stack(
//         children: [
//           // Background split colors
//           Column(
//             children: [
//               Expanded(
//                 flex: 2,
//                 child: Container(color: const Color(0xFF22577A)), // Top blue
//               ),
//               Expanded(
//                 flex: 3,
//                 child: Container(color: Colors.white), // Bottom white
//               ),
//             ],
//           ),

//           // Foreground scrollable content
//           SingleChildScrollView(
//             child: Padding(
//               padding: const EdgeInsets.only(top: 60.0),
//               child: Container(
//                 margin: const EdgeInsets.symmetric(horizontal: 24),
//                 padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
//                 decoration: BoxDecoration(
//                   color: Colors.white,
//                   borderRadius: BorderRadius.circular(16),
//                   boxShadow: [
//                     BoxShadow(
//                       color: Colors.black.withOpacity(0.1),
//                       blurRadius: 10,
//                       offset: const Offset(0, 4),
//                     ),
//                   ],
//                 ),
//                 child: Column(
//                   children: [
//                     Image.asset(
//                       'lib/assets/loginimages.png',
//                       height: 160,
//                     ),
//                     const SizedBox(height: 30),

//                     // Full Name
//                     TextField(
//                       controller: nameController,
//                       decoration: InputDecoration(
//                         labelText: 'Full Name',
//                         hintText: 'Tommy',
//                         border: OutlineInputBorder(
//                           borderRadius: BorderRadius.circular(8),
//                         ),
//                         contentPadding:
//                             const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
//                       ),
//                     ),

//                     const SizedBox(height: 16),

//                     // Email
//                     TextField(
//                       controller: emailController,
//                       keyboardType: TextInputType.emailAddress,
//                       decoration: InputDecoration(
//                         labelText: 'E-Mail',
//                         hintText: 'Tommy@gmail.com',
//                         border: OutlineInputBorder(
//                           borderRadius: BorderRadius.circular(8),
//                         ),
//                         contentPadding:
//                             const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
//                       ),
//                     ),

//                     const SizedBox(height: 16),

//                     // Phone Number
//                     TextField(
//                       controller: phoneController,
//                       keyboardType: TextInputType.phone,
//                       decoration: InputDecoration(
//                         labelText: 'Phone Number',
//                         hintText: '1234567890',
//                         border: OutlineInputBorder(
//                           borderRadius: BorderRadius.circular(8),
//                         ),
//                         contentPadding:
//                             const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
//                       ),
//                     ),

//                     const SizedBox(height: 16),

//                     // Password
//                     TextField(
//                       controller: passwordController,
//                       obscureText: _obscurePassword,
//                       decoration: InputDecoration(
//                         labelText: 'Password',
//                         hintText: 'Password',
//                         suffixIcon: IconButton(
//                           icon: Icon(_obscurePassword
//                               ? Icons.visibility_off
//                               : Icons.visibility),
//                           onPressed: () {
//                             setState(() {
//                               _obscurePassword = !_obscurePassword;
//                             });
//                           },
//                         ),
//                         border: OutlineInputBorder(
//                           borderRadius: BorderRadius.circular(8),
//                         ),
//                         contentPadding:
//                             const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
//                       ),
//                     ),

//                     const SizedBox(height: 16),

//                     // Confirm Password
//                     TextField(
//                       controller: confirmPasswordController,
//                       obscureText: _obscureConfirmPassword,
//                       decoration: InputDecoration(
//                         labelText: 'Confirm Password',
//                         hintText: 'Confirm password',
//                         suffixIcon: IconButton(
//                           icon: Icon(_obscureConfirmPassword
//                               ? Icons.visibility_off
//                               : Icons.visibility),
//                           onPressed: () {
//                             setState(() {
//                               _obscureConfirmPassword = !_obscureConfirmPassword;
//                             });
//                           },
//                         ),
//                         border: OutlineInputBorder(
//                           borderRadius: BorderRadius.circular(8),
//                         ),
//                         contentPadding:
//                             const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
//                       ),
//                     ),

//                     const SizedBox(height: 20),

//                     // Continue Button
//                     SizedBox(
//                       width: double.infinity,
//                       child: ElevatedButton(
//                         onPressed: () {
//                           Navigator.push(
//                               context,
//                               MaterialPageRoute(
//                                   builder: (_) => const LoginScreen()));
//                         },
//                         style: ElevatedButton.styleFrom(
//                           backgroundColor: const Color(0xFF22577A),
//                           padding: const EdgeInsets.symmetric(vertical: 14),
//                           shape: RoundedRectangleBorder(
//                             borderRadius: BorderRadius.circular(8),
//                           ),
//                         ),
//                         child: const Text(
//                           "Continue",
//                           style: TextStyle(
//                             fontSize: 16,
//                             fontWeight: FontWeight.w600,
//                             letterSpacing: 0.5,
//                             color: Colors.white,
//                           ),
//                         ),
//                       ),
//                     ),

//                     const SizedBox(height: 20),

//                     // OR Divider
//                     const Row(
//                       children: [
//                         Expanded(child: Divider()),
//                         Padding(
//                           padding: EdgeInsets.symmetric(horizontal: 10),
//                           child: Text("Or"),
//                         ),
//                         Expanded(child: Divider()),
//                       ],
//                     ),

//                     const SizedBox(height: 20),

//                     // Social Login Buttons
//                     const Row(
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       children: [
//                         CircleAvatar(
//                           radius: 13,
//                           backgroundColor: Color.fromARGB(255, 227, 226, 226),
//                           backgroundImage: NetworkImage(
//                               'https://upload.wikimedia.org/wikipedia/commons/thumb/c/c1/Google_%22G%22_logo.svg/768px-Google_%22G%22_logo.svg.png'),
//                         ),
//                         SizedBox(width: 16),
//                         CircleAvatar(
//                           radius: 13,
//                           backgroundColor: Color.fromARGB(255, 255, 255, 255),
//                           child: FaIcon(FontAwesomeIcons.xTwitter,
//                               color: Colors.black),
//                         ),
//                         SizedBox(width: 16),
//                         CircleAvatar(
//                           radius: 13,
//                           backgroundColor: Color.fromARGB(255, 255, 255, 255),
//                           child: FaIcon(FontAwesomeIcons.facebookF,
//                               color: Colors.blue),
//                         ),
//                       ],
//                     ),

//                     const SizedBox(height: 20),

//                     // Already have an account? Login
//                     Row(
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       children: [
//                         const Text("Already have account ? "),
//                         GestureDetector(
//                           onTap: () {
//                             Navigator.push(
//                                 context,
//                                 MaterialPageRoute(
//                                     builder: (_) => const SampleScreen()));
//                           },
//                           child: const Text(
//                             "Login",
//                             style: TextStyle(
//                               color: Color(0xFF22577A),
//                               fontWeight: FontWeight.bold,
//                             ),
//                           ),
//                         ),
//                       ],
//                     ),

//                     const SizedBox(height: 10),
//                   ],
//                 ),
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:poster_maker/views/auth/otp_screen.dart';
import 'package:poster_maker/views/provider/registration_provider.dart';
import 'package:provider/provider.dart';
import 'package:poster_maker/views/auth/login_screen.dart';
import 'package:poster_maker/views/auth/sample_screen.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  bool _obscurePassword = true;
  bool _obscureConfirmPassword = true;

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => RegistrationProvider(),
      child: Consumer<RegistrationProvider>(
        builder: (context, registrationProvider, child) {
          // Listen for registration success
          if (registrationProvider.isRegistrationSuccessful) {
            // Use Future.microtask to ensure navigation happens after build completes
            Future.microtask(() {
              final token = registrationProvider.token;
              registrationProvider.clearSuccess();
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text('Registration successful!'),
                  backgroundColor: Colors.green,
                ),
              );

              if (token != null) {
                print('tokennnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnn$token');
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (_) => OtpScreen(token: token),
                  ),
                );
              } else {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content:
                        Text('Token is missing. Cannot proceed to OTP screen.'),
                    backgroundColor: Colors.red,
                  ),
                );
              }
            });
          }

          if (registrationProvider.errorMessage != null) {
            Future.microtask(() {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text(registrationProvider.errorMessage!),
                  backgroundColor: Colors.red,
                ),
              );
              registrationProvider.clearError();
            });
          }

          return Scaffold(
            body: Stack(
              children: [
                // Background split colors
                Column(
                  children: [
                    Expanded(
                      flex: 2,
                      child:
                          Container(color: const Color(0xFF22577A)), // Top blue
                    ),
                    Expanded(
                      flex: 3,
                      child: Container(color: Colors.white), // Bottom white
                    ),
                  ],
                ),

                // Foreground scrollable content
                SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 60.0),
                    child: Container(
                      margin: const EdgeInsets.symmetric(horizontal: 24),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 30),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(16),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.1),
                            blurRadius: 10,
                            offset: const Offset(0, 4),
                          ),
                        ],
                      ),
                      child: Column(
                        children: [
                          Image.asset(
                            'lib/assets/loginimages.png',
                            height: 160,
                          ),
                          const SizedBox(height: 30),

                          // Error message display
                          // if (registrationProvider.errorMessage != null)
                          //   Container(
                          //     margin: const EdgeInsets.only(bottom: 16),
                          //     padding: const EdgeInsets.all(12),
                          //     decoration: BoxDecoration(
                          //       color: Colors.red.shade50,
                          //       borderRadius: BorderRadius.circular(8),
                          //       border: Border.all(color: Colors.red.shade200),
                          //     ),
                          //     child: Row(
                          //       children: [
                          //         Icon(Icons.error_outline, color: Colors.red.shade600),
                          //         const SizedBox(width: 8),
                          //         Expanded(
                          //           child: Text(
                          //             registrationProvider.errorMessage!,
                          //             style: TextStyle(
                          //               color: Colors.red.shade700,
                          //               fontSize: 14,
                          //             ),
                          //           ),
                          //         ),
                          //       ],
                          //     ),
                          //   ),

                          // Full Name
                          TextField(
                            controller: registrationProvider.fullNameController,
                            onChanged: registrationProvider.validateFullName,
                            decoration: InputDecoration(
                              labelText: 'Full Name',
                              hintText: 'Tommy',
                              errorText: registrationProvider.isFullNameValid
                                  ? null
                                  : registrationProvider.fullNameError,
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8),
                                borderSide: BorderSide(
                                  color: registrationProvider.isFullNameValid
                                      ? Colors.grey
                                      : Colors.red,
                                ),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8),
                                borderSide: BorderSide(
                                  color: registrationProvider.isFullNameValid
                                      ? Colors.grey
                                      : Colors.red,
                                ),
                              ),
                              contentPadding: const EdgeInsets.symmetric(
                                horizontal: 16,
                                vertical: 14,
                              ),
                            ),
                          ),

                          const SizedBox(height: 16),

                          // Email
                          TextField(
                            controller: registrationProvider.emailController,
                            onChanged: registrationProvider.validateEmail,
                            keyboardType: TextInputType.emailAddress,
                            decoration: InputDecoration(
                              labelText: 'E-Mail',
                              hintText: 'Tommy@gmail.com',
                              errorText: registrationProvider.isEmailValid
                                  ? null
                                  : registrationProvider.emailError,
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8),
                                borderSide: BorderSide(
                                  color: registrationProvider.isEmailValid
                                      ? Colors.grey
                                      : Colors.red,
                                ),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8),
                                borderSide: BorderSide(
                                  color: registrationProvider.isEmailValid
                                      ? Colors.grey
                                      : Colors.red,
                                ),
                              ),
                              contentPadding: const EdgeInsets.symmetric(
                                horizontal: 16,
                                vertical: 14,
                              ),
                            ),
                          ),

                          const SizedBox(height: 16),

                          // Phone Number
                          TextField(
                            controller: registrationProvider.phoneController,
                            onChanged: registrationProvider.validatePhone,
                            keyboardType: TextInputType.phone,
                            decoration: InputDecoration(
                              labelText: 'Phone Number',
                              hintText: '1234567890',
                              errorText: registrationProvider.isPhoneValid
                                  ? null
                                  : registrationProvider.phoneError,
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8),
                                borderSide: BorderSide(
                                  color: registrationProvider.isPhoneValid
                                      ? Colors.grey
                                      : Colors.red,
                                ),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8),
                                borderSide: BorderSide(
                                  color: registrationProvider.isPhoneValid
                                      ? Colors.grey
                                      : Colors.red,
                                ),
                              ),
                              contentPadding: const EdgeInsets.symmetric(
                                horizontal: 16,
                                vertical: 14,
                              ),
                            ),
                          ),

                          const SizedBox(height: 16),

                          // Password
                          TextField(
                            controller: registrationProvider.passwordController,
                            onChanged: registrationProvider.validatePassword,
                            obscureText: _obscurePassword,
                            decoration: InputDecoration(
                              labelText: 'Password',
                              hintText: 'Password',
                              errorText: registrationProvider.isPasswordValid
                                  ? null
                                  : registrationProvider.passwordError,
                              suffixIcon: IconButton(
                                icon: Icon(_obscurePassword
                                    ? Icons.visibility_off
                                    : Icons.visibility),
                                onPressed: () {
                                  setState(() {
                                    _obscurePassword = !_obscurePassword;
                                  });
                                },
                              ),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8),
                                borderSide: BorderSide(
                                  color: registrationProvider.isPasswordValid
                                      ? Colors.grey
                                      : Colors.red,
                                ),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8),
                                borderSide: BorderSide(
                                  color: registrationProvider.isPasswordValid
                                      ? Colors.grey
                                      : Colors.red,
                                ),
                              ),
                              contentPadding: const EdgeInsets.symmetric(
                                horizontal: 16,
                                vertical: 14,
                              ),
                            ),
                          ),

                          const SizedBox(height: 16),

                          // Confirm Password
                          TextField(
                            controller:
                                registrationProvider.confirmPasswordController,
                            onChanged:
                                registrationProvider.validateConfirmPassword,
                            obscureText: _obscureConfirmPassword,
                            decoration: InputDecoration(
                              labelText: 'Confirm Password',
                              hintText: 'Confirm password',
                              errorText: registrationProvider
                                      .isConfirmPasswordValid
                                  ? null
                                  : registrationProvider.confirmPasswordError,
                              suffixIcon: IconButton(
                                icon: Icon(_obscureConfirmPassword
                                    ? Icons.visibility_off
                                    : Icons.visibility),
                                onPressed: () {
                                  setState(() {
                                    _obscureConfirmPassword =
                                        !_obscureConfirmPassword;
                                  });
                                },
                              ),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8),
                                borderSide: BorderSide(
                                  color: registrationProvider
                                          .isConfirmPasswordValid
                                      ? Colors.grey
                                      : Colors.red,
                                ),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8),
                                borderSide: BorderSide(
                                  color: registrationProvider
                                          .isConfirmPasswordValid
                                      ? Colors.grey
                                      : Colors.red,
                                ),
                              ),
                              contentPadding: const EdgeInsets.symmetric(
                                horizontal: 16,
                                vertical: 14,
                              ),
                            ),
                          ),

                          const SizedBox(height: 20),

                          // Continue Button
                          SizedBox(
                            width: double.infinity,
                            child: ElevatedButton(
                              onPressed: registrationProvider.isLoading
                                  ? null
                                  : () async {
                                      // Clear any previous error
                                      registrationProvider.clearError();

                                      // Trigger registration
                                      await registrationProvider.registerUser();
                                    },
                              style: ElevatedButton.styleFrom(
                                backgroundColor:
                                    registrationProvider.isFormValid
                                        ? const Color(0xFF22577A)
                                        : Colors.grey,
                                padding:
                                    const EdgeInsets.symmetric(vertical: 14),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8),
                                ),
                              ),
                              child: registrationProvider.isLoading
                                  ? const SizedBox(
                                      height: 20,
                                      width: 20,
                                      child: CircularProgressIndicator(
                                        color: Colors.white,
                                        strokeWidth: 2,
                                      ),
                                    )
                                  : const Text(
                                      "Continue",
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600,
                                        letterSpacing: 0.5,
                                        color: Colors.white,
                                      ),
                                    ),
                            ),
                          ),

                          const SizedBox(height: 20),

                          // OR Divider
                          const Row(
                            children: [
                              Expanded(child: Divider()),
                              Padding(
                                padding: EdgeInsets.symmetric(horizontal: 10),
                                child: Text("Or"),
                              ),
                              Expanded(child: Divider()),
                            ],
                          ),

                          const SizedBox(height: 20),

                          // Social Login Buttons
                          const Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              CircleAvatar(
                                radius: 13,
                                backgroundColor:
                                    Color.fromARGB(255, 227, 226, 226),
                                backgroundImage: NetworkImage(
                                    'https://upload.wikimedia.org/wikipedia/commons/thumb/c/c1/Google_%22G%22_logo.svg/768px-Google_%22G%22_logo.svg.png'),
                              ),
                              SizedBox(width: 16),
                              CircleAvatar(
                                radius: 13,
                                backgroundColor:
                                    Color.fromARGB(255, 255, 255, 255),
                                child: FaIcon(FontAwesomeIcons.xTwitter,
                                    color: Colors.black),
                              ),
                              SizedBox(width: 16),
                              CircleAvatar(
                                radius: 13,
                                backgroundColor:
                                    Color.fromARGB(255, 255, 255, 255),
                                child: FaIcon(FontAwesomeIcons.facebookF,
                                    color: Colors.blue),
                              ),
                            ],
                          ),

                          const SizedBox(height: 20),

                          // Already have an account? Login
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Text("Already have account ? "),
                              GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (_) =>
                                              const SampleScreen()));
                                },
                                child: const Text(
                                  "Login",
                                  style: TextStyle(
                                    color: Color(0xFF22577A),
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ],
                          ),

                          const SizedBox(height: 10),
                        ],
                      ),
                    ),
                  ),
                ),

                // Loading overlay
                if (registrationProvider.isLoading)
                  Container(
                    color: Colors.black.withOpacity(0.3),
                    child: const Center(
                      child: CircularProgressIndicator(
                        color: Color(0xFF22577A),
                      ),
                    ),
                  ),
              ],
            ),
          );
        },
      ),
    );
  }
}
