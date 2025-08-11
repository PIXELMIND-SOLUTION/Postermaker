// // import 'package:flutter/material.dart';
// // import 'package:font_awesome_flutter/font_awesome_flutter.dart';
// // import 'package:poster_maker/views/auth/forgot_password_screen.dart';
// // import 'package:poster_maker/views/auth/signup_screen.dart';
// // import 'package:poster_maker/views/home/navbar_screen.dart';

// // class LoginScreen extends StatefulWidget {
// //   const LoginScreen({super.key});

// //   @override
// //   State<LoginScreen> createState() => _LoginScreenState();
// // }

// // class _LoginScreenState extends State<LoginScreen> {
// //   bool _obscurePassword = true;

// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       backgroundColor: Colors.white,
// //       body: SafeArea(
// //         child: SingleChildScrollView(
// //           child: Column(
// //             children: [
// //               Stack(
// //                 children: [
// //                   // Wave background image
// //                   SizedBox(
// //                     height: 200,
// //                     width: double.infinity,
// //                     child: Image.asset(
// //                       'lib/assets/loginpageimage.png',
// //                       fit: BoxFit.cover,
// //                     ),
// //                   ),

// //                   Positioned(
// //                     top: 120,
// //                     left: MediaQuery.of(context).size.width / 2 - 103,
// //                     child: SizedBox(
// //                       width: 206,
// //                       height: 251,
// //                       child: Stack(
// //                         clipBehavior: Clip.none,
// //                         children: [
// //                          Image.asset('lib/assets/loginscreenimage.png')
// //                         ],
// //                       ),
// //                     ),
// //                   ),
// //                 ],
// //               ),

// //               const SizedBox(height: 130),

// //               // Mobile number field
// //               Padding(
// //                 padding: const EdgeInsets.symmetric(horizontal: 24.0),
// //                 child: Column(
// //                   crossAxisAlignment: CrossAxisAlignment.start,
// //                   children: [
// //                     const Text(
// //                       'Mobile Number',
// //                       style: TextStyle(fontWeight: FontWeight.bold),
// //                     ),
// //                     const SizedBox(height: 4),
// //                     TextField(
// //                       decoration: InputDecoration(
// //                         hintText: 'Enter your Mobile Number',
// //                         border: OutlineInputBorder(
// //                           borderRadius: BorderRadius.circular(8),
// //                         ),
// //                       ),
// //                       keyboardType: TextInputType.phone,
// //                     ),
// //                     const SizedBox(height: 16),

// //                     // Password field
// //                     const Text(
// //                       'Password',
// //                       style: TextStyle(fontWeight: FontWeight.bold),
// //                     ),
// //                     const SizedBox(height: 4),
// //                     TextField(
// //                       obscureText: _obscurePassword,
// //                       decoration: InputDecoration(
// //                         hintText: 'Enter your password',
// //                         suffixIcon: IconButton(
// //                           icon: Icon(
// //                             _obscurePassword
// //                                 ? Icons.visibility_off
// //                                 : Icons.visibility,
// //                           ),
// //                           onPressed: () {
// //                             setState(() {
// //                               _obscurePassword = !_obscurePassword;
// //                             });
// //                           },
// //                         ),
// //                         border: OutlineInputBorder(
// //                           borderRadius: BorderRadius.circular(8),
// //                         ),
// //                       ),
// //                     ),
// //                     const SizedBox(height: 8),
// //                     Align(
// //                       alignment: Alignment.centerRight,
// //                       child: TextButton(
// //                         onPressed: () {
// //                           Navigator.push(context, MaterialPageRoute(builder: (context)=>ForgotPasswordScreen()));
// //                         },
// //                         child: const Text("Forgot Your Password?",style: TextStyle(color: Colors.grey),),
// //                       ),
// //                     ),
// //                   ],
// //                 ),
// //               ),

// //               // Login button
// //               Padding(
// //                 padding: const EdgeInsets.symmetric(horizontal: 24.0),
// //                 child: SizedBox(
// //                   width: double.infinity,
// //                   child: ElevatedButton(
// //     onPressed: () {
// //           Navigator.push(context, MaterialPageRoute(builder: (context)=>NavbarScreen()));
// //     },
// //     style: ElevatedButton.styleFrom(
// //       backgroundColor: const Color(0xFF22577A),
// //       padding: const EdgeInsets.symmetric(vertical: 16),
// //       elevation: 4,
// //       shadowColor: Colors.black45,
// //       shape:  RoundedRectangleBorder(
// //         borderRadius: BorderRadius.circular(15)
// //       ), // No border radius
// //       textStyle: const TextStyle(
// //         fontSize: 16,
// //         fontWeight: FontWeight.w600,
// //       ),
// //     ),
// //     child: const Text(
// //       "Login",
// //       style: TextStyle(
// //         color: Colors.white,
// //         letterSpacing: 0.5,
// //       ),
// //     ),
// //   ),
// //                 ),
// //               ),

