import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:matrimonial_story_app/pages/register_page.dart';

import '../constant.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
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
              const Text("Login Now ", style: TextStyle(fontSize: 25),),
              const SizedBox(height: 50,),
            TextFormField(
              style: const TextStyle(color: Colors.white),
              decoration: textInputDecoration.copyWith(
                labelText: "Email",
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
                  Icons.key,
                  color: Colors.brown,
                )
              ),
          ),
          const SizedBox(height: 10,),
          SizedBox(child: 
          ElevatedButton(child: Text(" Login "),onPressed: (){},),),
          const SizedBox(height: 10,),
          Text.rich(
                          TextSpan(children: [
                            const TextSpan(
                              text: "Don't have an account? ",
                              style: TextStyle(color: Colors.black, fontSize: 16)
                            ),
                            TextSpan(
                              text: "Register here",
                              recognizer: TapGestureRecognizer()..onTap = (){
                                Navigator.push(context, MaterialPageRoute(builder: (context) => const RegisterPage()));
                              },
                              style: const TextStyle(color: Colors.black, fontSize: 16,decoration: TextDecoration.underline)
                            ),
                          ])
                        )
          ]),
        ),
      ),)),
    );
  }
}