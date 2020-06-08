import 'package:flutter/material.dart';

class Ingredients extends StatefulWidget {
  @override
  _IngredientsState createState() => _IngredientsState();
}

class _IngredientsState extends State<Ingredients> {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topLeft,
      padding: EdgeInsets.all(5.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            children: <Widget>[
              Text('Ingedients',style: TextStyle(fontSize: 14.0,color: Colors.black87,decoration: TextDecoration.none),),
              SizedBox(width: 20.0,),
              Container(
                color: Colors.grey[100],
                width: 100.0,
                height: 20.0,
                alignment: Alignment.center,
                child: Text('Alternatives',style: TextStyle(fontSize: 12.0,color: Colors.black45,decoration: TextDecoration.none),),
              ),
              SizedBox(width: MediaQuery.of(context).size.width*0.3,),
              Icon(Icons.add_shopping_cart,color: Colors.redAccent,)
            ],
          ),
          SizedBox(height: 10.0,),
          Row(
            children: <Widget>[
              Icon(Icons.add,color: Colors.redAccent,),
              SizedBox(width: MediaQuery.of(context).size.width*0.01,),
              Text('3-1/4 to 3-3/4 cups all purpose flour'
              ,style: TextStyle(fontSize: 12.0,color: Colors.black45,decoration: TextDecoration.none))
            ],
          ),
          SizedBox(height: 10.0,),
          Row(
            children: <Widget>[
              Icon(Icons.add,color: Colors.redAccent,),
              SizedBox(width: MediaQuery.of(context).size.width*0.01,),
              Text('1 Tablespoon sugar'
              ,style: TextStyle(fontSize: 12.0,color: Colors.black45,decoration: TextDecoration.none))
            ],
          ),
          SizedBox(height: 10.0,),
          Row(
            children: <Widget>[
              Icon(Icons.remove,color: Colors.redAccent,),
              SizedBox(width: MediaQuery.of(context).size.width*0.01,),
              Text('1 package (1/4) ounce active dry yeast'
              ,style: TextStyle(fontSize: 12.0,color: Colors.black45,decoration: TextDecoration.none))
            ],
          ),
          SizedBox(height: 10.0,),
          Row(
            children: <Widget>[
              Icon(Icons.add,color: Colors.redAccent,),
              SizedBox(width: MediaQuery.of(context).size.width*0.01,),
              Text('3/4 Teaspoon salt'
              ,style: TextStyle(fontSize: 12.0,color: Colors.black45,decoration: TextDecoration.none))
            ],
          ),
          SizedBox(height: 10.0,),
          Row(
            children: <Widget>[
              Icon(Icons.remove,color: Colors.redAccent,),
              SizedBox(width: MediaQuery.of(context).size.width*0.01,),
              Text('3 tablespoons cannola oil'
              ,style: TextStyle(fontSize: 12.0,color: Colors.black45,decoration: TextDecoration.none))
            ],
          ),
          SizedBox(height: 10.0,),
        ],
      ),
    );
  }
}