// //               const SizedBox(height: 16),

// //               // OR divider
// //               Row(
// //                 mainAxisAlignment: MainAxisAlignment.center,
// //                 children: const [
// //                   Expanded(
// //                     child: Divider(thickness: 1, indent: 24, endIndent: 8),
// //                   ),
// //                   Text("Or"),
// //                   Expanded(
// //                     child: Divider(thickness: 1, indent: 8, endIndent: 24),
// //                   ),
// //                 ],
// //               ),

// //               const SizedBox(height: 16),

// //               // Social login buttons
// //               Row(
// //                 mainAxisAlignment: MainAxisAlignment.center,
// //                 children: const [
// //                   CircleAvatar(
// //                     backgroundColor: Colors.grey,
// //                     child: FaIcon(FontAwesomeIcons.google, color: Colors.white),
// //                   ),
// //                   SizedBox(width: 16),
// //                   CircleAvatar(
// //                     backgroundColor: Colors.black,
// //                     child: FaIcon(FontAwesomeIcons.xTwitter, color: Colors.white),
// //                   ),
// //                   SizedBox(width: 16),
// //                   CircleAvatar(
// //                     backgroundColor: Color(0xFF3b5998),
// //                     child: FaIcon(FontAwesomeIcons.facebookF, color: Colors.white),
// //                   ),
// //                 ],
// //               ),

// //               const SizedBox(height: 16),

// //               // Register text
// //               Row(
// //                 mainAxisAlignment: MainAxisAlignment.center,
// //                 children: [
// //                   const Text("Don't have account ? "),
// //                   GestureDetector(
// //                     onTap: () {
// //                       Navigator.push(context, MaterialPageRoute(builder: (context)=>SignupScreen()));
// //                     },
// //                     child: const Text(
// //                       "Register",
// //                       style: TextStyle(
// //                         color: Color(0xFF22577A),
// //                         fontWeight: FontWeight.bold,
// //                       ),
// //                     ),
// //                   ),
// //                 ],
// //               ),

// //               const SizedBox(height: 20),
// //             ],
// //           ),
// //         ),
// //       ),
// //     );
// //   }
// // }

// // import 'package:flutter/material.dart';
// // import 'package:font_awesome_flutter/font_awesome_flutter.dart';
// // import 'package:poster_maker/views/Guest/guest_screen.dart';
// // import 'package:poster_maker/views/auth/signup_screen.dart';
// // import 'package:poster_maker/views/home/navbar_screen.dart';

// // class LoginScreen extends StatefulWidget {
// //   const LoginScreen({super.key});

// //   @override
// //   State<LoginScreen> createState() => _LoginScreenState();
// // }

// // class _LoginScreenState extends State<LoginScreen> {
// //   bool _obscurePassword = true;

// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       backgroundColor: Colors.white,
// //       body: SafeArea(
// //         child: SingleChildScrollView(
// //           padding: const EdgeInsets.all(8),
// //           child: Column(
// //             crossAxisAlignment: CrossAxisAlignment.center,
// //             children: [

// //               const SizedBox(height: 12),

// //               Container(
// //                 height: 200,
// //                 width: double.infinity,

// //                 child: Image.asset(
// //                   'lib/assets/loginscreenimage.png', // Main login illustration
// //                   fit: BoxFit.cover,
// //                 ),
// //               ),

// //               const SizedBox(height: 32),

// //               // Mobile Number Field
// //               // Align(
// //               //   alignment: Alignment.centerLeft,
// //               //   child: const Text(
// //               //     'Mobile Number',
// //               //     style: TextStyle(fontWeight: FontWeight.bold),
// //               //   ),
// //               // ),
// //               const SizedBox(height: 6),
// //               TextField(
// //                 decoration: InputDecoration(
// //                   hintText: 'Enter your Mobile Number',
// //                   labelText: 'Mobile Number',
// //                   contentPadding: const EdgeInsets.symmetric(horizontal: 16),
// //                   border: OutlineInputBorder(
// //                     borderRadius: BorderRadius.circular(8),
// //                   ),
// //                 ),
// //                 keyboardType: TextInputType.phone,
// //               ),
// //               const SizedBox(height: 16),

