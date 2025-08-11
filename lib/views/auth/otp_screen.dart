// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'package:poster_maker/views/home/navbar_screen.dart';

// class OtpScreen extends StatefulWidget {
//   const OtpScreen({super.key});

//   @override
//   State<OtpScreen> createState() => _OtpScreenState();
// }

// class _OtpScreenState extends State<OtpScreen> {
//   final List<TextEditingController> _controllers =
//       List.generate(4, (_) => TextEditingController());
//   final List<FocusNode> _focusNodes = List.generate(4, (_) => FocusNode());

//   @override
//   void dispose() {
//     for (var controller in _controllers) {
//       controller.dispose();
//     }
//     for (var focusNode in _focusNodes) {
//       focusNode.dispose();
//     }
//     super.dispose();
//   }

//   void _onChanged(String value, int index) {
//     if (value.isNotEmpty) {
//       if (index < 3) {
//         _focusNodes[index + 1].requestFocus();
//       } else {
//         _focusNodes[index].unfocus();
//       }
//     }
//   }

//   void _onBackspace(int index) {
//     if (index > 0) {
//       _controllers[index - 1].clear();
//       _focusNodes[index - 1].requestFocus();
//     }
//   }

//   String getOtpCode() {
//     return _controllers.map((controller) => controller.text).join();
//   }

//   void _resendOtp() {
//     // Implement resend OTP logic
//     ScaffoldMessenger.of(context).showSnackBar(
//       const SnackBar(content: Text('OTP resent successfully!')),
//     );
//   }

//   void _verifyOtp() {
//     String otpCode = getOtpCode();
//     if (otpCode.length == 4) {

