// import 'package:flutter/material.dart';

// class ForgotPasswordScreen extends StatelessWidget {
//   const ForgotPasswordScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Column(
//         children: [
//           Image.asset('lib/assets/loginpageimage.png'),
//           const SizedBox(
//             height: 16,
//           ),
//           const Padding(
//             padding: EdgeInsets.all(10.0),
//             child: Row(
//               children: [
//                 Text(
//                   'Forgot Password',
//                   style: TextStyle(fontWeight: FontWeight.bold, fontSize: 28),
//                 ),

//               ],
//             ),

//           ),
//            Padding(
//              padding: const EdgeInsets.all(8.0),
//              child: Row(
//                     children: [
//                       Image(image: AssetImage('lib/assets/forgotpassword.png'))
//                     ],
//                   ),
//            ),
//            Column(
//             children: [
//                Row(
//             children: [
//               TextFormField(
//                 decoration: InputDecoration(
//                   border: OutlineInputBorder(

//                   ),
//                   labelText: 'Password',
//                   hintText: 'Password'
//                 ),
//               ),
//                TextFormField(
//                 decoration: InputDecoration(
//                   border: OutlineInputBorder(

//                   ),
//                   labelText: 'Password',
//                   hintText: 'Password'
//                 ),
//               )
//             ],
//            )
//             ],
//            )

//         ],
//       ),

//     );
//   }
// }

import 'package:flutter/material.dart';

class ForgotPasswordScreen extends StatefulWidget {
  const ForgotPasswordScreen({super.key});

  @override
  State<ForgotPasswordScreen> createState() => _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState extends State<ForgotPasswordScreen> {
  bool _obscurePassword = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        // makes the screen scrollable
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset('lib/assets/loginpageimage.png'),
            const SizedBox(height: 16),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: const Text(
                'Forgot Password',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 28),
              ),
            ),
            const SizedBox(height: 16),
            Center(
              child:
                  Image.asset('lib/assets/forgotpassword.png', height: 150),
            ),
            const SizedBox(height: 80),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                decoration: InputDecoration(
                  border:const OutlineInputBorder(),
                  labelText: 'New Password',
                  hintText: 'Enter new password',
                  suffixIcon: IconButton(
                    icon: Icon(
                      _obscurePassword
                          ? Icons.visibility_off
                          : Icons.visibility,
                    ),
                    onPressed: () {
                      setState(() {
                        _obscurePassword = !_obscurePassword;
                      });
                    },
                  ),
                ),
              ),
            ),
            const SizedBox(height: 15),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Confirm Password',
                  hintText: 'Re-enter password',
                  suffixIcon: IconButton(
                    icon: Icon(
                      _obscurePassword
                          ? Icons.visibility_off
                          : Icons.visibility,
                    ),
                    onPressed: () {
                      setState(() {
                        _obscurePassword = !_obscurePassword;
                      });
                    },
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            // SizedBox(
            //   width: double.infinity,
            //   child: ElevatedButton(
            //     onPressed: () {
               
            //     },
            //     style: ElevatedButton.styleFrom(
            //       backgroundColor: const Color(0xFF22577A),
            //       padding: const EdgeInsets.symmetric(vertical: 14),
            //     ),
            //     child: const Text("Continue",
            //         style: TextStyle(color: Colors.white)),
            //   ),
            // ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
              onPressed: () {
                        
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFF22577A),
                padding: const EdgeInsets.symmetric(vertical: 16),
                elevation: 4,
                shadowColor: Colors.black45,
                shape:  RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15)
                ), // No border radius
                textStyle: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
              child: const Text(
                "Continue",
                style: TextStyle(
                  color: Colors.white,
                  letterSpacing: 0.5,
                ),
              ),
                        ),
                      ),
            ),
            const SizedBox(height: 10),
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Don't have an account?"),
                  TextButton(
                    onPressed: () {
                      // Navigate to Register Screen
                    },
                    child: const Text(
                      'Register',
                      style: TextStyle(color: Color(0xFF22577A)),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
