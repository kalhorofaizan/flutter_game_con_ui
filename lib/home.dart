import 'package:flutter/material.dart';
import 'package:gamelister/ui/layout.dart';
import './widget/vertical_tab.dart';
import './widget/bottom_topic.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xffD7D8DE),
      child: Stack(
        children: <Widget>[
         const Layout(color1: 0xffEFF1F7,color2: 0xffEBECF4,color3: 0xffE2E5EF,),
          Column(
            children: <Widget>[
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 8),
                child: Align(
                  alignment: Alignment.topRight,
                  child: Material(
                    elevation: 10,
                    shape: CircleBorder(),
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Icon(Icons.apps,color: Color(0xfff39d5a),),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 40),
                child: Align(
                  alignment: Alignment.bottomLeft,
                  child: Text(
                    "Form",
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 40),
                child: Align(
                  alignment: Alignment.bottomLeft,
                  child: Text(
                    "Kick Off The Conversation",
                    style: TextStyle(
                        fontSize: 16,
                      color: Colors.black38
                    ),
                  ),
                ),
              ),
            ],
          ),
          Center(
            child: VerticalTab(),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: BottomTopic(),
          )
        ],
      ),
    );
  }
}