// //               // Password Field

// //               const SizedBox(height: 6),
// //               TextField(
// //                 obscureText: _obscurePassword,
// //                 decoration: InputDecoration(
// //                   hintText: 'Enter your password',
// //                   labelText: 'Password',
// //                   contentPadding: const EdgeInsets.symmetric(horizontal: 16),
// //                   suffixIcon: IconButton(
// //                     icon: Icon(
// //                       _obscurePassword
// //                           ? Icons.visibility_off
// //                           : Icons.visibility,
// //                     ),
// //                     onPressed: () {
// //                       setState(() {
// //                         _obscurePassword = !_obscurePassword;
// //                       });
// //                     },
// //                   ),
// //                   border: OutlineInputBorder(
// //                     borderRadius: BorderRadius.circular(8),
// //                   ),
// //                 ),
// //               ),

// //               const SizedBox(height: 8),

// //               // Forgot Password
// //               Align(
// //                 alignment: Alignment.centerRight,
// //                 child: TextButton(
// //                   onPressed: () {
// //                     // Navigate to Forgot Password Screen
// //                   },
// //                   child: const Text(
// //                     "Forgot Your Password?",
// //                     style: TextStyle(color: Colors.grey),
// //                   ),
// //                 ),
// //               ),

// //               const SizedBox(height: 12),

// //               // Login Button
// //               SizedBox(
// //                 width: double.infinity,
// //                 child: ElevatedButton(
// //                   onPressed: () {
// //                     Navigator.push(context, MaterialPageRoute(builder: (context)=>NavbarScreen()));
// //                     // Navigate to Navbar screen
// //                   },
// //                   style: ElevatedButton.styleFrom(
// //                     backgroundColor: const Color(0xFF22577A),
// //                     padding: const EdgeInsets.symmetric(vertical: 16),
// //                     elevation: 4,
// //                     shadowColor: Colors.black45,
// //                     shape: RoundedRectangleBorder(
// //                       borderRadius: BorderRadius.circular(8),
// //                     ),
// //                   ),
// //                   child: const Text(
// //                     "Login",
// //                     style: TextStyle(
// //                       color: Colors.white,
// //                       letterSpacing: 0.5,
// //                       fontWeight: FontWeight.w600,
// //                       fontSize: 16,
// //                     ),
// //                   ),
// //                 ),
// //               ),

// //               const SizedBox(height: 20),

// //               // OR Divider
// //               Row(
// //                 children: const [
// //                   Expanded(child: Divider(indent: 24, endIndent: 8)),
// //                   Text("Or"),
// //                   Expanded(child: Divider(indent: 8, endIndent: 24)),
// //                 ],
// //               ),

// //               const SizedBox(height: 20),

// //               // Social Login Buttons
// //               Row(
// //                 mainAxisAlignment: MainAxisAlignment.center,
// //                 children: const [
// //                   CircleAvatar(
// //                     backgroundColor: Colors.grey,
// //                     child: FaIcon(FontAwesomeIcons.google, color: Colors.white),
// //                   ),
// //                   SizedBox(width: 16),
// //                   CircleAvatar(
// //                     backgroundColor: Colors.black,
// //                     child:
// //                         FaIcon(FontAwesomeIcons.xTwitter, color: Colors.white),
// //                   ),
// //                   SizedBox(width: 16),
// //                   CircleAvatar(
// //                     backgroundColor: Color(0xFF3b5998),
// //                     child:
// //                         FaIcon(FontAwesomeIcons.facebookF, color: Colors.white),
// //                   ),
// //                 ],
// //               ),

// //               const SizedBox(height: 16),

// //               // Register and Guest Text
// //               Row(
// //                 mainAxisAlignment: MainAxisAlignment.center,
// //                 children: [
// //                   const Text("Don't have account ? "),
// //                   GestureDetector(
// //                     onTap: () {
// //                       Navigator.push(
// //                           context,
// //                           MaterialPageRoute(
// //                               builder: (context) => SignupScreen()));
// //                       // Navigate to Register
// //                     },
// //                     child: const Text(
// //                       "Register",
// //                       style: TextStyle(
// //                         color: Color(0xFF22577A),
// //                         fontWeight: FontWeight.bold,
// //                       ),
// //                     ),
// //                   ),
// //                 ],
// //               ),

