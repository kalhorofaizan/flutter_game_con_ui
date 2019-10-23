import 'package:flutter/material.dart';

class TabText extends StatelessWidget {
  final String text;
  final bool selected;

  TabText({this.text, this.selected});

  TextStyle textstyle() {
    return TextStyle(
      color: Colors.black38,
      fontSize: 16,
    );
  }

  TextStyle selecttextstyle() {
    return TextStyle(
        color: Colors.black, fontSize: 16, fontWeight: FontWeight.bold);
  }

  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: -1.58,
      child: AnimatedDefaultTextStyle(
        style: selected ? selecttextstyle() : textstyle(),
        child: Text(
          text,
        ), duration: Duration(seconds: 1),
      ),
    );
  }
}
