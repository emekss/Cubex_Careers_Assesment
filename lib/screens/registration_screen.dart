import 'package:cubex_careers/components/sign_up_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:http/http.dart';

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
  late List<Animation<Offset>> textFieldAnimation = [];

  @override
  void initState() {
    super.initState();
    controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 5),
    );

    slideTransition =
        Tween(begin: const Offset(-1, 1), end: Offset.zero).animate(controller);

    controller.forward();
  }

  void signUp(String username, email, password, phoneNumber, address) async {
    try {
      Response response =
          await post(Uri.parse('https://stacked.com.ng/api/register'), body: {
        'username': username,
        'email': email,
        'password': password,
        'phoneNumber': phoneNumber,
        'address': address,
      });
      if (response.statusCode == 201) {
        print('account created');
      } else {
        print('failed');
      }
    } catch (e) {
      print(e.toString());
    }
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
              child: GestureDetector(
                onTap: () {
                  signUp(
                    userNameController.text.toString(),
                    emailController.text.toString(),
                    passwordController.text.toString(),
                    phoneNumberController.text.toString(),
                    addressController.text.toString(),
                  );
                },
                child: const SignUpButton(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