// //               const SizedBox(height: 8),

// //               Row(
// //                 mainAxisAlignment: MainAxisAlignment.center,
// //                 children: [
// //                   const Text("Continue as a "),
// //                   GestureDetector(
// //                     onTap: () {
// //                       Navigator.push(
// //                           context,
// //                           MaterialPageRoute(
// //                               builder: (context) => GuestScreen()));
// //                     },
// //                     child: const Text(
// //                       "Guest",
// //                       style: TextStyle(
// //                         color: const Color(0xFF175889),
// //                         fontWeight: FontWeight.bold,
// //                       ),
// //                     ),
// //                   ),
// //                 ],
// //               ),

// //               const SizedBox(height: 24),
// //             ],
// //           ),
// //         ),
// //       ),
// //     );
// //   }
// // }

// // import 'package:flutter/material.dart';
// // import 'package:font_awesome_flutter/font_awesome_flutter.dart';
// // import 'package:poster_maker/views/auth/signup_screen.dart';

// // class LoginScreen extends StatefulWidget {
// //   const LoginScreen({super.key});

// //   @override
// //   State<LoginScreen> createState() => _LoginScreenState();
// // }

// // class _LoginScreenState extends State<LoginScreen> {
// //   bool _obscurePassword = true;

// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       backgroundColor: Colors.white,
// //       body: SafeArea(
// //         child: SingleChildScrollView(
// //           padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 20),
// //           child: Column(
// //             crossAxisAlignment: CrossAxisAlignment.center,
// //             children: [
// //               const SizedBox(height: 12),

// //               // Top Image
// //               Container(
// //                 height: 200,
// //                 width: double.infinity,
// //                 child: Image.asset(
// //                   'lib/assets/loginscreenimage.png',
// //                   fit: BoxFit.contain,
// //                 ),
// //               ),

// //               const SizedBox(height: 32),

// //               // Mobile Number
// //               TextField(
// //                 keyboardType: TextInputType.phone,
// //                 decoration: InputDecoration(
// //                   labelText: 'Mobile Number',
// //                   hintText: 'Enter your Mobile Number',
// //                   border: OutlineInputBorder(
// //                     borderRadius: BorderRadius.circular(8),
// //                   ),
// //                   contentPadding:
// //                       const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
// //                 ),
// //               ),

// //               const SizedBox(height: 16),

// //               // Password Field
// //               TextField(
// //                 obscureText: _obscurePassword,
// //                 decoration: InputDecoration(
// //                   labelText: 'Password',
// //                   hintText: 'Enter your password',
// //                   border: OutlineInputBorder(
// //                     borderRadius: BorderRadius.circular(8),
// //                   ),
// //                   contentPadding:
// //                       const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
// //                   suffixIcon: IconButton(
// //                     icon: Icon(_obscurePassword
// //                         ? Icons.visibility_off
// //                         : Icons.visibility),
// //                     onPressed: () {
// //                       setState(() {
// //                         _obscurePassword = !_obscurePassword;
// //                       });
// //                     },
// //                   ),
// //                 ),
// //               ),

// //               const SizedBox(height: 8),

// //               // Forgot Password
// //               Align(
// //                 alignment: Alignment.centerRight,
// //                 child: TextButton(
// //                   onPressed: () {},
// //                   child: const Text(
// //                     "Forgot Your Password?",
// //                     style: TextStyle(color: Colors.grey),
// //                   ),
// //                 ),
// //               ),

// //               const SizedBox(height: 12),

// //               // Login Button
// //               SizedBox(
// //                 width: double.infinity,
// //                 child: ElevatedButton(
// //                   onPressed: () {},
// //                   style: ElevatedButton.styleFrom(
// //                     backgroundColor: const Color(0xFF22577A),
// //                     padding: const EdgeInsets.symmetric(vertical: 14),
// //                     shape: RoundedRectangleBorder(
// //                       borderRadius: BorderRadius.circular(8),
// //                     ),
// //                   ),
// //                   child: const Text(
// //                     "Login",
// //                     style: TextStyle(
// //                       fontWeight: FontWeight.w600,
// //                       fontSize: 16,
// //                       letterSpacing: 0.5,
// //                       color: Colors.white
// //                     ),
// //                   ),
// //                 ),
// //               ),

// //               const SizedBox(height: 20),

