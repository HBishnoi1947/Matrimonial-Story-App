import 'package:flutter/material.dart';
import 'package:matrimonial_story_app/helper/getData.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  void initState() {
    
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FutureBuilder(
                future: GetData().getFirstPage(),
                builder: ((context, snapshot) {
                  if(!snapshot.hasData){
                    return const Center(
                      child: CircularProgressIndicator(
                          color: Colors.black,
                        ),
                    );
                  }
                  else{
                    return const Center(child: Text("Generated"));
                  }
                }),
              )
            ],
          ),
        ),
      ),
    );
  }
}