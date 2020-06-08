import 'package:flutter/material.dart';
import 'package:internship1/description.dart';
import 'package:internship1/ingredients.dart';
import 'package:internship1/item.dart';
import 'package:internship1/related.dart';
import 'package:internship1/reviews.dart';
import 'package:internship1/stepbystep.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: Home()
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          color: Colors.white,
        ),
        SingleChildScrollView(
                  child: Column(
            children: <Widget>[
              Item(),
              SizedBox(height: 10.0,),
              Description(),
              StepByStep(),
              Ingredients(),
              Reviews(),
              Related(),
              Container(height: 100.0,)
            ],
          ),
        )
      ],
    );
  }
}
