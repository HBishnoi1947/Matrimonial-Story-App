import 'package:flutter/material.dart';
import 'package:matrimonial_story_app/helper/model.dart';
import 'package:matrimonial_story_app/pages/detail_page.dart';

class MyTile extends StatefulWidget {
  final Items data;
  const MyTile({super.key, required this.data});

  @override
  State<MyTile> createState() => _MyTileState();
}

class _MyTileState extends State<MyTile> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: ((context) => DetailPage(data: widget.data))));
      },
      child: Card(
        color: Colors.yellow.shade100.withOpacity(.3),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
          Expanded(
            child: Image(
              alignment: Alignment.bottomCenter,
              fit: BoxFit.fill,
              image: NetworkImage(
                "https://www.maheshwari.org/${widget.data.couplePhotoImageUrl!}"
                )
              ),
          ),
            ListTile(
              title: Text(widget.data.coupleName ?? "NA",
              textAlign: TextAlign.center,
              style: const TextStyle(fontSize: 14),
              ),
              subtitle: Text(
                widget.data.story ?? "NA", 
                style: const TextStyle(
                  overflow: TextOverflow.ellipsis
                ),
                ),
            )
        ]),
      ),
    );
  }
}