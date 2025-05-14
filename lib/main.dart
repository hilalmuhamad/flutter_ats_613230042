import 'package:flutter/material.dart';
import 'package:flutter_ats/dashboard/home_page.dart';
import 'package:flutter_ats/dashboard/thank_you.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter ATS',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        useMaterial3: true,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const HomePage(),
        '/thankyou': (context) {
          final args = ModalRoute.of(context)?.settings.arguments as String?;
          return ThankYouPage(nama: args ?? '');
        },
      },
      debugShowCheckedModeBanner: false,
    );
  }
}