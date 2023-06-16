import 'package:flutter/material.dart';
import 'package:matrimonial_story_app/helper/getData.dart';
import 'package:matrimonial_story_app/widget/my_tile.dart';

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
          child: FutureBuilder(
                future: GetData().getFirstPage(),
                builder: ((context, snapshot) {
                  if(!snapshot.hasData){
                    return const Center(
                      child: CircularProgressIndicator(
                          color: Colors.black,
                        ),
                    );
                  }
                  // else if(snapshot[item]){
                  //   return const Center(
                  //     child: CircularProgressIndicator(
                  //         color: Colors.black,
                  //       ),
                  //   );
                  // }
                  else{
                    return GridView.builder(
                      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                        mainAxisSpacing: 5,
                        crossAxisSpacing: 5,
                        crossAxisCount: 2,
                        childAspectRatio: .9
                        ),
                      itemCount: snapshot.data!.items!.length,
                      itemBuilder: (context, index){
                        return MyTile(data: snapshot.data!.items![index]);
                      },
                    );
                  }
                }),
          ),
        ),
      ),
    );
  }
}