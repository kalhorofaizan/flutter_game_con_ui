import 'package:flutter/material.dart';

class BottomTopic extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      width: 200,
      child: Center(
        child: Text(
          "New Topic",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
            color: Colors.white
          ),
        ),
      ),
      decoration: BoxDecoration(
        color: Color(0xffF39D58),
        borderRadius: BorderRadius.only(topLeft: Radius.circular(30))
      ),
    );
  }
}
