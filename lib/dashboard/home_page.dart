import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _formKey = GlobalKey<FormState>();
  final _namaController = TextEditingController();
  final _emailController = TextEditingController();

  void _submitForm() {
    if (_formKey.currentState!.validate()) {
      final nama = _namaController.text.trim();
      final email = _emailController.text.trim();

      showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: const Text('Informasi Pengguna'),
          content: Text("Halo, $nama! Email Anda adalah $email."),
          actions: [
            TextButton(
              child: const Text('OK'),
              onPressed: () {
                Navigator.of(context).pop(); // Tutup dialog
                // Navigasi ke halaman thank you
                Navigator.pushNamed(
                  context,
                  '/thankyou',
                  arguments: nama, // Kirim nama pengguna ke halaman berikutnya
                );
              },
            ),
          ],
        ),
      );
    }
  }

  @override
  void dispose() {
    _namaController.dispose();
    _emailController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Praktikum'),
        centerTitle: true,
      ),
      body: LayoutBuilder(
        builder: (context, constraints) {
          bool isWide = constraints.maxWidth >= 600;

          return SingleChildScrollView(
            padding: const EdgeInsets.all(16.0),
            child: Form(
              key: _formKey,
              child: Column(
                children: [
                  isWide
                      ? Row(
                          children: [
                            Expanded(child: _buildNamaField()),
                            const SizedBox(width: 16),
                            Expanded(child: _buildEmailField()),
                          ],
                        )
                      : Column(
                          children: [
                            _buildNamaField(),
                            const SizedBox(height: 16),
                            _buildEmailField(),
                          ],
                        ),
                  const SizedBox(height: 24),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.symmetric(vertical: 14),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                      onPressed: _submitForm,
                      child: const Text('Submit'),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  Widget _buildNamaField() {
    return TextFormField(
      controller: _namaController,
      decoration: const InputDecoration(labelText: 'Nama'),
      validator: (value) {
        if (value == null || value.trim().isEmpty) {
          return 'Nama tidak boleh kosong';
        }
        return null;
      },
    );
  }

  Widget _buildEmailField() {
    return TextFormField(
      controller: _emailController,
      decoration: const InputDecoration(labelText: 'Email'),
      keyboardType: TextInputType.emailAddress,
      validator: (value) {
        if (value == null || value.trim().isEmpty) {
          return 'Email tidak boleh kosong';
        } else if (!value.contains('@') || !value.contains('.')) {
          return 'Format email tidak valid';
        }
        return null;
      },
    );
  }
}