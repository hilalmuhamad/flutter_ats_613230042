import 'package:flutter/material.dart';

class ThankYouPage extends StatelessWidget {
  final String nama;
  const ThankYouPage({super.key, required this.nama});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Halaman Terima Kasih')),
      body: Center(
        child: AnimatedOpacity(
          opacity: 1.0,
          duration: const Duration(milliseconds: 800),
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Text(
              'Terima kasih telah mengisi form, $nama!',
              style: const TextStyle(fontSize: 20),
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ),
    );
  }
}