//       Navigator.push(context, MaterialPageRoute(builder: (context)=>NavbarScreen()));
//       // Implement OTP verification logic
//       // print('OTP Code: $otpCode');
//       // ScaffoldMessenger.of(context).showSnackBar(
//       //   SnackBar(content: Text('Verifying OTP: $otpCode')),
//       // );
//     } else {
//       ScaffoldMessenger.of(context).showSnackBar(
//         const SnackBar(content: Text('Please enter complete OTP')),
//       );
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: PreferredSize(
//         preferredSize: const Size.fromHeight(80),
//         child: AppBar(
//           backgroundColor: const Color(0xFF22577A),
//           elevation: 0,
//           automaticallyImplyLeading: false,
//         ),
//       ),
//       body: Column(
//         children: [
          
//           Row(
//             children: [
//               SizedBox(
//                 width: 10,
//               ),
//               Text(
//                 'OTP Verification',
//                 style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
//               ),
//             ],
//           ),
//           SizedBox(
//             height: 20,
//           ),
//           Row(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
        
//               CircleAvatar(
//                 radius: 35,
//                 backgroundImage: AssetImage(
//                     'lib/assets/f641434d9033e72f032ba28554095623174e2a9c.png'),
//               ),
//             ],
//           ),
//           Text(
//               'We have send verification code to your \n     phone number at 9898989898'),
//           SizedBox(
//             height: 70,
//           ),
//           Row(
//             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//             children: List.generate(4, (index) {
//               return SizedBox(
//                 width: 60,
//                 height: 60,
//                 child: TextField(
//                   controller: _controllers[index],
//                   focusNode: _focusNodes[index],
//                   textAlign: TextAlign.center,
//                   style: const TextStyle(
//                     fontSize: 24,
//                     fontWeight: FontWeight.bold,
//                   ),
//                   keyboardType: TextInputType.number,
//                   maxLength: 1,
//                   decoration: InputDecoration(
//                     counterText: '',
//                     border: OutlineInputBorder(
//                       borderRadius: BorderRadius.circular(12),
//                       borderSide: const BorderSide(color: Colors.grey),
//                     ),
//                     focusedBorder: OutlineInputBorder(
//                       borderRadius: BorderRadius.circular(12),
//                       borderSide:
//                           const BorderSide(color: Colors.blue, width: 2),
//                     ),
//                     filled: true,
//                     fillColor: Colors.grey[50],
//                   ),
//                   inputFormatters: [
//                     FilteringTextInputFormatter.digitsOnly,
//                   ],
//                   onChanged: (value) => _onChanged(value, index),
//                   onTap: () {
//                     _controllers[index].selection = TextSelection.fromPosition(
//                       TextPosition(offset: _controllers[index].text.length),
//                     );
//                   },
//                   onSubmitted: (value) {
//                     if (value.isEmpty && index > 0) {
//                       _onBackspace(index);
//                     }
//                   },
//                 ),
//               );
//             }),
//           ),

//           const SizedBox(height: 30),

//           // Resend OTP
//           Center(
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 const Text(
//                   "Don't Receive code? ",
//                   style: TextStyle(color: Color.fromARGB(255, 32, 28, 28)),
//                 ),
//                 GestureDetector(
//                   onTap: _resendOtp,
//                   child: const Text(
//                     "Resend",
//                     style: TextStyle(
//                       color: Colors.blue,
//                       fontWeight: FontWeight.bold,
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           ),

//           const SizedBox(height: 100),

//           Padding(
//             padding: const EdgeInsets.all(8.0),
//             child: SizedBox(
//               width: double.infinity,
//               height: 50,
//               child: ElevatedButton(
//                 onPressed: _verifyOtp,
//                 style: ElevatedButton.styleFrom(
//                   backgroundColor:  const Color(0xFF155489),
//                   shape: RoundedRectangleBorder(
//                     borderRadius: BorderRadius.circular(12),
//                   ),
//                 ),
//                 child: const Text(
//                   'Verify',
//                   style: TextStyle(
//                     fontSize: 18,
//                     fontWeight: FontWeight.bold,
//                     color: Colors.white,
//                   ),
//                 ),
//               ),
//             ),
//           ),
//           SizedBox(height: 15,),
//           Center(
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 const Text(
//                   "Don't have account? ",
//                   style: TextStyle(color: Colors.black),
//                 ),
//                 GestureDetector(
//                   onTap: () {
//                     // Navigate to register screen
//                   },
//                   child: const Text(
//                     "Register",
//                     style: TextStyle(
//                       color: Colors.blue,
//                       fontWeight: FontWeight.bold,
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

















// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'package:poster_maker/views/auth/login_screen.dart';
// import 'package:poster_maker/views/home/navbar_screen.dart';
// import 'package:poster_maker/views/auth/signup_screen.dart';

// class OtpScreen extends StatefulWidget {
//   final String?token;
//   const OtpScreen({super.key,this.token});

//   @override
//   State<OtpScreen> createState() => _OtpScreenState();
// }

// class _OtpScreenState extends State<OtpScreen> {
//   final List<TextEditingController> _controllers =
//       List.generate(4, (_) => TextEditingController());
//   final List<FocusNode> _focusNodes = List.generate(4, (_) => FocusNode());

//   @override
//   void dispose() {
//     for (var controller in _controllers) {
//       controller.dispose();
//     }
//     for (var focusNode in _focusNodes) {
//       focusNode.dispose();
//     }
//     super.dispose();
//   }

//   void _onChanged(String value, int index) {
//     if (value.isNotEmpty) {
//       if (index < 3) {
//         _focusNodes[index + 1].requestFocus();
//       } else {
//         _focusNodes[index].unfocus();
//       }
//     }
//   }

//   void _onBackspace(int index) {
//     if (index > 0) {
//       _controllers[index - 1].clear();
//       _focusNodes[index - 1].requestFocus();
//     }
//   }

//   String getOtpCode() {
//     return _controllers.map((controller) => controller.text).join();
//   }

//   void _resendOtp() {
//     ScaffoldMessenger.of(context).showSnackBar(
//       const SnackBar(content: Text('OTP resent successfully!')),
//     );
//   }

//   void _verifyOtp() {
//     String otpCode = getOtpCode();
//     if (otpCode.length == 4) {
//       Navigator.push(
//         context,
//         MaterialPageRoute(builder: (context) => const LoginScreen()),
//       );
//     } else {
//       ScaffoldMessenger.of(context).showSnackBar(
//         const SnackBar(content: Text('Please enter complete OTP')),
//       );
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     print('yyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyy${widget.token}');
//     return Scaffold(
//       body: Stack(
//         children: [
//           // Background color split
//           Column(
//             children: [
//               Expanded(flex: 2, child: Container(color: const Color(0xFF22577A))),
//               Expanded(flex: 3, child: Container(color: Colors.white)),
//             ],
//           ),

//           // Foreground content
//           SingleChildScrollView(
//             child: Padding(
//               padding: const EdgeInsets.only(top: 60),
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
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     const Center(
//                       child: Text(
//                         'OTP Verification',
//                         style: TextStyle(
//                           fontWeight: FontWeight.bold,
//                           fontSize: 26,
//                         ),
//                       ),
//                     ),
//                     const SizedBox(height: 20),
//                     Center(
//                       child: CircleAvatar(
//                         radius: 35,
//                         backgroundImage: AssetImage(
//                             'lib/assets/f641434d9033e72f032ba28554095623174e2a9c.png'),
//                       ),
//                     ),
//                     const SizedBox(height: 20),
//                     const Center(
//                       child: Text(
//                         'We have sent a verification code to your\nphone number at 9898989898',
//                         textAlign: TextAlign.center,
//                         style: TextStyle(fontSize: 14, color: Colors.black87),
//                       ),
//                     ),
//                     const SizedBox(height: 40),

//                     // OTP Boxes
//                     Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                       children: List.generate(4, (index) {
//                         return SizedBox(
//                           width: 60,
//                           height: 60,
//                           child: TextField(
//                             controller: _controllers[index],
//                             focusNode: _focusNodes[index],
//                             textAlign: TextAlign.center,
//                             style: const TextStyle(
//                               fontSize: 24,
//                               fontWeight: FontWeight.bold,
//                             ),
//                             keyboardType: TextInputType.number,
//                             maxLength: 1,
//                             decoration: InputDecoration(
//                               counterText: '',
//                               border: OutlineInputBorder(
//                                 borderRadius: BorderRadius.circular(10),
//                                 borderSide: const BorderSide(color: Colors.grey),
//                               ),
//                               focusedBorder: OutlineInputBorder(
//                                 borderRadius: BorderRadius.circular(10),
//                                 borderSide: const BorderSide(color: Colors.blue, width: 2),
//                               ),
//                               filled: true,
//                               fillColor: Colors.grey[50],
//                             ),
//                             inputFormatters: [FilteringTextInputFormatter.digitsOnly],
//                             onChanged: (value) => _onChanged(value, index),
//                             onTap: () {
//                               _controllers[index].selection = TextSelection.fromPosition(
//                                 TextPosition(offset: _controllers[index].text.length),
//                               );
//                             },
//                             onSubmitted: (value) {
//                               if (value.isEmpty && index > 0) {
//                                 _onBackspace(index);
//                               }
//                             },
//                           ),
//                         );
//                       }),
//                     ),
//                     const SizedBox(height: 30),

//                     // Resend
//                     Row(
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       children: [
//                         const Text("Didn't receive code? "),
//                         GestureDetector(
//                           onTap: _resendOtp,
//                           child: const Text(
//                             "Resend",
//                             style: TextStyle(
//                               color: Colors.blue,
//                               fontWeight: FontWeight.bold,
//                             ),
//                           ),
//                         ),
//                       ],
//                     ),
//                     const SizedBox(height: 160),

//                     // Verify Button
//                     SizedBox(
//                       width: double.infinity,
//                       child: ElevatedButton(
//                         onPressed: _verifyOtp,
//                         style: ElevatedButton.styleFrom(
//                           backgroundColor: const Color(0xFF22577A),
//                           padding: const EdgeInsets.symmetric(vertical: 16),
//                           elevation: 4,
//                           shadowColor: Colors.black45,
//                           shape: RoundedRectangleBorder(
//                             borderRadius: BorderRadius.circular(12),
//                           ),
//                         ),
//                         child: const Text(
//                           "Verify",
//                           style: TextStyle(
//                             color: Colors.white,
//                             fontWeight: FontWeight.w600,
//                             letterSpacing: 0.5,
//                             fontSize: 16,
//                           ),
//                         ),
//                       ),
//                     ),
//                     const SizedBox(height: 20),

//                     // Register
//                     Row(
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       children: [
//                         const Text("Don't have an account? "),
//                         TextButton(
//                           onPressed: () {
//                             Navigator.push(context, MaterialPageRoute(
//                                 builder: (context) => const SignupScreen()));
//                           },
//                           child: const Text(
//                             'Register',
//                             style: TextStyle(color: Color(0xFF22577A)),
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
import 'package:flutter/services.dart';
import 'package:poster_maker/views/auth/sample_screen.dart';
import 'package:poster_maker/views/provider/verify_otp_provider.dart';
import 'package:provider/provider.dart';
import 'package:poster_maker/views/auth/login_screen.dart';
import 'package:poster_maker/views/home/navbar_screen.dart';
import 'package:poster_maker/views/auth/signup_screen.dart';


class OtpScreen extends StatefulWidget {
  final String? token;
  const OtpScreen({super.key, this.token});

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  final List<TextEditingController> _controllers =
      List.generate(4, (_) => TextEditingController());
  final List<FocusNode> _focusNodes = List.generate(4, (_) => FocusNode());

  @override
  void dispose() {
    for (var controller in _controllers) {
      controller.dispose();
    }
    for (var focusNode in _focusNodes) {
      focusNode.dispose();
    }
    super.dispose();
  }

  void _onChanged(String value, int index) {
    if (value.isNotEmpty) {
      if (index < 3) {
        _focusNodes[index + 1].requestFocus();
      } else {
        _focusNodes[index].unfocus();
      }
    }
  }

  void _onBackspace(int index) {
    if (index > 0) {
      _controllers[index - 1].clear();
      _focusNodes[index - 1].requestFocus();
    }
  }

  String getOtpCode() {
    return _controllers.map((controller) => controller.text).join();
  }

  void _resendOtp() async {
    final provider = Provider.of<VerifyOtpProvider>(context, listen: false);
    await provider.resendOtp();
    
    if (mounted) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text(provider.message)),
      );
    }
  }

  void _verifyOtp() async {
    String otpCode = getOtpCode();
    if (otpCode.length == 4) {
      final provider = Provider.of<VerifyOtpProvider>(context, listen: false);
      
      // Pass the token from widget if available
      await provider.verifyOtp(otpCode, token: widget.token);
      
      if (mounted) {
        if (provider.isSuccess) {
          // Navigate to the next screen on successful verification
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) => const SampleScreen()),
          );
        } else {
          // Show error message
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(provider.message),
              backgroundColor: Colors.red,
              duration: const Duration(seconds: 4),
            ),
          );
        }
      }
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Please enter complete OTP')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    print('yyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyy${widget.token}');
    return Scaffold(
      body: Stack(
        children: [
          // Background color split
          Column(
            children: [
              Expanded(flex: 2, child: Container(color: const Color(0xFF22577A))),
              Expanded(flex: 3, child: Container(color: Colors.white)),
            ],
          ),

          // Foreground content
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
                        'OTP Verification',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 26,
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    Center(
                      child: CircleAvatar(
                        radius: 35,
                        backgroundImage: AssetImage(
                            'lib/assets/f641434d9033e72f032ba28554095623174e2a9c.png'),
                      ),
                    ),
                    const SizedBox(height: 20),
                    const Center(
                      child: Text(
                        'We have sent a verification code to your\nphone number at 9898989898',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 14, color: Colors.black87),
                      ),
                    ),
                    const SizedBox(height: 40),

                    // OTP Boxes
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: List.generate(4, (index) {
                        return SizedBox(
                          width: 60,
                          height: 60,
                          child: TextField(
                            controller: _controllers[index],
                            focusNode: _focusNodes[index],
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                            ),
                            keyboardType: TextInputType.number,
                            maxLength: 1,
                            decoration: InputDecoration(
                              counterText: '',
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: const BorderSide(color: Colors.grey),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: const BorderSide(color: Colors.blue, width: 2),
                              ),
                              filled: true,
                              fillColor: Colors.grey[50],
                            ),
                            inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                            onChanged: (value) => _onChanged(value, index),
                            onTap: () {
                              _controllers[index].selection = TextSelection.fromPosition(
                                TextPosition(offset: _controllers[index].text.length),
                              );
                            },
                            onSubmitted: (value) {
                              if (value.isEmpty && index > 0) {
                                _onBackspace(index);
                              }
                            },
                          ),
                        );
                      }),
                    ),
                    const SizedBox(height: 30),

                    // Resend
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text("Didn't receive code? "),
                        Consumer<VerifyOtpProvider>(
                          builder: (context, provider, child) {
                            return GestureDetector(
                              onTap: provider.isResending ? null : _resendOtp,
                              child: Text(
                                provider.isResending ? "Sending..." : "Resend",
                                style: TextStyle(
                                  color: provider.isResending ? Colors.grey : Colors.blue,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            );
                          },
                        ),
                      ],
                    ),
                    const SizedBox(height: 160),

                    // Verify Button
                    Consumer<VerifyOtpProvider>(
                      builder: (context, provider, child) {
                        return SizedBox(
                          width: double.infinity,
                          child: ElevatedButton(
                            onPressed: provider.isLoading ? null : _verifyOtp,
                            style: ElevatedButton.styleFrom(
                              backgroundColor: const Color(0xFF22577A),
                              padding: const EdgeInsets.symmetric(vertical: 16),
                              elevation: 4,
                              shadowColor: Colors.black45,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12),
                              ),
                            ),
                            child: provider.isLoading
                                ? const SizedBox(
                                    height: 20,
                                    width: 20,
                                    child: CircularProgressIndicator(
                                      color: Colors.white,
                                      strokeWidth: 2,
                                    ),
                                  )
                                : const Text(
                                    "Verify",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w600,
                                      letterSpacing: 0.5,
                                      fontSize: 16,
                                    ),
                                  ),
                          ),
                        );
                      },
                    ),
                    const SizedBox(height: 20),

                    // Register
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text("Don't have an account? "),
                        TextButton(
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute(
                                builder: (context) => const SignupScreen()));
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