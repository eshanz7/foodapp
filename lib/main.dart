import 'package:flutter/material.dart';
import 'package:foodapp/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Food App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Unbounded',
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
    );
  }
}