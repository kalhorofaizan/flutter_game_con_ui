import 'package:flutter/material.dart';

class Forumtext extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Column(
                  children:<Widget>[
                    Padding(
                      padding: EdgeInsets.only(top: 50,left: 0),
                      child: Text("Forum",style: TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.bold
                      ),),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 50),
                      child: Text("Kick off the conversation",style: TextStyle(
                        fontSize: 15,
                      ),),
                    ),
                  ]
              ),
              Spacer(),
              RawMaterialButton(
                onPressed: (){},
                child: Icon(
                  Icons.apps,
                  color: Color(0xffF39D56),
                  size: 20,
                ),
                shape: CircleBorder(),
                elevation: 2,
                fillColor: Colors.white,
                padding: EdgeInsets.all(20),
              )
            ],
          )
        ],
      ),
    );
  }
}
