// OPay App Configuration
// This file defines the global MaterialApp configuration including theme,
// font setup, and the home screen for the OPay UI clone.

import 'package:flutter/material.dart';
import 'pages/opay_home_page.dart';

class OPayApp extends StatelessWidget {
  const OPayApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'OPay',
      theme: ThemeData(
        fontFamily: 'Roboto',
        scaffoldBackgroundColor: const Color(0xFFF5F7FA),
      ),
      home: const OPayHomePage(),
    );
  }
}
