import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({
    super.key,
    required this.namaKasir,
    required this.kodeKasir,
  });

  final String namaKasir;
  final String kodeKasir;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Halaman Utama',
          style: TextStyle(color: Colors.white, backgroundColor: Color.fromARGB(255, 6, 26, 209)),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          spacing: 18.0,
          children: [
            Text('SELAMAT DATANG DI APLIKASI KASIR '),
            Text('$namaKasir $kodeKasir'),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('Kembali ke Pintu Masuk Kasir'),
            ),
          ],
        ),
      ),
    );
  }
}
    