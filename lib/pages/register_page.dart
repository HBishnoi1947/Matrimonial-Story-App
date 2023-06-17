import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import '../constant.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: myColorBackground,
      body: SafeArea(child: Padding(padding: const EdgeInsets.all(15), child: Center(
        child: Card(
          elevation: 0,
          color: myColorBackground,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text("Register here", style: TextStyle(fontSize: 25),),
              const SizedBox(height: 50,),
            TextFormField(
              style: const TextStyle(color: Colors.white),
              decoration: textInputDecoration.copyWith(
                labelText: "First Name",
                prefixIcon: const Icon(
                  Icons.person,
                  color: Colors.brown,
                )
              ),
          ),
          const SizedBox(height: 10,),
            TextFormField(
              style: const TextStyle(color: Colors.white),
              decoration: textInputDecoration.copyWith(
                labelText: " Surname",
                prefixIcon: const Icon(
                  Icons.person,
                  color: Colors.brown,
                )
              ),
          ),
          const SizedBox(height: 10,),
            TextFormField(
              style: const TextStyle(color: Colors.white),
              decoration: textInputDecoration.copyWith(
                labelText: "Email Id",
                prefixIcon: const Icon(
                  Icons.person,
                  color: Colors.brown,
                )
              ),
          ),
          const SizedBox(height: 10,),
            TextFormField(
              style: const TextStyle(color: Colors.white),
              decoration: textInputDecoration.copyWith(
                labelText: "Password",
                prefixIcon: const Icon(
                  Icons.person,
                  color: Colors.brown,
                )
              ),
          ),
          const SizedBox(height: 10,),
          SizedBox(child: 
          ElevatedButton(child: const Text(" Register "),onPressed: (){},),),
          const SizedBox(height: 10,),
          ]),
        ),
      ),)),
    );
  }
}