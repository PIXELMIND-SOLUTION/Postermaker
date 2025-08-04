// import 'package:flutter/material.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';
// import 'package:poster_maker/views/auth/otp_screen.dart';

// class SignupScreen extends StatelessWidget {
//   const SignupScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SafeArea(
//         child: SingleChildScrollView(
//           child: Column(
//             children: [
//               // Top curved design with icons and illustration
//               Stack(
//                 children: [
//                   ClipPath(
//                     clipper: TopWaveClipper(),
//                     child: Container(
//                       height: 180,
//                       color: const Color(0xFF22577A),
//                     ),
//                   ),
//                   // Central Image
//                   Container(
//                     height: 200,
//                     width: double.infinity,
//                     child: Image.asset(
//                       'lib/assets/Illustration.png', // Main login illustration
//                       fit: BoxFit.cover,
//                     ),
//                   ),
//                 ],
//               ),

//               const SizedBox(height: 80),

//               Padding(
//                 padding: const EdgeInsets.symmetric(horizontal: 24),
//                 child: Column(
//                   children: [
//                     CustomTextField(
//                       label: "",
//                       hintText: "Tommy",
//                       labelText: 'Full Name',
//                     ),
//                     CustomTextField(
//                       label: "",
//                       hintText: "Tommy@gmail.com",
//                       labelText: 'E-mail',
//                     ),
//                     CustomTextField(
//                       label: "",
//                       hintText: "1234567890",
//                       keyboardType: TextInputType.phone,
//                       labelText: 'Phone Number',
//                     ),
//                     PasswordField(
//                       label: "",
//                       labelText: 'Password',
//                     ),
//                     PasswordField(
//                       label: "",
//                       labelText: 'Confirm Password',
//                     ),
//                     const SizedBox(height: 20),

//                     SizedBox(
//                       width: double.infinity,
//                       child: ElevatedButton(
//                         onPressed: () {
//                           Navigator.push(
//                               context,
//                               MaterialPageRoute(
//                                   builder: (context) => OtpScreen()));
//                         },
//                         style: ElevatedButton.styleFrom(
//                           backgroundColor: const Color(0xFF22577A),
//                           padding: const EdgeInsets.symmetric(vertical: 16),
//                           elevation: 4,
//                           shadowColor: Colors.black45,
//                           shape: RoundedRectangleBorder(
//                               borderRadius: BorderRadius.circular(
//                                   15)), // No border radius
//                           textStyle: const TextStyle(
//                             fontSize: 16,
//                             fontWeight: FontWeight.w600,
//                           ),
//                         ),
//                         child: const Text(
//                           "Continue",
//                           style: TextStyle(
//                             color: Colors.white,
//                             letterSpacing: 0.5,
//                           ),
//                         ),
//                       ),
//                     ),

//                     const SizedBox(height: 20),

//                     // Or Divider
//                     const Text("Or", style: TextStyle(color: Colors.grey)),

//                     const SizedBox(height: 10),

