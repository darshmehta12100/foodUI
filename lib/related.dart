import 'package:flutter/material.dart';

class Related extends StatefulWidget {
  @override
  _RelatedState createState() => _RelatedState();
}

class _RelatedState extends State<Related> {

  final List<String> images = ["assets/dish1.jpg","assets/dish2.jpg","assets/dish3.jpg"];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          alignment: Alignment.topLeft,
          padding: EdgeInsets.all(5.0),
          child: Text('Related',style: TextStyle(
            decoration: TextDecoration.none,
            color: Colors.black54,
            fontWeight: FontWeight.w600,
            fontSize: 16.0
          ),),
        ),
        Container(
           width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height*0.2,
          child: ListView.builder(
            itemCount: images.length,
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            itemBuilder: (BuildContext context,int index){
              return ClipRRect(
                borderRadius: BorderRadius.circular(30.0),
                child: Container(
                  margin: EdgeInsets.only(left:20.0),
                  child: Image(
                    height: 200.0,
                    width: 100.0,
                    fit: BoxFit.cover,
                    image:AssetImage(images[index]),
                  )
                ),
              );
            }
            ),
        ),
      ],
    );
  }
}