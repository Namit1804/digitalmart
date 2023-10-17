import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class CreateAccountPage extends StatelessWidget {
  const CreateAccountPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: const Text('Create Account'),
      ),
      body: SingleChildScrollView(
        child: Container(
          color: Colors.white,
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              // First Name and Last Name Row
              Row(
                children: [
                  Expanded(
                    child: TextFormField(
                      decoration:
                          const InputDecoration(labelText: 'First Name'),
                    ),
                  ),
                  const SizedBox(width: 16.0),
                  Expanded(
                    child: TextFormField(
                      decoration: const InputDecoration(labelText: 'Last Name'),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 16.0),

              // Date of Birth Field
              TextFormField(
                decoration: const InputDecoration(labelText: 'Date of Birth'),
              ),
              const SizedBox(height: 16.0),

              // Email Field
              TextFormField(
                decoration: const InputDecoration(labelText: 'Email'),
              ),
              const SizedBox(height: 16.0),

              // Phone Number Field
              TextFormField(
                decoration: const InputDecoration(labelText: 'Phone Number'),
              ),
              const SizedBox(height: 16.0),

              // Password Field
              TextFormField(
                obscureText: true,
                decoration: const InputDecoration(labelText: 'Password'),
              ),
              const SizedBox(height: 16.0),

              // Business Name Field
              TextFormField(
                decoration: const InputDecoration(labelText: 'Business Name'),
              ),
              const SizedBox(height: 16.0),

              // Business Type Field
              TextFormField(
                decoration: const InputDecoration(labelText: 'Business Type'),
              ),
              const SizedBox(height: 16.0),

              // Sign Up Button
              ElevatedButton(
                onPressed: () async {
                  await FirebaseAuth.instance.createUserWithEmailAndPassword(
                    email: 'jainnamit510@gmail.com',
                    password: 'namit123',
                  );
                  // if (creds.user?.uid == null) {
                  //   ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                  //     content: Text('Invalid'),
                  //   ));
                  // } else {}
                  // Navigator.push(
                  //     context,
                  //     MaterialPageRoute(
                  //         builder: (context) => const MyHomePage()));
                  // // Handle sign-up logic here
                },
                child: const Text('Sign Up'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
