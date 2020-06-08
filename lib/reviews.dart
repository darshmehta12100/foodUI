import 'package:flutter/material.dart';
import 'package:internship1/model/user.dart';

class Reviews extends StatefulWidget {
  @override
  _ReviewsState createState() => _ReviewsState();
}

class _ReviewsState extends State<Reviews> {
  Text _buildRating(int rating){
    String stars="";
    for(int i=0;i<rating;i++){
      stars+='⭐ ';
    }
    stars.trim();
    return Text(stars,style: TextStyle(
      decoration: TextDecoration.none,
      fontSize: 12.0
    ),);
  }
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(5.0),
      child: Container(
        alignment: Alignment.topLeft,
        child: Column(
          children: <Widget>[
            Container(
              alignment: Alignment.topLeft,
              padding: EdgeInsets.all(5.0),
              child: Text('Reviews(10)',
              style: TextStyle(
                fontSize: 16.0,
                color: Colors.black,
                fontWeight: FontWeight.bold,
                decoration: TextDecoration.none),),
            ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height*0.3,
                child: ListView.builder(
                  //scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  physics: PageScrollPhysics(),
                  itemCount: users.length,
                  itemBuilder: (BuildContext context,int index){
                    final Users user = users[index];
                    return Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            CircleAvatar(radius: 30.0,backgroundImage: AssetImage("assets/john.jpg"),),
                            SizedBox(width: 20.0,),
                            Column(
                             children: <Widget>[
                               Text(user.name,style: TextStyle(
                                 fontSize: 16.0,
                                 color: Colors.black54,
                                 fontWeight: FontWeight.bold,
                                 decoration: TextDecoration.none
                               ),),
                               SizedBox(height: 5.0,),
                               Text(user.when,style: TextStyle(
                                 fontSize: 12.0,
                                 color: Colors.black12,
                                 fontWeight: FontWeight.bold,
                                 decoration: TextDecoration.none
                               ),),
                             ], 
                            ),
                            SizedBox(width: 50.0,),
                            _buildRating(user.rating)
                          ],
                        ),
                        Text(user.review,style: TextStyle(
                                 fontSize: 12.0,
                                 color: Colors.black12,
                                 fontWeight: FontWeight.bold,
                                 decoration: TextDecoration.none
                               ),),
                        Container(height: 10.0,)
                      ],
                    );
                  }
                ),
              ),
              Container(
                alignment: Alignment.center,
                width: 200.0,
                height: 40.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                  color: Colors.grey
                ),
                child: Text('8 More Reviews',textAlign: TextAlign.center,
                style: TextStyle(color: Colors.black38,fontSize: 14.0,fontWeight: FontWeight.w600,decoration: TextDecoration.none),),
              ),
              SizedBox(height: 20.0,),

            ],
        ),
      ),
    );
  }
}