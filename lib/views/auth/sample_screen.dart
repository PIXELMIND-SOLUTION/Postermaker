// import 'package:flutter/material.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';

// class SampleScreen extends StatefulWidget {
//   const SampleScreen({super.key});

//   @override
//   State<SampleScreen> createState() => _SampleScreenState();
// }

// class _SampleScreenState extends State<SampleScreen> {
//   bool _obscureText = true;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: const Color(0xFF155489), // Blue background
//       body: Container(
//         child: SingleChildScrollView(
//           child: Column(
//             children: [
//               const SizedBox(height: 90),
//               Container(
//                 margin: const EdgeInsets.symmetric(horizontal: 24),
//                 padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
//                 decoration: BoxDecoration(
//                   color: Colors.white,
//                   borderRadius: BorderRadius.circular(16),
//                 ),
//                 child: Column(
//                   children: [
//                     Image.asset(
//                       'lib/assets/loginscreenimage.png', 
//                       height: 160,
//                     ),
//                     const SizedBox(height: 30),
                    
//                     // Mobile Field
//                     Align(
//                       alignment: Alignment.centerLeft,
//                       child: Text(
//                         "Mobile Number",
//                         style: TextStyle(
//                           fontWeight: FontWeight.w600,
//                           fontSize: 12,
//                           color: Colors.grey[800],
//                         ),
//                       ),
//                     ),
//                     const SizedBox(height: 6),
//                     TextField(
//                       keyboardType: TextInputType.phone,
//                       decoration: InputDecoration(
//                         hintText: "Enter your Mobile Number",
//                         contentPadding: const EdgeInsets.symmetric(horizontal: 12, vertical: 14),
//                         border: OutlineInputBorder(
//                           borderRadius: BorderRadius.circular(8),
//                         ),
//                       ),
//                     ),
//                     const SizedBox(height: 16),
                    
//                     // Password Field
//                     Align(
//                       alignment: Alignment.centerLeft,
//                       child: Text(
//                         "Password",
//                         style: TextStyle(
//                           fontWeight: FontWeight.w600,
//                           fontSize: 12,
//                           color: Colors.grey[800],
//                         ),
//                       ),
//                     ),
//                     const SizedBox(height: 6),
//                     TextField(
//                       obscureText: _obscureText,
//                       decoration: InputDecoration(
//                         hintText: "Enter your password",
//                         contentPadding: const EdgeInsets.symmetric(horizontal: 12, vertical: 14),
//                         border: OutlineInputBorder(
//                           borderRadius: BorderRadius.circular(8),
//                         ),
//                         suffixIcon: IconButton(
//                           icon: Icon(
//                             _obscureText ? Icons.visibility_off : Icons.visibility,
//                           ),
//                           onPressed: () {
//                             setState(() {
//                               _obscureText = !_obscureText;
//                             });
//                           },
//                         ),
//                       ),
//                     ),
        
//                     const SizedBox(height: 8),
//                     Align(
//                       alignment: Alignment.centerRight,
//                       child: Text(
//                         "Forgot Your Password?",
//                         style: TextStyle(
//                           fontSize: 12,
//                           color: Colors.grey[600],
//                         ),
//                       ),
//                     ),
//                     const SizedBox(height: 20),
        
//                     // Login Button
//                     SizedBox(
//                       width: double.infinity,
//                       child: ElevatedButton(
//                         style: ElevatedButton.styleFrom(
//                           backgroundColor: const Color(0xFF155489),
//                           padding: const EdgeInsets.symmetric(vertical: 14),
//                           shape: RoundedRectangleBorder(
//                             borderRadius: BorderRadius.circular(8),
//                           ),
//                         ),
//                         onPressed: () {},
//                         child: const Text("Login",style: TextStyle(color: Colors.white),),
//                       ),
//                     ),
//                     const SizedBox(height: 20),
        