//                     // Social Icons
//                     Row(
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       children: const [
//                         SocialIcon(icon: FontAwesomeIcons.google),
//                         SizedBox(width: 20),
//                         SocialIcon(icon: FontAwesomeIcons.xTwitter),
//                         SizedBox(width: 20),
//                         SocialIcon(icon: FontAwesomeIcons.facebookF),
//                       ],
//                     ),

//                     const SizedBox(height: 20),

//                     // Already have account
//                     Row(
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       children: [
//                         const Text("Already have account? "),
//                         GestureDetector(
//                           onTap: () {},
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
//                     const SizedBox(height: 20),
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

// // Custom reusable text field widget
// class CustomTextField extends StatelessWidget {
//   final String label;
//   final String hintText;
//   final String labelText;
//   final TextInputType keyboardType;

//   const CustomTextField({
//     super.key,
//     required this.label,
//     required this.hintText,
//     required this.labelText,
//     this.keyboardType = TextInputType.text,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         Text(label),
//         const SizedBox(height: 6),
//         TextField(
//           keyboardType: keyboardType,
//           decoration: InputDecoration(
//             hintText: hintText,
//             labelText: labelText,
//             border: OutlineInputBorder(borderRadius: BorderRadius.circular(6)),
//             contentPadding:
//                 const EdgeInsets.symmetric(horizontal: 12, vertical: 14),
//           ),
//         ),
//         // const SizedBox(height: 14),
//       ],
//     );
//   }
// }

// // Custom password field with visibility toggle
// class PasswordField extends StatefulWidget {
//   final String label;
//   final String labelText;

//   const PasswordField(
//       {super.key, required this.label, required this.labelText});

//   @override
//   State<PasswordField> createState() => _PasswordFieldState();
// }

// class _PasswordFieldState extends State<PasswordField> {
//   bool _obscureText = true;

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         Text(widget.label),
//         // const SizedBox(height: 6),
//         TextField(
//           obscureText: _obscureText,
//           decoration: InputDecoration(
//             hintText: widget.label,
//             labelText: widget.labelText,
//             border: OutlineInputBorder(borderRadius: BorderRadius.circular(6)),
//             contentPadding:
//                 const EdgeInsets.symmetric(horizontal: 12, vertical: 14),
//             suffixIcon: IconButton(
//               icon: Icon(
//                 _obscureText ? Icons.visibility_off : Icons.visibility,
//                 color: Colors.black,
//               ),
//               onPressed: () => setState(() => _obscureText = !_obscureText),
//             ),
//           ),
//         ),
//         const SizedBox(height: 14),
//       ],
//     );
//   }
// }

// // Social icon button
// class SocialIcon extends StatelessWidget {
//   final IconData icon;

//   const SocialIcon({super.key, required this.icon});

//   @override
//   Widget build(BuildContext context) {
//     return CircleAvatar(
//       radius: 18,
//       backgroundColor: Colors.grey.shade200,
//       child: Icon(icon, size: 18, color: Colors.black),
//     );
//   }
// }

// // Custom clipper for top wave
// class TopWaveClipper extends CustomClipper<Path> {
//   @override
//   Path getClip(Size size) {
//     final path = Path();
//     path.lineTo(0, size.height - 40);
//     path.quadraticBezierTo(
//         size.width / 2, size.height, size.width, size.height - 40);
//     path.lineTo(size.width, 0);
//     path.close();
//     return path;
//   }

//   @override
//   bool shouldReclip(CustomClipper<Path> oldClipper) => false;
// }

// import 'package:flutter/material.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';
// import 'package:poster_maker/views/Guest/guest_screen.dart';
// import 'package:poster_maker/views/auth/login_screen.dart';
// import 'package:poster_maker/views/auth/signup_screen.dart';
// import 'package:poster_maker/views/home/navbar_screen.dart';

// class SignupScreen extends StatefulWidget {
//   const SignupScreen({super.key});

//   @override
//   State<SignupScreen> createState() => _LoginScreenState();
// }

// class _LoginScreenState extends State<SignupScreen> {
//   bool _obscurePassword = true;

//   final nameController=TextEditingController();
//   final EmailController=TextEditingController();
//   final PhoneNumber=TextEditingController();
//   final passwordController=TextEditingController();
//   final confirmpasswordController=TextEditingController();

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white,
//       body: SafeArea(
//         child: SingleChildScrollView(
//           padding: const EdgeInsets.all(8),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.center,
//             children: [

//               const SizedBox(height: 12),

//               // Central Image
//               Container(
//                 height: 300,
//                 width: double.infinity,
//                 // decoration: BoxDecoration(
//                 //   border: Border.all(color: Colors.blue, width: 1),
//                 // ),
//                 child: Image.asset(
//                   'lib/assets/loginscreenimage.png', // Main login illustration
//                   fit: BoxFit.cover,
//                 ),
//               ),

//               const SizedBox(height: 32),

//               // Mobile Number Field
//               // Align(
//               //   alignment: Alignment.centerLeft,
//               //   child: const Text(
//               //     'Mobile Number',
//               //     style: TextStyle(fontWeight: FontWeight.bold),
//               //   ),
//               // ),
//               const SizedBox(height: 6),
//               TextField(
//                 decoration: InputDecoration(

//                   hintText: 'Tommy',
//                   labelText: 'Full Name',
//                   contentPadding: const EdgeInsets.symmetric(horizontal: 16),
//                   border: OutlineInputBorder(
//                     borderRadius: BorderRadius.circular(8),
//                   ),

//                 ),
//                 keyboardType: TextInputType.phone,
//                 controller: nameController,
//               ),
//               const SizedBox(height: 16),

//               // Password Field

//               const SizedBox(height: 6),
//               TextField(
//                 obscureText: _obscurePassword,
//                 decoration: InputDecoration(
//                   hintText: 'Tommy@gmail.com',
//                   labelText: 'E-mail',
//                   contentPadding: const EdgeInsets.symmetric(horizontal: 16),

//                   border: OutlineInputBorder(
//                     borderRadius: BorderRadius.circular(8),
//                   ),

//                 ),
//                 keyboardType: TextInputType.emailAddress,
//                 controller: EmailController,
//               ),
//               const SizedBox(height: 16),
//               TextField(
//                 obscureText: _obscurePassword,
//                 decoration: InputDecoration(
//                   hintText: '1234567890',
//                   labelText: 'Phone Number',
//                   contentPadding: const EdgeInsets.symmetric(horizontal: 16),

//                   border: OutlineInputBorder(
//                     borderRadius: BorderRadius.circular(8),
//                   ),
//                 ),
//                  keyboardType: TextInputType.phone,
//                 controller: PhoneNumber,

//               ),
//               const SizedBox(height: 16),
//               TextField(
//                 obscureText: _obscurePassword,
//                 decoration: InputDecoration(
//                   hintText: 'Password',
//                   labelText: 'Password',
//                   contentPadding: const EdgeInsets.symmetric(horizontal: 16),
//                   suffixIcon: IconButton(
//                     icon: Icon(
//                       _obscurePassword
//                           ? Icons.visibility_off
//                           : Icons.visibility,
//                     ),
//                     onPressed: () {
//                       setState(() {
//                         _obscurePassword = !_obscurePassword;
//                       });
//                     },
//                   ),
//                   border: OutlineInputBorder(
//                     borderRadius: BorderRadius.circular(8),
//                   ),
//                 ),
//                  keyboardType: TextInputType.text,
//                 controller: passwordController,

//               ),
//               const SizedBox(height: 16),
//                TextField(
//                 obscureText: _obscurePassword,
//                 decoration: InputDecoration(
//                   hintText: 'Confirm Password',
//                   labelText: 'Confirm Password',
//                   contentPadding: const EdgeInsets.symmetric(horizontal: 16),
//                   suffixIcon: IconButton(
//                     icon: Icon(
//                       _obscurePassword
//                           ? Icons.visibility_off
//                           : Icons.visibility,
//                     ),
//                     onPressed: () {
//                       setState(() {
//                         _obscurePassword = !_obscurePassword;
//                       });
//                     },
//                   ),
//                   border: OutlineInputBorder(
//                     borderRadius: BorderRadius.circular(8),
//                   ),
//                 ),
//                  keyboardType: TextInputType.text,
//                 controller: confirmpasswordController,

//               ),

//               const SizedBox(height: 20),

//               // Login Button
//               SizedBox(
//                 width: double.infinity,
//                 child: ElevatedButton(
//                   onPressed: () {
//                     Navigator.push(
//                         context,
//                         MaterialPageRoute(
//                             builder: (context) => NavbarScreen()));
//                   },
//                   style: ElevatedButton.styleFrom(
//                     backgroundColor: const Color(0xFF22577A),
//                     padding: const EdgeInsets.symmetric(vertical: 16),
//                     elevation: 4,
//                     shadowColor: Colors.black45,
//                     shape: RoundedRectangleBorder(
//                       borderRadius: BorderRadius.circular(8),
//                     ),
//                   ),
//                   child: const Text(
//                     "Continue",
//                     style: TextStyle(
//                       color: Colors.white,
//                       letterSpacing: 0.5,
//                       fontWeight: FontWeight.w600,
//                       fontSize: 16,
//                     ),
//                   ),
//                 ),
//               ),

//               const SizedBox(height: 20),

//               // OR Divider
//               Row(
//                 children: const [
//                   Expanded(child: Divider(indent: 24, endIndent: 8)),
//                   Text("Or"),
//                   Expanded(child: Divider(indent: 8, endIndent: 24)),
//                 ],
//               ),

//               const SizedBox(height: 20),

//               // Social Login Buttons
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: const [
//                   CircleAvatar(
//                     backgroundColor: Colors.grey,
//                     child: FaIcon(FontAwesomeIcons.google, color: Colors.white),
//                   ),
//                   SizedBox(width: 16),
//                   CircleAvatar(
//                     backgroundColor: Colors.black,
//                     child:
//                         FaIcon(FontAwesomeIcons.xTwitter, color: Colors.white),
//                   ),
//                   SizedBox(width: 16),
//                   CircleAvatar(
//                     backgroundColor: Color(0xFF3b5998),
//                     child:
//                         FaIcon(FontAwesomeIcons.facebookF, color: Colors.white),
//                   ),
//                 ],
//               ),

//               const SizedBox(height: 16),

//               // Register and Guest Text
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   const Text("Already have account ? "),
//                   GestureDetector(
//                     onTap: () {
//                       Navigator.push(
//                           context,
//                           MaterialPageRoute(
//                               builder: (context) => LoginScreen()));
//                       // Navigate to Register
//                     },
//                     child: const Text(
//                       "Login",
//                       style: TextStyle(
//                         color: Color(0xFF22577A),
//                         fontWeight: FontWeight.bold,
//                       ),
//                     ),
//                   ),
//                 ],
//               ),

//               const SizedBox(height: 8),

//               const SizedBox(height: 24),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

// ignore_for_file: sized_box_for_whitespace

// import 'package:flutter/material.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';
// import 'package:poster_maker/views/auth/login_screen.dart';
// import 'package:poster_maker/views/home/navbar_screen.dart';

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
//       backgroundColor: Colors.white,
//       appBar: PreferredSize(
//         preferredSize: const Size.fromHeight(80),
//         child: AppBar(
//           backgroundColor: const Color(0xFF22577A),
//           elevation: 0,
//           automaticallyImplyLeading: false,
//         ),
//       ),

//       body: Positioned(
//         child: SafeArea(
//           top: false,
//           child: SingleChildScrollView(
//             padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 10),
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.center,
//               children: [
          
//                 Container(
//                   height: 200,
//                   width: double.infinity,
//                   child: Image.asset(
//                     'lib/assets/loginscreenimage.png',
//                     fit: BoxFit.contain,
//                   ),
//                 ),
        
//                 const SizedBox(height: 32),
        
//                 // Full Name
//                 TextField(
//                   controller: nameController,
//                   decoration: InputDecoration(
//                     labelText: 'Full Name',
//                     hintText: 'Tommy',
//                     border: OutlineInputBorder(
//                       borderRadius: BorderRadius.circular(8),
//                     ),
//                     contentPadding:
//                         const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
//                   ),
//                 ),
        
//                 const SizedBox(height: 16),
        
//                 // Email
//                 TextField(
//                   controller: emailController,
//                   keyboardType: TextInputType.emailAddress,
//                   decoration: InputDecoration(
//                     labelText: 'E-Mail',
//                     hintText: 'Tommy@gmail.com',
//                     border: OutlineInputBorder(
//                       borderRadius: BorderRadius.circular(8),
//                     ),
//                     contentPadding:
//                         const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
//                   ),
//                 ),
        
//                 const SizedBox(height: 16),
        
//                 // Phone Number
//                 TextField(
//                   controller: phoneController,
//                   keyboardType: TextInputType.phone,
//                   decoration: InputDecoration(
//                     labelText: 'Phone Number',
//                     hintText: '1234567890',
//                     border: OutlineInputBorder(
//                       borderRadius: BorderRadius.circular(8),
//                     ),
//                     contentPadding:
//                         const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
//                   ),
//                 ),
        
//                 const SizedBox(height: 16),
        
//                 // Password
//                 TextField(
//                   controller: passwordController,
//                   obscureText: _obscurePassword,
//                   decoration: InputDecoration(
//                     labelText: 'Password',
//                     hintText: 'Password',
//                     suffixIcon: IconButton(
//                       icon: Icon(_obscurePassword
//                           ? Icons.visibility_off
//                           : Icons.visibility),
//                       onPressed: () {
//                         setState(() {
//                           _obscurePassword = !_obscurePassword;
//                         });
//                       },
//                     ),
//                     border: OutlineInputBorder(
//                       borderRadius: BorderRadius.circular(8),
//                     ),
//                     contentPadding:
//                         const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
//                   ),
//                 ),
        
//                 const SizedBox(height: 16),
        
//                 // Confirm Password
//                 TextField(
//                   controller: confirmPasswordController,
//                   obscureText: _obscureConfirmPassword,
//                   decoration: InputDecoration(
//                     labelText: 'Confirm Password',
//                     hintText: 'Confirm password',
//                     suffixIcon: IconButton(
//                       icon: Icon(_obscureConfirmPassword
//                           ? Icons.visibility_off
//                           : Icons.visibility),
//                       onPressed: () {
//                         setState(() {
//                           _obscureConfirmPassword = !_obscureConfirmPassword;
//                         });
//                       },
//                     ),
//                     border: OutlineInputBorder(
//                       borderRadius: BorderRadius.circular(8),
//                     ),
//                     contentPadding:
//                         const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
//                   ),
//                 ),
        
//                 const SizedBox(height: 20),
        
//                 // Continue Button
//                 SizedBox(
//                   width: double.infinity,
//                   child: ElevatedButton(
//                     onPressed: () {
//                       Navigator.push(
//                           context,
//                           MaterialPageRoute(
//                               builder: (_) => const NavbarScreen()));
//                     },
//                     style: ElevatedButton.styleFrom(
//                       backgroundColor: const Color(0xFF22577A),
//                       padding: const EdgeInsets.symmetric(vertical: 14),
//                       shape: RoundedRectangleBorder(
//                         borderRadius: BorderRadius.circular(8),
//                       ),
//                     ),
//                     child: const Text(
//                       "Continue",
//                       style: TextStyle(
//                         fontSize: 16,
//                         fontWeight: FontWeight.w600,
//                         letterSpacing: 0.5,
//                         color: Colors.white,
//                       ),
//                     ),
//                   ),
//                 ),
        
//                 const SizedBox(height: 20),
        
//                 // OR Divider
//                 const Row(
//                   children: [
//                     Expanded(child: Divider(indent: 24, endIndent: 8)),
//                     Text("Or"),
//                     Expanded(child: Divider(indent: 8, endIndent: 24)),
//                   ],
//                 ),
        
//                 const SizedBox(height: 20),
        
//                 // Social Login Buttons
//                 const Row(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     CircleAvatar(
//                       backgroundColor: Color.fromARGB(255, 227, 226, 226),
//                       backgroundImage: NetworkImage(
//                         'https://upload.wikimedia.org/wikipedia/commons/thumb/c/c1/Google_%22G%22_logo.svg/768px-Google_%22G%22_logo.svg.png',
//                       ),
//                       // child: FaIcon(FontAwesomeIcons.google, color: Colors.white),
//                     ),
//                     SizedBox(width: 16),
//                     CircleAvatar(
//                       backgroundColor: Color.fromARGB(255, 227, 226, 226),
//                       child:
//                           FaIcon(FontAwesomeIcons.xTwitter, color: Colors.black),
//                     ),
//                     SizedBox(width: 16),
//                     CircleAvatar(
//                       backgroundColor: Color(0xFF3b5998),
//                       child:
//                           FaIcon(FontAwesomeIcons.facebookF, color: Colors.white),
//                     ),
//                   ],
//                 ),
        
//                 const SizedBox(height: 20),
        
//                 // Already have account? Login
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     const Text("Already have account ? "),
//                     GestureDetector(
//                       onTap: () {
//                         Navigator.push(
//                             context,
//                             MaterialPageRoute(
//                                 builder: (_) => const LoginScreen()));
//                       },
//                       child: const Text(
//                         "Login",
//                         style: TextStyle(
//                           color: Color(0xFF22577A),
//                           fontWeight: FontWeight.bold,
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
        
//                 const SizedBox(height: 24),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }


















import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:poster_maker/views/auth/login_screen.dart';
import 'package:poster_maker/views/auth/sample_screen.dart';
import 'package:poster_maker/views/home/navbar_screen.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  bool _obscurePassword = true;
  bool _obscureConfirmPassword = true;

  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final phoneController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background split colors
          Column(
            children: [
              Expanded(
                flex: 2,
                child: Container(color: const Color(0xFF22577A)), // Top blue
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
                child: Column(
                  children: [
                    Image.asset(
                      'lib/assets/loginimages.png',
                      height: 160,
                    ),
                    const SizedBox(height: 30),

                    // Full Name
                    TextField(
                      controller: nameController,
                      decoration: InputDecoration(
                        labelText: 'Full Name',
                        hintText: 'Tommy',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                        contentPadding:
                            const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
                      ),
                    ),

                    const SizedBox(height: 16),

                    // Email
                    TextField(
                      controller: emailController,
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        labelText: 'E-Mail',
                        hintText: 'Tommy@gmail.com',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                        contentPadding:
                            const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
                      ),
                    ),

                    const SizedBox(height: 16),

                    // Phone Number
                    TextField(
                      controller: phoneController,
                      keyboardType: TextInputType.phone,
                      decoration: InputDecoration(
                        labelText: 'Phone Number',
                        hintText: '1234567890',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                        contentPadding:
                            const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
                      ),
                    ),

                    const SizedBox(height: 16),

                    // Password
                    TextField(
                      controller: passwordController,
                      obscureText: _obscurePassword,
                      decoration: InputDecoration(
                        labelText: 'Password',
                        hintText: 'Password',
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
                        ),
                        contentPadding:
                            const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
                      ),
                    ),

                    const SizedBox(height: 16),

                    // Confirm Password
                    TextField(
                      controller: confirmPasswordController,
                      obscureText: _obscureConfirmPassword,
                      decoration: InputDecoration(
                        labelText: 'Confirm Password',
                        hintText: 'Confirm password',
                        suffixIcon: IconButton(
                          icon: Icon(_obscureConfirmPassword
                              ? Icons.visibility_off
                              : Icons.visibility),
                          onPressed: () {
                            setState(() {
                              _obscureConfirmPassword = !_obscureConfirmPassword;
                            });
                          },
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                        contentPadding:
                            const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
                      ),
                    ),

                    const SizedBox(height: 20),

                    // Continue Button
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (_) => const NavbarScreen()));
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xFF22577A),
                          padding: const EdgeInsets.symmetric(vertical: 14),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                        child: const Text(
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
                          backgroundColor: Color.fromARGB(255, 227, 226, 226),
                          backgroundImage: NetworkImage(
                              'https://upload.wikimedia.org/wikipedia/commons/thumb/c/c1/Google_%22G%22_logo.svg/768px-Google_%22G%22_logo.svg.png'),
                        ),
                        SizedBox(width: 16),
                        CircleAvatar(
                          radius: 13,
                          backgroundColor: Color.fromARGB(255, 255, 255, 255),
                          child: FaIcon(FontAwesomeIcons.xTwitter,
                              color: Colors.black),
                        ),
                        SizedBox(width: 16),
                        CircleAvatar(
                          radius: 13,
                          backgroundColor: Color.fromARGB(255, 255, 255, 255),
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
                                    builder: (_) => const SampleScreen()));
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
        ],
      ),
    );
  }
}
