// ignore: file_names

import 'package:cs_ai/lock_page.dart';
import 'package:cs_ai/matrial.dart';
import 'package:flutter/material.dart';

// ignore: camel_case_types
class Home_page extends StatefulWidget {
  const Home_page({super.key});

  @override
  State<Home_page> createState() => _Home_pageState();
}

// ignore: camel_case_types
class _Home_pageState extends State<Home_page> {
  // ignore: non_constant_identifier_names
  Widget? Matrial_pages;

  @override
  void initState() {
    super.initState();
    Matrial_pages = Lock_Page(Martial_page);
  }

  // ignore: non_constant_identifier_names
  void Martial_page() {
    setState(() {
      Matrial_pages = Matrial();
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Color(0xFF0A0F1E),
                Color(0xFF1B3B6F),
                Color(0xFF4BB3FD),
                Color(0xFF23D5AB),
                Color(0xFFFFA726),
              ],
              stops: [0.1, 0.3, 0.5, 0.8, 1.0],
            ),
          ),
          child: Matrial_pages,
        ),
      ),
    );
  }
}
