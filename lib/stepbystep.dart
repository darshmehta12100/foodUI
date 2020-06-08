import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'model/steps.dart';

class StepByStep extends StatefulWidget {
  @override
  _StepByStepState createState() => _StepByStepState();
}

class _StepByStepState extends State<StepByStep> {
  int selected_index = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height*0.095,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: steps.length,
        shrinkWrap: true,
        itemBuilder: (BuildContext context,int index){
          final Steps step = steps[index];
          return GestureDetector(
            onTap: (){
              setState(() {
                selected_index = index;
              });
            },
            child: Column(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.all(5.0),
                  margin: EdgeInsets.only(left:5.0),
                  width: MediaQuery.of(context).size.width*0.25,
                  height: MediaQuery.of(context).size.height*0.05,
                  
                  decoration: BoxDecoration(
                    color: Colors.grey.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(20.0) ),
                  alignment: Alignment.center,
                  child: Text(step.step_num,style: 
                  TextStyle(decoration: TextDecoration.none,
                  fontSize: 14.0,
                  fontWeight: FontWeight.bold,
                  color: selected_index == index ? Colors.red:Colors.black),),
                ),
                SizedBox(height: 5.0,),
                selected_index == index ? Container(
                  padding: EdgeInsets.all(1.0),
                  child: Text(step.step_desc,
                style: TextStyle(color: Colors.black38,
                fontSize: 14.0,
                decoration: TextDecoration.none),),):Container()
                
              ],
            ),
          );
        },
      ),
    );
  }
}