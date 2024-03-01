// ignore_for_file: avoid_print

import 'package:flutter/material.dart';

class ShopOwnerRegistrationScreen extends StatelessWidget {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  ShopOwnerRegistrationScreen({super.key});

  void _submitForm() {

    String name = nameController.text;
    String email = emailController.text;
    String password = passwordController.text;

    // TODO: Perform registration logic (e.g., validate inputs, make API call, etc.)

    print('Name: $name');
    print('Email: $email');
    print('Password: $password');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Registration'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: nameController,
              decoration: const InputDecoration(
                labelText: 'Name',
                icon: Icon(Icons.person),
              ),
            ),
            const SizedBox(height: 16.0),
            TextField(
              controller: emailController,
              keyboardType: TextInputType.emailAddress,
              decoration: const InputDecoration(
                labelText: 'Email',
                icon: Icon(Icons.email),
              ),
            ),
            const SizedBox(height: 16.0),
            TextField(
              controller: passwordController,
              obscureText: true,
              decoration: const InputDecoration(
                labelText: 'Password',
                icon: Icon(Icons.lock),
              ),
            ),
            const SizedBox(height: 24.0),
            ElevatedButton(
              onPressed: _submitForm,
              child: const Text('Register'),
            ),
          ],
        ),
      ),
    );
  }
}

