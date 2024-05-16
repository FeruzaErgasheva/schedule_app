import 'package:flutter/material.dart';
import 'package:lesson36_homework/pages/main_pages/first_page.dart';
import 'package:lesson36_homework/pages/main_pages/start_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: StartPage(),
      // home: FirstPage(),
    );
  }
}
