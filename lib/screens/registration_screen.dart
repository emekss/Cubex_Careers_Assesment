import 'package:cubex_careers/components/add_photo_button.dart';
import 'package:cubex_careers/components/sign_up_button.dart';
import 'package:flutter/material.dart';

class RegistrationScreen extends StatefulWidget {
  const RegistrationScreen({super.key});

  @override
  State<RegistrationScreen> createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
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
            const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Username',
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 18),
                ),
                TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Enter username',
                    hintStyle: TextStyle(color: Colors.grey),
                  ),
                ),
                SizedBox(height: 20),
                Text(
                  'Email',
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 18),
                ),
                TextField(
                  decoration: InputDecoration(
                    fillColor: Colors.lightGreen,
                    border: OutlineInputBorder(),
                    hintText: 'Enter email',
                    suffixIcon: Icon(Icons.remove_red_eye_rounded),
                  ),
                ),
                SizedBox(height: 20),
                Text(
                  'Password',
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 18),
                ),
                TextField(
                  decoration: InputDecoration(
                    fillColor: Colors.lightGreen,
                    border: OutlineInputBorder(),
                    hintText: 'Enter password',
                    suffixIcon: Icon(Icons.remove_red_eye_rounded),
                  ),
                ),
                SizedBox(height: 20),
                Text(
                  'Phone Number',
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 18),
                ),
                TextField(
                  decoration: InputDecoration(
                    fillColor: Colors.lightGreen,
                    border: OutlineInputBorder(),
                    hintText: 'Enter phone number',
                    suffixIcon: Icon(Icons.remove_red_eye_rounded),
                  ),
                ),
                SizedBox(height: 20),
                Text(
                  'Address',
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 18),
                ),
                TextField(
                  decoration: InputDecoration(
                    fillColor: Colors.lightGreen,
                    border: OutlineInputBorder(),
                    hintText: 'Enter address',
                    suffixIcon: Icon(Icons.remove_red_eye_rounded),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            const Center(
              child: AddPhotoButton(),
            ),
            const SizedBox(height: 10),
            const Center(
              child: SignUpButton(),
            ),
          ],
        ),
      ),
    );
  }
}
