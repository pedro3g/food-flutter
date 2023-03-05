import 'package:flutter/material.dart';
import 'package:food/screens/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Food',
      theme: ThemeData(
        primarySwatch: Colors.grey,
      ),
      home: const Home(),
    );
  }
}
