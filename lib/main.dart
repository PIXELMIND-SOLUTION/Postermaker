// import 'package:flutter/material.dart';
// import 'package:poster_maker/views/splash/splash_screen.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

 
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Poster Maker',
//       theme: ThemeData(
//         colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
//         useMaterial3: true,
        
//       ),
//       debugShowCheckedModeBanner: false,
//       home: const SplashScreen(),
//     );
//   }
// }



import 'package:flutter/material.dart';
import 'package:poster_maker/views/provider/category_provider.dart';
import 'package:poster_maker/views/provider/date_provider.dart';
import 'package:poster_maker/views/provider/forgot_password_provider.dart';
import 'package:poster_maker/views/provider/job_service_provider.dart';
import 'package:poster_maker/views/provider/login_provider.dart';
import 'package:poster_maker/views/provider/navbar_provider.dart';
import 'package:poster_maker/views/provider/registration_provider.dart';
import 'package:poster_maker/views/provider/verify_otp_provider.dart';
import 'package:provider/provider.dart';
import 'package:poster_maker/views/splash/splash_screen.dart';
// adjust path if needed

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => BottomNavbarProvider()),
        ChangeNotifierProvider(create: (_)=>RegistrationProvider()),
        ChangeNotifierProvider(create: (_)=>VerifyOtpProvider()),
        ChangeNotifierProvider(create: (_)=>LoginProvider()),
        ChangeNotifierProvider(create: (_)=>ForgotPasswordProvider()),
        ChangeNotifierProvider(create: (_)=>CategoryProvider()),
        ChangeNotifierProvider(create: (_)=>DateProvider()),
        ChangeNotifierProvider(create: (_)=>JobProvider())
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Poster Maker',
      theme: ThemeData(
          scaffoldBackgroundColor: Colors.white,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      home: const SplashScreen(),
    );
  }
}

