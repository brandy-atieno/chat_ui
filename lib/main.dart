import 'package:flutter/material.dart';
import 'package:flutter_refresh_app/screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Refresh',
      theme: ThemeData(
        primaryColor: const Color.fromARGB(211, 1, 176, 189),
      ),
      home: const HomeScreen(),
    );
  }
}

