import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';

class Item extends StatefulWidget {
  @override
  _ItemState createState() => _ItemState();
}

class _ItemState extends State<Item> {
  @override
  Widget build(BuildContext context) {

    Widget image_carousel = Container(
      height: MediaQuery.of(context).size.height*0.4,
      width: MediaQuery.of(context).size.width,
      child: Carousel(
        boxFit: BoxFit.cover,
        images: [
          AssetImage('assets/dish3.jpg'),
          AssetImage('assets/dish2.jpg'),
          AssetImage('assets/dish1.jpg'),
          AssetImage('assets/dish4.jpg'),
          AssetImage('assets/dish5.jpg'),
        ],
        autoplay: false,
        animationCurve: Curves.fastOutSlowIn,
        animationDuration: Duration(milliseconds: 1000),
        dotSize: 5.0,
        dotBgColor: Colors.black26,
        dotColor: Colors.redAccent,
        indicatorBgPadding: 8.0,
      ),
    );

    return Stack(
        children: <Widget>[
    image_carousel,
    Padding(
      padding: EdgeInsets.symmetric(horizontal: 10.0,vertical: 20.0),
          child: SafeArea(
          child: Column(
          children: <Widget>[
            Container(
              alignment: Alignment.topRight,
              child: Icon(Icons.favorite_border,size: 40.0,color: Colors.white,),
            ),
            SizedBox(height: 40.0,),
            Container(
              alignment: Alignment.center,
              child: Image.asset("assets/youtube2.jpg",width: 50.0,height: 50.0,),
            ),
            SizedBox(height: 20.0,),
            Container(
              alignment: Alignment.bottomLeft,
                child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Container(
                    alignment: Alignment.bottomLeft,
                    child: Text('Braided Egg Bread',style: TextStyle(color: Colors.white,fontSize: 24.0,fontWeight: FontWeight.w700
                    ,decoration: TextDecoration.none),),
                  ),
                  SizedBox(height: 10.0,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text('Smitten Kitchen',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w400,fontSize: 18.0,
                      decoration: TextDecoration.none),),
                      Text('⭐ ⭐ ⭐ ⭐ ⭐',style: TextStyle(fontSize: 14.0,decoration: TextDecoration.none,color: Colors.white),)
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    )
        ],
      );
  }
}