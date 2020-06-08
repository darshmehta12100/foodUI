import 'package:flutter/material.dart';

class Description extends StatefulWidget {
  @override
  _DescriptionState createState() => _DescriptionState();
}

class _DescriptionState extends State<Description> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(5.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Text('5 Ingredients',style: TextStyle(fontSize: 14.0,color: Colors.black87,decoration: TextDecoration.none),),
                    Text('|',style: TextStyle(fontSize: 14.0,color: Colors.black87,decoration: TextDecoration.none)),
                    Text('2 Servings',style: TextStyle(fontSize: 14.0,color: Colors.black87,decoration: TextDecoration.none)),
                    Text('|',style: TextStyle(fontSize: 14.0,color: Colors.black87,decoration: TextDecoration.none)),
                    Text('30 Minutes',style: TextStyle(fontSize: 14.0,color: Colors.black87,decoration: TextDecoration.none))
                  ],
          ),
          SizedBox(height: 10.0,),
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: Text('Description',style: TextStyle(fontSize: 14.0,color: Colors.black87,decoration: TextDecoration.none),),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            padding: EdgeInsets.all(5.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text('Lorem Ipsum is simply dummy print industry',
                style: TextStyle(fontSize: 12.0,color: Colors.grey,decoration: TextDecoration.none)),
                Text('Lorem Ipsum has been the industry\'s',
                style: TextStyle(fontSize: 12.0,color: Colors.grey,decoration: TextDecoration.none)),
                Text('when an unknown printer took.',
                style: TextStyle(fontSize: 12.0,color: Colors.grey,decoration: TextDecoration.none),),
                  ],
                ),
                Icon(Icons.arrow_downward)
              ],
            ),
          ),
          SizedBox(height: 10.0,),
          Text('Step-by-step Process',style: TextStyle(fontSize: 14.0,color: Colors.black87,decoration: TextDecoration.none),)
          
        ],
        
      ),
    );
  }
}