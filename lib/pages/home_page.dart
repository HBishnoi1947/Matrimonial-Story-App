import 'package:flutter/material.dart';
import 'package:matrimonial_story_app/helper/getData.dart';
import 'package:matrimonial_story_app/widget/my_tile.dart';

import '../helper/app_url.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  ScrollController scrollController = ScrollController();
  @override
  void initState() {
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber.shade100,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: FutureBuilder(
                future: GetData().getPage(),
                builder: ((context, snapshot) {
                  if(!snapshot.hasData){
                    return const Center(
                      child: CircularProgressIndicator(
                          color: Colors.black,
                        ),
                    );
                  }
                  else if(snapshot.data!.items!.isEmpty){
                    return const Center(
                      child: Text(
                          "No Story",
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.black
                          ),
                        ),
                    );
                  }
                  else{
                    return SingleChildScrollView(
                      controller: scrollController,
                      child: Column(
                        // mainAxisSize: MainAxisSize.min,
                        // mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          const Image(image: AssetImage("assets/logo.png")),
                          Text(
                            "Success Story: ${AppUrl.pageNumber}",
                            style: TextStyle(
                              fontSize: 20,
                              fontStyle: FontStyle.italic,
                            ),
                            ),
                          GridView.builder(
                            physics: const NeverScrollableScrollPhysics(),
                            shrinkWrap: true,
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
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 14),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                              ElevatedButton(
                                onPressed: (){
                                  setState(() {
                                    AppUrl().previousPageUrl();
                                    scrollController.animateTo(0,duration: const Duration(milliseconds: 1000), curve:Curves.fastOutSlowIn);
                                  });
                                }, 
                                child: const Text("Previous")),
                              ElevatedButton(
                                onPressed: (){
                                  setState(() {
                                    AppUrl().nextPageUrl();
                                    scrollController.animateTo(0,duration: const Duration(milliseconds: 1000), curve:Curves.fastOutSlowIn);
                                  });
                                }, 
                                child: const Text("Next")),
                            ],),
                          )
                        ],
                      ),
                    );
                  }
                }),
          ),
        ),
      ),
    );
  }
}