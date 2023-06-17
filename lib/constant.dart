import 'package:flutter/material.dart';
import 'package:matrimonial_story_app/pages/login_page.dart';
import 'package:matrimonial_story_app/pages/register_page.dart';

const Color myColor = Colors.black;
final Color myColorBackground = Colors.amber.shade100;

const TextStyle myTextStyle = TextStyle(
  color: myColor,
  fontSize: 18,
);
const TextStyle myTextStyleStory = TextStyle(
  color: myColor,
  fontSize: 14,
);

AlertDialog myAlert(context) => AlertDialog(
  backgroundColor: myColorBackground,
  title: const Text("Options",textAlign: TextAlign.center,),
  actionsOverflowAlignment: OverflowBarAlignment.center,
  
  actions: [
    SizedBox(
      width: double.infinity,
      child: TextButton(child: const Text("Login"), onPressed: (){Navigator.push(context, MaterialPageRoute(builder: ((context) => const LoginPage())));}),
    ),
    SizedBox(
      child: TextButton(child: const Text("Register"), onPressed: (){Navigator.push(context, MaterialPageRoute(builder: ((context) => const RegisterPage())));}),
    ),
    SizedBox(
      child: TextButton(child: const Text("Share Your Story"), onPressed: (){Navigator.push(context, MaterialPageRoute(builder: ((context) => const LoginPage())));}),
    ),
  ],
  );

  final textInputDecoration = InputDecoration(
  labelStyle: TextStyle(color: Colors.black, fontWeight: FontWeight.w300),
  filled: true,
  // fillColor: Colors.white.withOpacity(0.5),
  fillColor: Colors.yellow.shade200,
  focusedBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Colors.yellow, width: 2),
  ),
  enabledBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Colors.yellow, width: 2)
  ),
  errorBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Colors.red, width: 2)
  ),
);