import 'package:flutter/material.dart';

class Layout extends StatelessWidget {
  final int color1;
  final int color2;
  final int color3;
  const Layout({this.color1,this.color2,this.color3});
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context,boxconstrain){
        double height= MediaQuery.of(context).size.height;
        double width=MediaQuery.of(context).size.width;
        return Stack(
          children: <Widget>[
            Positioned(
              top: -height*0.25,
              right: -height*0.15,
              child: Container(
                width: height*1.0,
                height: height*1.03,
                decoration: BoxDecoration(
                    color: Color(color3),
                    borderRadius: BorderRadius.circular(500)
                ),
              ),
            ),
            Positioned(
              top: -height*0.20,
              right: -height*0.20,
              child: Container(
                width: height*0.74,
                height: height*0.74,
                decoration: BoxDecoration(
                    color: Color(color2),
                    borderRadius: BorderRadius.circular(500)
                ),
              ),
            ),
            Positioned(
              top: -height*0.16,
              right: -height*0.16,
              child: Container(
                width: height*0.40,
                height: height*0.40,
                decoration: BoxDecoration(
                    color: Color(color1),
                    borderRadius: BorderRadius.circular(500)
                ),
              ),
            ),

          ],
        );
      }
    );
  }
}