// //               // OR Divider
// //               Row(
// //                 children: const [
// //                   Expanded(child: Divider(indent: 24, endIndent: 8)),
// //                   Text("Or"),
// //                   Expanded(child: Divider(indent: 8, endIndent: 24)),
// //                 ],
// //               ),

// //               const SizedBox(height: 20),

// //               // Social Buttons
// //               Row(
// //                 mainAxisAlignment: MainAxisAlignment.center,
// //                 children: const [
// //                   CircleAvatar(
// //                     backgroundColor: Colors.grey,
// //                     child: FaIcon(FontAwesomeIcons.google, color: Colors.white),
// //                   ),
// //                   SizedBox(width: 16),
// //                   CircleAvatar(
// //                     backgroundColor: Colors.black,
// //                     child:
// //                         FaIcon(FontAwesomeIcons.xTwitter, color: Colors.white),
// //                   ),
// //                   SizedBox(width: 16),
// //                   CircleAvatar(
// //                     backgroundColor: Color(0xFF3b5998),
// //                     child:
// //                         FaIcon(FontAwesomeIcons.facebookF, color: Colors.white),
// //                   ),
// //                 ],
// //               ),

// //               const SizedBox(height: 20),

// //               // Register
// //               Row(
// //                 mainAxisAlignment: MainAxisAlignment.center,
// //                 children: [
// //                   const Text("Don't have account ? "),
// //                   GestureDetector(
// //                     onTap: () {
// //                       Navigator.push(context, MaterialPageRoute(builder: (context)=>SignupScreen()));
// //                     },
// //                     child: const Text(
// //                       "Register",
// //                       style: TextStyle(
// //                         color: Color(0xFF22577A),
// //                         fontWeight: FontWeight.bold,
// //                       ),
// //                     ),
// //                   ),
// //                 ],
// //               ),

// //               const SizedBox(height: 8),

// //               // Guest Login
// //               // Row(
// //               //   mainAxisAlignment: MainAxisAlignment.center,
// //               //   children: [
// //               //     const Text("Continue as a "),
// //               //     GestureDetector(
// //               //       onTap: () {},
// //               //       child: const Text(
// //               //         "Guest",
// //               //         style: TextStyle(
// //               //           color: Color(0xFF175889),
// //               //           fontWeight: FontWeight.bold,
// //               //         ),
// //               //       ),
// //               //     ),
// //               //   ],
// //               // ),
// //             ],
// //           ),
// //         ),
// //       ),
// //     );
// //   }
// // }

// import 'package:flutter/material.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';
// import 'package:poster_maker/views/auth/sample_screen.dart';
// import 'package:poster_maker/views/auth/signup_screen.dart';
// import 'package:poster_maker/views/home/navbar_screen.dart';

// class LoginScreen extends StatefulWidget {
//   const LoginScreen({super.key});

//   @override
//   State<LoginScreen> createState() => _LoginScreenState();
// }

// class _LoginScreenState extends State<LoginScreen> {
//   bool _obscurePassword = true;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white,

//       // Blue background using an empty AppBar
//       appBar: PreferredSize(
//         preferredSize: const Size.fromHeight(80),
//         child: AppBar(
//           backgroundColor: const Color(0xFF22577A),
//           elevation: 0,
//           automaticallyImplyLeading: false,
//         ),
//       ),

//       body: SafeArea(
//         top: false, // Already handled by AppBar
//         child: SingleChildScrollView(
//           padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 10),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.center,
//             children: [
//               // Image
//               Container(
//                 height: 200,
//                 width: double.infinity,
//                 child: Image.asset(
//                   'lib/assets/loginscreenimage.png',
//                   fit: BoxFit.contain,
//                 ),
//               ),

//               const SizedBox(height: 32),

//               // Mobile Number Field
//               TextField(
//                 keyboardType: TextInputType.phone,
//                 decoration: InputDecoration(
//                   labelText: 'Mobile Number',
//                   hintText: 'Enter your Mobile Number',
//                   border: OutlineInputBorder(
//                     borderRadius: BorderRadius.circular(8),
//                   ),
//                   contentPadding:
//                       const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
//                 ),
//               ),

//               const SizedBox(height: 16),

