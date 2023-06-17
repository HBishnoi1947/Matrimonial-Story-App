import 'package:flutter/material.dart';
import 'package:matrimonial_story_app/pages/home_page.dart';
import 'package:matrimonial_story_app/pages/spash_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.brown
      ),
      home: const SplashPage(),
    );
  }
}