
// import 'package:flutter/material.dart';

// class ForgotPasswordScreen extends StatefulWidget {
//   const ForgotPasswordScreen({super.key});

//   @override
//   State<ForgotPasswordScreen> createState() => _ForgotPasswordScreenState();
// }

// class _ForgotPasswordScreenState extends State<ForgotPasswordScreen> {
//   bool _obscurePassword = true;
//   bool _obscureconfirmPassword = true;
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: PreferredSize(
//         preferredSize: const Size.fromHeight(80),
//         child: AppBar(
//           backgroundColor: const Color(0xFF22577A),
//           elevation: 0,
//           automaticallyImplyLeading: false,
//         ),
//       ),
//       body: SingleChildScrollView(
//         // makes the screen scrollable
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
         
//             const SizedBox(height: 16),
//             Padding(
//               padding: const EdgeInsets.all(8.0),
//               child: const Text(
//                 'Forgot Password',
//                 style: TextStyle(fontWeight: FontWeight.bold, fontSize: 28),
//               ),
//             ),
//             const SizedBox(height: 16),
//             Center(
//               child:
//                   Image.asset('lib/assets/forgotpassword.png', height: 150),
//             ),
//             const SizedBox(height: 80),
//             Padding(
//               padding: const EdgeInsets.all(8.0),
//               child: TextFormField(
//                 decoration: InputDecoration(
//                   border:const OutlineInputBorder(),
//                   labelText: 'New Password',
//                   hintText: 'Enter new password',
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
//                 ),
//               ),
//             ),
//             const SizedBox(height: 15),
//             Padding(
//               padding: const EdgeInsets.all(8.0),
//               child: TextFormField(
//                 decoration: InputDecoration(
//                   border: OutlineInputBorder(),
//                   labelText: 'Confirm Password',
//                   hintText: 'Re-enter password',
//                   suffixIcon: IconButton(
//                     icon: Icon(
//                       _obscureconfirmPassword
//                           ? Icons.visibility_off
//                           : Icons.visibility,
//                     ),
//                     onPressed: () {
//                       setState(() {
//                       _obscureconfirmPassword =!_obscureconfirmPassword;
//                       });
//                     },
//                   ),
//                 ),
//               ),
//             ),
//             const SizedBox(height: 20),
//             // SizedBox(
//             //   width: double.infinity,
//             //   child: ElevatedButton(
//             //     onPressed: () {
               
//             //     },
//             //     style: ElevatedButton.styleFrom(
//             //       backgroundColor: const Color(0xFF22577A),
//             //       padding: const EdgeInsets.symmetric(vertical: 14),
//             //     ),
//             //     child: const Text("Continue",
//             //         style: TextStyle(color: Colors.white)),
//             //   ),
//             // ),
//             Padding(
//               padding: const EdgeInsets.all(8.0),
//               child: SizedBox(
//                         width: double.infinity,
//                         child: ElevatedButton(
//               onPressed: () {
                        
//               },
//               style: ElevatedButton.styleFrom(
//                 backgroundColor: const Color(0xFF22577A),
//                 padding: const EdgeInsets.symmetric(vertical: 16),
//                 elevation: 4,
//                 shadowColor: Colors.black45,
//                 shape:  RoundedRectangleBorder(
//                   borderRadius: BorderRadius.circular(15)
//                 ), // No border radius
//                 textStyle: const TextStyle(
//                   fontSize: 16,
//                   fontWeight: FontWeight.w600,
//                 ),
//               ),
//               child: const Text(
//                 "Continue",
//                 style: TextStyle(
//                   color: Colors.white,
//                   letterSpacing: 0.5,
//                 ),
//               ),
//                         ),
//                       ),
//             ),
//             const SizedBox(height: 10),
//             Center(
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   const Text("Don't have an account?"),
//                   TextButton(
//                     onPressed: () {
//                       // Navigate to Register Screen
//                     },
//                     child: const Text(
//                       'Register',
//                       style: TextStyle(color: Color(0xFF22577A)),
//                     ),
//                   ),
//                 ],
//               ),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }




















import 'package:flutter/material.dart';
import 'package:poster_maker/views/auth/signup_screen.dart';

class ForgotPasswordScreen extends StatefulWidget {
  const ForgotPasswordScreen({super.key});

  @override
  State<ForgotPasswordScreen> createState() => _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState extends State<ForgotPasswordScreen> {
  bool _obscurePassword = true;
  bool _obscureConfirmPassword = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background split
          Column(
            children: [
              Expanded(
                flex: 2,
                child: Container(color: const Color(0xFF22577A)),
              ),
              Expanded(
                flex: 3,
                child: Container(color: Colors.white),
              ),
            ],
          ),

          // Foreground scrollable content
          SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.only(top: 60),
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
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Center(
                      child: Text(
                        'Forgot Password',
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 26),
                      ),
                    ),
                    const SizedBox(height: 20),
                    Center(
                      child: Image.asset(
                        'lib/assets/forgotpassword.png',
                        height: 150,
                      ),
                    ),
                    const SizedBox(height:150),

                    // New Password
                    TextFormField(
                      obscureText: _obscurePassword,
                      decoration: InputDecoration(
                        labelText: 'New Password',
                        hintText: 'Enter new password',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                        contentPadding:
                            const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
                        suffixIcon: IconButton(
                          icon: Icon(
                            _obscurePassword ? Icons.visibility_off : Icons.visibility,
                          ),
                          onPressed: () {
                            setState(() {
                              _obscurePassword = !_obscurePassword;
                            });
                          },
                        ),
                      ),
                    ),
                    const SizedBox(height: 16),

                    // Confirm Password
                    TextFormField(
                      obscureText: _obscureConfirmPassword,
                      decoration: InputDecoration(
                        labelText: 'Confirm Password',
                        hintText: 'Re-enter password',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                        contentPadding:
                            const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
                        suffixIcon: IconButton(
                          icon: Icon(
                            _obscureConfirmPassword
                                ? Icons.visibility_off
                                : Icons.visibility,
                          ),
                          onPressed: () {
                            setState(() {
                              _obscureConfirmPassword = !_obscureConfirmPassword;
                            });
                          },
                        ),
                      ),
                    ),
                    const SizedBox(height: 24),

                    // Continue Button
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () {
                          // Reset password logic
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xFF22577A),
                          padding: const EdgeInsets.symmetric(vertical: 16),
                          elevation: 4,
                          shadowColor: Colors.black45,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                        child: const Text(
                          "Continue",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                            letterSpacing: 0.5,
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),

                    // Register
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text("Don't have an account?"),
                        TextButton(
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>SignupScreen()));
                          },
                          child: const Text(
                            'Register',
                            style: TextStyle(color: Color(0xFF22577A)),
                          ),
                        ),
                      ],
                    ),
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
