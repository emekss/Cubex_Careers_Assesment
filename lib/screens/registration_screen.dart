import 'dart:io';
import 'package:cubex_careers/components/sign_up_button.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class RegistrationScreen extends StatefulWidget {
  const RegistrationScreen({super.key});

  @override
  State<RegistrationScreen> createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  File? _image;

  Future getImage(ImageSource source) async {
    final image = await ImagePicker().pickImage(source: source);

    if (image == null) return print('No image selected');

    final imageTemporary = File(image.path);

    setState(() {
      _image = imageTemporary;
    });
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
            Center(
              child: GestureDetector(
                onTap: () {
                  getImage(ImageSource.gallery);
                },
                child: Container(
                  height: 50,
                  width: 170,
                  decoration: BoxDecoration(
                    color: Colors.green.shade800,
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: const Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Icon(
                        Icons.add_a_photo_rounded,
                        color: Colors.white,
                      ),
                      Text(
                        'add photo',
                        style: TextStyle(
                          fontSize: 17,
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
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