//                     // Divider with OR
//                     Row(
//                       children: const [
//                         Expanded(child: Divider(thickness: 1)),
//                         Padding(
//                           padding: EdgeInsets.symmetric(horizontal: 10),
//                           child: Text("Or"),
//                         ),
//                         Expanded(child: Divider(thickness: 1)),
//                       ],
//                     ),
//                     const SizedBox(height: 20),
        
//                     // Social Login Icons
//                     Row(
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       children: const [
//                         CircleAvatar(
//                           radius: 18,
//                           backgroundColor: Colors.grey,
//                           child: Icon(FontAwesomeIcons.google, color: Colors.white, size: 18),
//                         ),
//                         SizedBox(width: 24),
//                         CircleAvatar(
//                           radius: 18,
//                           backgroundColor: Colors.grey,
//                           child: Icon(Icons.close, color: Colors.white, size: 18),
//                         ),
//                         SizedBox(width: 24),
//                         CircleAvatar(
//                           radius: 18,
//                           backgroundColor: Colors.grey,
//                           child: Icon(FontAwesomeIcons.facebookF, color: Colors.white, size: 18),
//                         ),
//                       ],
//                     ),
//                     const SizedBox(height: 20),
        
//                     // Register text
//                     Row(
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       children: [
//                         const Text("Don't have account ? "),
//                         GestureDetector(
//                           onTap: () {},
//                           child: const Text(
//                             "Register",
//                             style: TextStyle(
//                               color: Color(0xFF155489),
//                               fontWeight: FontWeight.bold,
//                             ),
//                           ),
//                         ),
//                       ],
//                     ),
//                   ],
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }



















// import 'package:flutter/material.dart';
// import 'package:poster_maker/views/auth/forgot_password_screen.dart';
// import 'package:poster_maker/views/auth/signup_screen.dart';
// import 'package:poster_maker/views/home/navbar_screen.dart';

// class SampleScreen extends StatefulWidget {
//   const SampleScreen({super.key});

//   @override
//   State<SampleScreen> createState() => _SampleScreenState();
// }

// class _SampleScreenState extends State<SampleScreen> {
//   bool _obscureText = true;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Stack(
//         children: [
//           // Two background colors
//           Column(
//             children: [
//               Expanded(
//                 flex: 2,
//                 child: Container(color: const Color(0xFF155489)), // Top color
//               ),
//               Expanded(
//                 flex: 3,
//                 child: Container(color: Colors.white), // Bottom color
//               ),
//             ],
//           ),

//           // Scrollable content
//           SingleChildScrollView(
//             child: Padding(
//               padding: const EdgeInsets.only(top: 90),
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
//                       'lib/assets/circleloginimage.png',
//                       height: 190,
//                     ),
//                     const SizedBox(height: 30),

//                     // Mobile Field
//                     Align(
//                       alignment: Alignment.centerLeft,
//                       child: Text(
//                         "Mobile Number",
//                         style: TextStyle(
//                           fontWeight: FontWeight.w600,
//                           fontSize: 12,
//                           color: Colors.grey[800],
//                         ),
//                       ),
//                     ),
//                     const SizedBox(height: 6),
//                     TextField(
//                       keyboardType: TextInputType.phone,
//                       decoration: InputDecoration(
//                         hintText: "Enter your Mobile Number",
//                         contentPadding:
//                             const EdgeInsets.symmetric(horizontal: 12, vertical: 14),
//                         border: OutlineInputBorder(
//                           borderRadius: BorderRadius.circular(8),
//                         ),
//                       ),
//                     ),
//                     const SizedBox(height: 16),

//                     // Password Field
//                     Align(
//                       alignment: Alignment.centerLeft,
//                       child: Text(
//                         "Password",
//                         style: TextStyle(
//                           fontWeight: FontWeight.w600,
//                           fontSize: 12,
//                           color: Colors.grey[800],
//                         ),
//                       ),
//                     ),
//                     const SizedBox(height: 6),
//                     TextField(
//                       obscureText: _obscureText,
//                       decoration: InputDecoration(
//                         hintText: "Enter your password",
//                         contentPadding:
//                             const EdgeInsets.symmetric(horizontal: 12, vertical: 14),
//                         border: OutlineInputBorder(
//                           borderRadius: BorderRadius.circular(8),
//                         ),
//                         suffixIcon: IconButton(
//                           icon: Icon(
//                             _obscureText ? Icons.visibility_off : Icons.visibility,
//                           ),
//                           onPressed: () {
//                             setState(() {
//                               _obscureText = !_obscureText;
//                             });
//                           },
//                         ),
//                       ),
//                     ),
//                     const SizedBox(height: 8),
//                     Align(
//                       alignment: Alignment.centerRight,
//                       child: GestureDetector(
//                         onTap: () {
//                           Navigator.push(context, MaterialPageRoute(builder: (context)=>ForgotPasswordScreen()));
//                         },
//                         child: Text(
//                           "Forgot Your Password?",
//                           style: TextStyle(
//                             fontSize: 12,
//                             color: Colors.grey[600],
//                           ),
//                         ),
//                       ),
//                     ),
//                     const SizedBox(height: 20),

//                     // Login Button
//                     SizedBox(
//                       width: double.infinity,
//                       child: ElevatedButton(
//                         style: ElevatedButton.styleFrom(
//                           backgroundColor: const Color(0xFF155489),
//                           padding: const EdgeInsets.symmetric(vertical: 14),
//                           shape: RoundedRectangleBorder(
//                             borderRadius: BorderRadius.circular(8),
//                           ),
//                         ),
//                         onPressed: () {
//                           Navigator.push(context, MaterialPageRoute(builder: (context)=>NavbarScreen()));
//                         },
//                         child: const Text(
//                           "Login",
//                           style: TextStyle(color: Colors.white),
//                         ),
//                       ),
//                     ),
//                     const SizedBox(height: 20),

//                     // Divider with OR
//                     Row(
//                       children: const [
//                         Expanded(child: Divider(thickness: 1)),
//                         Padding(
//                           padding: EdgeInsets.symmetric(horizontal: 10),
//                           child: Text("Or"),
//                         ),
//                         Expanded(child: Divider(thickness: 1)),
//                       ],
//                     ),
//                     const SizedBox(height: 20),

//                     // Social Login Icons
//                     Row(
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       children: const [
//                         CircleAvatar(
//                           radius: 18,
//                           backgroundColor: Color.fromARGB(255, 208, 207, 207),
//                           backgroundImage: NetworkImage('https://t4.ftcdn.net/jpg/03/47/46/83/360_F_347468387_ngBE1hQcqRlRVh8d3UDi3YrKNnhfT6V7.jpg'),
//                           // child: Icon(FontAwesomeIcons.google,
//                           //     color: Colors.red, size: 18),
//                         ),
//                         SizedBox(width: 24),
//                         CircleAvatar(
//                           radius: 12,
//                           backgroundColor: Color.fromARGB(255, 222, 219, 219),
//                           backgroundImage: NetworkImage('https://static.dezeen.com/uploads/2023/07/x-logo-twitter-elon-musk_dezeen_2364_col_0-1.jpg'),
//                           // child: Icon(FontAwesomeIcons.xTwitter,
//                           //     color: Colors.black, size: 18),
//                         ),
//                         SizedBox(width: 24),
//                         CircleAvatar(
//                           radius: 12,
//                           backgroundColor: Color.fromARGB(255, 232, 230, 230),
//                           backgroundImage: NetworkImage('https://thumbs.dreamstime.com/b/facebook-logo-vector-eps-file-squared-coloured-easily-editable-have-white-background-high-resolution-255557233.jpg'),
                          
//                         ),
//                       ],
//                     ),
//                     const SizedBox(height: 20),

//                     // Register text
//                     Row(
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       children: [
//                         const Text("Don't have account ? "),
//                         GestureDetector(
//                           onTap: () {
//                             Navigator.push(context, MaterialPageRoute(builder: (context)=>SignupScreen()));
//                           },
//                           child: const Text(
//                             "Register",
//                             style: TextStyle(
//                               color: Color(0xFF155489),
//                               fontWeight: FontWeight.bold,
//                             ),
//                           ),
//                         ),
//                       ],
//                     ),
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
import 'package:poster_maker/views/provider/login_provider.dart';
import 'package:provider/provider.dart';
import 'package:poster_maker/views/auth/forgot_password_screen.dart';
import 'package:poster_maker/views/auth/signup_screen.dart';
import 'package:poster_maker/views/home/navbar_screen.dart';


class SampleScreen extends StatefulWidget {
  const SampleScreen({super.key});

  @override
  State<SampleScreen> createState() => _SampleScreenState();
}

class _SampleScreenState extends State<SampleScreen> {
  bool _obscureText = true;
  final TextEditingController _phoneController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    _phoneController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  void _handleLogin() async {
    if (_formKey.currentState!.validate()) {
      final loginProvider = Provider.of<LoginProvider>(context, listen: false);
      
      final success = await loginProvider.login(
        phoneNumber: _phoneController.text.trim(),
        password: _passwordController.text,
      );

      if (success) {

         ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Login successful!'),
          backgroundColor: Colors.green,
          duration: Duration(seconds: 1),
        ),
      );
        // Navigate to home screen on successful login
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => NavbarScreen()),
        );
      } else {
        // Show error message
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(loginProvider.errorMessage ?? 'Login failed'),
            backgroundColor: Colors.red,
          ),
        );
      }
    }
  }

  String? _validatePhone(String? value) {
    if (value == null || value.isEmpty) {
      return 'Phone number is required';
    }
    if (value.length < 10) {
      return 'Phone number must be at least 10 digits';
    }
    return null;
  }

  String? _validatePassword(String? value) {
    if (value == null || value.isEmpty) {
      return 'Password is required';
    }
    if (value.length < 6) {
      return 'Password must be at least 6 characters';
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Two background colors
          Column(
            children: [
              Expanded(
                flex: 2,
                child: Container(color: const Color(0xFF155489)), // Top color
              ),
              Expanded(
                flex: 3,
                child: Container(color: Colors.white), // Bottom color
              ),
            ],
          ),

          // Scrollable content
          SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.only(top: 90),
              child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 24),
                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
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
                child: Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      Image.asset(
                        'lib/assets/circleloginimage.png',
                        height: 190,
                      ),
                      const SizedBox(height: 30),

                      // Mobile Field
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Mobile Number",
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 12,
                            color: Colors.grey[800],
                          ),
                        ),
                      ),
                      const SizedBox(height: 6),
                      TextFormField(
                        controller: _phoneController,
                        keyboardType: TextInputType.phone,
                        validator: _validatePhone,
                        decoration: InputDecoration(
                          hintText: "Enter your Mobile Number",
                          contentPadding:
                              const EdgeInsets.symmetric(horizontal: 12, vertical: 14),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                          errorBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                            borderSide: const BorderSide(color: Colors.red),
                          ),
                        ),
                      ),
                      const SizedBox(height: 16),

                      // Password Field
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Password",
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 12,
                            color: Colors.grey[800],
                          ),
                        ),
                      ),
                      const SizedBox(height: 6),
                      TextFormField(
                        controller: _passwordController,
                        obscureText: _obscureText,
                        validator: _validatePassword,
                        decoration: InputDecoration(
                          hintText: "Enter your password",
                          contentPadding:
                              const EdgeInsets.symmetric(horizontal: 12, vertical: 14),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                          errorBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                            borderSide: const BorderSide(color: Colors.red),
                          ),
                          suffixIcon: IconButton(
                            icon: Icon(
                              _obscureText ? Icons.visibility_off : Icons.visibility,
                            ),
                            onPressed: () {
                              setState(() {
                                _obscureText = !_obscureText;
                              });
                            },
                          ),
                        ),
                      ),
                      const SizedBox(height: 8),
                      Align(
                        alignment: Alignment.centerRight,
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => ForgotPasswordScreen(),
                              ),
                            );
                          },
                          child: Text(
                            "Forgot Your Password?",
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.grey[600],
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 20),

                      // Login Button with Provider
                      Consumer<LoginProvider>(
                        builder: (context, loginProvider, child) {
                          return SizedBox(
                            width: double.infinity,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: const Color(0xFF155489),
                                padding: const EdgeInsets.symmetric(vertical: 14),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8),
                                ),
                              ),
                              onPressed: loginProvider.isLoading ? null : _handleLogin,
                              child: loginProvider.isLoading
                                  ? const SizedBox(
                                      height: 20,
                                      width: 20,
                                      child: CircularProgressIndicator(
                                        color: Colors.white,
                                        strokeWidth: 2,
                                      ),
                                    )
                                  : const Text(
                                      "Login",
                                      style: TextStyle(color: Colors.white),
                                    ),
                            ),
                          );
                        },
                      ),
                      const SizedBox(height: 20),

                      // Show error message if any
                      Consumer<LoginProvider>(
                        builder: (context, loginProvider, child) {
                          if (loginProvider.errorMessage != null) {
                            return Container(
                              margin: const EdgeInsets.only(bottom: 20),
                              padding: const EdgeInsets.all(8),
                              decoration: BoxDecoration(
                                color: Colors.red.shade50,
                                borderRadius: BorderRadius.circular(8),
                                border: Border.all(color: Colors.red.shade200),
                              ),
                              child: Row(
                                children: [
                                  Icon(Icons.error_outline, color: Colors.red.shade600, size: 16),
                                  const SizedBox(width: 8),
                                  Expanded(
                                    child: Text(
                                      loginProvider.errorMessage!,
                                      style: TextStyle(
                                        color: Colors.red.shade600,
                                        fontSize: 12,
                                      ),
                                    ),
                                  ),
                                  GestureDetector(
                                    onTap: () => loginProvider.clearError(),
                                    child: Icon(Icons.close, color: Colors.red.shade600, size: 16),
                                  ),
                                ],
                              ),
                            );
                          }
                          return const SizedBox.shrink();
                        },
                      ),

                      // Divider with OR
                      Row(
                        children: const [
                          Expanded(child: Divider(thickness: 1)),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 10),
                            child: Text("Or"),
                          ),
                          Expanded(child: Divider(thickness: 1)),
                        ],
                      ),
                      const SizedBox(height: 20),

                      // Social Login Icons
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          CircleAvatar(
                            radius: 18,
                            backgroundColor: Color.fromARGB(255, 208, 207, 207),
                            backgroundImage: NetworkImage(
                                'https://t4.ftcdn.net/jpg/03/47/46/83/360_F_347468387_ngBE1hQcqRlRVh8d3UDi3YrKNnhfT6V7.jpg'),
                          ),
                          SizedBox(width: 24),
                          CircleAvatar(
                            radius: 12,
                            backgroundColor: Color.fromARGB(255, 222, 219, 219),
                            backgroundImage: NetworkImage(
                                'https://static.dezeen.com/uploads/2023/07/x-logo-twitter-elon-musk_dezeen_2364_col_0-1.jpg'),
                          ),
                          SizedBox(width: 24),
                          CircleAvatar(
                            radius: 12,
                            backgroundColor: Color.fromARGB(255, 232, 230, 230),
                            backgroundImage: NetworkImage(
                                'https://thumbs.dreamstime.com/b/facebook-logo-vector-eps-file-squared-coloured-easily-editable-have-white-background-high-resolution-255557233.jpg'),
                          ),
                        ],
                      ),
                      const SizedBox(height: 20),

                      // Register text
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text("Don't have account ? "),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => SignupScreen(),
                                ),
                              );
                            },
                            child: const Text(
                              "Register",
                              style: TextStyle(
                                color: Color(0xFF155489),
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}