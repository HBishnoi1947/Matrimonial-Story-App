import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:matrimonial_story_app/pages/home_page.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> with TickerProviderStateMixin{
  late final AnimationController _controller = AnimationController(vsync: this, duration: const Duration(seconds: 3))..repeat();

  @override
  void initState() {
    super.initState();

    Timer(const Duration(seconds: 7),()=> Navigator.pushReplacement (context, MaterialPageRoute(builder: (context) => const HomePage())));
  }

  @override
  void dispose(){
    _controller.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber.shade100,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children:  [
            AnimatedBuilder(
              animation: _controller, 
              child: Container(
                height: 200,
                width: 200,
                child: const Center(
                  child: Image(image: AssetImage("assets/logo.png")),
                ),
              ),
              builder: (BuildContext context, Widget? child){
                return Transform.scale(
                  scale: .9 + .2*sin(_controller.value * 2.0 * pi).abs(),
                  child: child
                  );
              }),
            SizedBox(height: MediaQuery.of(context).size.height * 0.1,),
            const Align(alignment: Alignment.center,child: Text('Success Stories',style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25,),textAlign: TextAlign.center,))
          ],
        ),
      ),
    );
  }
}