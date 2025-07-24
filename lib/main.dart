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
import 'package:poster_maker/views/provider/navbar_provider.dart';
import 'package:provider/provider.dart';
import 'package:poster_maker/views/splash/splash_screen.dart';
// adjust path if needed

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => BottomNavbarProvider()),
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

