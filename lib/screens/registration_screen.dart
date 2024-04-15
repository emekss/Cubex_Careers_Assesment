import 'package:cubex_careers/components/sign_up_button.dart';
import 'package:flutter/material.dart';

class RegistrationScreen extends StatefulWidget {
  const RegistrationScreen({super.key});

  @override
  State<RegistrationScreen> createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen>
    with SingleTickerProviderStateMixin {
  TextEditingController userNameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController addressController = TextEditingController();
  TextEditingController phoneNumberController = TextEditingController();

  late AnimationController controller;
  late Animation<Offset> slideTransition;
  late Animation<double> signUpButtonAnimation;

  @override
  void initState() {
    super.initState();
    controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    );

    slideTransition =
        Tween(begin: const Offset(-1, 0), end: Offset.zero).animate(controller);

    signUpButtonAnimation = Tween<double>(begin: 0, end: 1).animate(controller);

    controller.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Column(
                children: [
                  Text(
                    'CUBEX CAREERS',
                    style: TextStyle(
                      color: Colors.green.shade800,
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Text(
                    'Welcome to Cubex Careers, Create your account to start your journey',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.bold,
                        fontSize: 15),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10),
            SlideTransition(
              position: slideTransition,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Username',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 18),
                  ),
                  TextField(
                    controller: userNameController,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Enter username',
                      hintStyle: TextStyle(color: Colors.grey),
                    ),
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    'Email',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 18),
                  ),
                  TextField(
                    controller: emailController,
                    decoration: const InputDecoration(
                      fillColor: Colors.lightGreen,
                      border: OutlineInputBorder(),
                      hintText: 'Enter email',
                    ),
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    'Password',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 18),
                  ),
                  TextField(
                    controller: passwordController,
                    decoration: const InputDecoration(
                      fillColor: Colors.lightGreen,
                      border: OutlineInputBorder(),
                      hintText: 'Enter password',
                      suffixIcon: Icon(Icons.remove_red_eye_rounded),
                    ),
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    'Phone Number',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 18),
                  ),
                  TextField(
                    controller: phoneNumberController,
                    decoration: const InputDecoration(
                      fillColor: Colors.lightGreen,
                      border: OutlineInputBorder(),
                      hintText: 'Enter phone number',
                    ),
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    'Address',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 18),
                  ),
                  TextField(
                    controller: addressController,
                    decoration: const InputDecoration(
                      fillColor: Colors.lightGreen,
                      border: OutlineInputBorder(),
                      hintText: 'Enter address',
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10),
            const SizedBox(height: 10),
            Center(
              child: FadeTransition(
                opacity: signUpButtonAnimation,
                child: const SignUpButton(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
