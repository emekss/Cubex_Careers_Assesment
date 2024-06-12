import 'package:cubex_careers/screens/login_screen.dart';
import 'package:cubex_careers/screens/profile_screen.dart';
import 'package:cubex_careers/screens/registration_screen.dart';
import 'package:cubex_careers/screens/welcome_screen.dart';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const WelcomeScreen(),
      routes: {
        'Loginscreen': (context) => const LoginScreen(),
        'Registrationscreen': (context) => const RegistrationScreen(),
        'Profilescreen': (context) => const ProfileScreen(),
      },
    );
  }
}
