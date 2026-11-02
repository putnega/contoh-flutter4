import 'package:flutter/material.dart';
import 'profile.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Pintu Masuk Kasir')),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          spacing: 16.0,
          children: [
            TextField(
              controller: emailController,
              decoration: const InputDecoration(labelText: 'Nama Kasir'),
            ),
            TextField(
              controller: passwordController,
              decoration: const InputDecoration(labelText: 'Kode Kasir'),
              obscureText: true,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute<void>(
                    builder: (_) => ProfilePage(
                      namaKasir: emailController.text,
                      kodeKasir: passwordController.text,
                    ),
                  ),
                );
              },
              child: const Text('Klik Masuk'),
            ),
          ],
        ),
      ),
    );
  }
}

      