//               // Password Field
//               TextField(
//                 obscureText: _obscurePassword,
//                 decoration: InputDecoration(
//                   labelText: 'Password',
//                   hintText: 'Enter your password',
//                   border: OutlineInputBorder(
//                     borderRadius: BorderRadius.circular(8),
//                   ),
//                   contentPadding:
//                       const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
//                   suffixIcon: IconButton(
//                     icon: Icon(_obscurePassword
//                         ? Icons.visibility_off
//                         : Icons.visibility),
//                     onPressed: () {
//                       setState(() {
//                         _obscurePassword = !_obscurePassword;
//                       });
//                     },
//                   ),
//                 ),
//               ),

//               const SizedBox(height: 8),

//               // Forgot Password
//               Align(
//                 alignment: Alignment.centerRight,
//                 child: TextButton(
//                   onPressed: () {
//                      Navigator.push(
//                         context,
//                         MaterialPageRoute(
//                             builder: (context) =>
//                                 const SampleScreen()));
//                     // Navigator.push(
//                     //     context,
//                     //     MaterialPageRoute(
//                     //         builder: (context) =>
//                     //             const ForgotPasswordScreen()));
//                   },
//                   child: const Text(
//                     "Forgot Your Password?",
//                     style: TextStyle(color: Colors.grey),
//                   ),
//                 ),
//               ),

//               const SizedBox(height: 12),

//               // Login Button
//               SizedBox(
//                 width: double.infinity,
//                 child: ElevatedButton(
//                   onPressed: () {
//                     Navigator.push(context,
//                         MaterialPageRoute(builder: (context) => NavbarScreen()));
//                   },
//                   style: ElevatedButton.styleFrom(
//                     backgroundColor: const Color(0xFF22577A),
//                     padding: const EdgeInsets.symmetric(vertical: 14),
//                     shape: RoundedRectangleBorder(
//                       borderRadius: BorderRadius.circular(8),
//                     ),
//                   ),
//                   child: const Text(
//                     "Login",
//                     style: TextStyle(
//                       fontWeight: FontWeight.w600,
//                       fontSize: 16,
//                       letterSpacing: 0.5,
//                       color: Colors.white,
//                     ),
//                   ),
//                 ),
//               ),

//               const SizedBox(height: 20),

//               // OR Divider
//               const Row(
//                 children: [
//                   Expanded(child: Divider(indent: 24, endIndent: 8)),
//                   Text("Or"),
//                   Expanded(child: Divider(indent: 8, endIndent: 24)),
//                 ],
//               ),

//               const SizedBox(height: 20),

//               // Social Login Buttons
//               const Row(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   CircleAvatar(
//                     radius: 20,
//                     backgroundColor: Color.fromARGB(255, 227, 226, 226),
//                     backgroundImage: NetworkImage('https://upload.wikimedia.org/wikipedia/commons/thumb/c/c1/Google_%22G%22_logo.svg/768px-Google_%22G%22_logo.svg.png',),
                    
//                     // child: FaIcon(FontAwesomeIcons.google, color: Colors.white),
//                   ),
//                   SizedBox(width: 16),
//                   CircleAvatar(
//                     backgroundColor: Color.fromARGB(255, 227, 226, 226),
//                     child:
//                         FaIcon(FontAwesomeIcons.xTwitter, color: Color.fromARGB(255, 0, 0, 0)),
//                   ),
//                   SizedBox(width: 16),
//                   CircleAvatar(
//                     backgroundColor: Color(0xFF3b5998),
//                     child:
//                         FaIcon(FontAwesomeIcons.facebookF, color: Colors.white),
//                   ),
//                 ],
//               ),

//               const SizedBox(height: 20),

//               // Register Text
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   const Text("Don't have account ? "),
//                   GestureDetector(
//                     onTap: () {
//                       Navigator.push(
//                         context,
//                         MaterialPageRoute(
//                           builder: (context) => const SignupScreen(),
//                         ),
//                       );
//                     },
//                     child: const Text(
//                       "Register",
//                       style: TextStyle(
//                         color: Color(0xFF22577A),
//                         fontWeight: FontWeight.bold,
//                       ),
//                     ),
//                   ),
//                 ],
//               ),

//               const SizedBox(height: 8),

//               // Guest Login (Optional)
//               // Row(
//               //   mainAxisAlignment: MainAxisAlignment.center,
//               //   children: [
//               //     const Text("Continue as a "),
//               //     GestureDetector(
//               //       onTap: () {},
//               //       child: const Text(
//               //         "Guest",
//               //         style: TextStyle(
//               //           color: Color(0xFF175889),
//               //           fontWeight: FontWeight.bold,
//               //         ),
//               //       ),
//               //     ),
//               //   ],
//               // ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
