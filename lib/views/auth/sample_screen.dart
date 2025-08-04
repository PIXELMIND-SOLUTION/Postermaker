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



















import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:poster_maker/views/auth/forgot_password_screen.dart';
import 'package:poster_maker/views/auth/otp_screen.dart';
import 'package:poster_maker/views/auth/signup_screen.dart';

class SampleScreen extends StatefulWidget {
  const SampleScreen({super.key});

  @override
  State<SampleScreen> createState() => _SampleScreenState();
}

class _SampleScreenState extends State<SampleScreen> {
  bool _obscureText = true;

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
                    TextField(
                      keyboardType: TextInputType.phone,
                      decoration: InputDecoration(
                        hintText: "Enter your Mobile Number",
                        contentPadding:
                            const EdgeInsets.symmetric(horizontal: 12, vertical: 14),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
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
                    TextField(
                      obscureText: _obscureText,
                      decoration: InputDecoration(
                        hintText: "Enter your password",
                        contentPadding:
                            const EdgeInsets.symmetric(horizontal: 12, vertical: 14),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
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
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>ForgotPasswordScreen()));
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

                    // Login Button
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xFF155489),
                          padding: const EdgeInsets.symmetric(vertical: 14),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>OtpScreen()));
                        },
                        child: const Text(
                          "Login",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),

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
                          backgroundImage: NetworkImage('https://t4.ftcdn.net/jpg/03/47/46/83/360_F_347468387_ngBE1hQcqRlRVh8d3UDi3YrKNnhfT6V7.jpg'),
                          // child: Icon(FontAwesomeIcons.google,
                          //     color: Colors.red, size: 18),
                        ),
                        SizedBox(width: 24),
                        CircleAvatar(
                          radius: 12,
                          backgroundColor: Color.fromARGB(255, 222, 219, 219),
                          backgroundImage: NetworkImage('https://static.dezeen.com/uploads/2023/07/x-logo-twitter-elon-musk_dezeen_2364_col_0-1.jpg'),
                          // child: Icon(FontAwesomeIcons.xTwitter,
                          //     color: Colors.black, size: 18),
                        ),
                        SizedBox(width: 24),
                        CircleAvatar(
                          radius: 12,
                          backgroundColor: Color.fromARGB(255, 232, 230, 230),
                          backgroundImage: NetworkImage('https://thumbs.dreamstime.com/b/facebook-logo-vector-eps-file-squared-coloured-easily-editable-have-white-background-high-resolution-255557233.jpg'),
                          
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
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>SignupScreen()));
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
        ],
      ),
    );
  }
}
