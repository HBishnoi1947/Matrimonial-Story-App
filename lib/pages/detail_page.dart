import 'package:flutter/material.dart';
import 'package:matrimonial_story_app/constant.dart';

import '../helper/model.dart';

class DetailPage extends StatefulWidget {
  final Items data;
  const DetailPage({super.key, required this.data});

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: myColorBackground,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  width: double.infinity,
                  height: MediaQuery.of(context).size.height*.1,
                  child: const Image(image: AssetImage('assets/logo.png')),
                ),
                SizedBox(
                  width: double.infinity,
                  height: MediaQuery.of(context).size.height*.5,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image(image: NetworkImage("https://www.maheshwari.org/${widget.data.couplePhotoImageUrl!}")),
                  ),
                ),
                RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "maheshwari.org team congratulates\n",
                        style: myTextStyle.copyWith(fontStyle: FontStyle.italic)
                      ),
                      TextSpan(
                        text: widget.data.coupleName,
                        style: myTextStyle.copyWith(fontWeight: FontWeight.bold)
                      ),
                      const TextSpan(
                        text: "\nand wish them both a happy future.",
                        style: myTextStyle
                      ),
                    ]
                  ),
                  ),
                const SizedBox(height: 15,),
                SizedBox(
                  
                  width: double.infinity,
                  child: Card(
          
                    elevation: 1,
                    color: Colors.yellow.withOpacity(0.2),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          const SizedBox(height: 5,),
                          RichText(
                                    textAlign: TextAlign.start,
                                    text: TextSpan(
                      children: [
                        const TextSpan(
                          text: "What ",
                          style: myTextStyleStory
                        ),
                        TextSpan(
                          text: widget.data.coupleName,
                          style: myTextStyleStory.copyWith(fontWeight: FontWeight.bold)
                        ),
                        const TextSpan(
                          text: " have to say -\n\n",
                          style: myTextStyleStory
                        ),
                        TextSpan(
                          text: widget.data.story,
                          style: myTextStyleStory.copyWith(fontSize: 17, fontStyle: FontStyle.italic)
                        ),
                      ]
                                    ),
                                    ),
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ) 
        ),
    );
  }
}