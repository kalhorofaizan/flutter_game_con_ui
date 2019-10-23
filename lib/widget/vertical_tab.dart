import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:gamelister/widget/form_card.dart';
import 'package:gamelister/widget/tab_text.dart';

class VerticalTab extends StatefulWidget {
  @override
  _VerticalTabState createState() => _VerticalTabState();
}

class _VerticalTabState extends State<VerticalTab> {
  int selected = 0;

  changeselect(int index) {
    setState(() {
      selected=index;
    });
  }

  @override
  Widget build(BuildContext context) {
    double height=MediaQuery.of(context).size.height;
    return Container(
        height: 500,
        child: Stack(
          children: <Widget>[
            Positioned(
              top: 0,
              bottom: 0,
              left: -15,
              width: 110,
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: height*0.20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    InkWell(
                      onTap: () => changeselect(0),
                      child: TabText(
                        text: "Media",
                        selected: selected == 0,
                      ),
                    ),
                    InkWell(
                        onTap: ()=>changeselect(1),
                        child: TabText(
                      text: "Streamers",
                      selected: selected == 1,
                    )),
                    InkWell(
                      onTap: ()=>changeselect(2),
                      child: TabText(
                        text: "Form",
                        selected: selected == 2,
                      ),
                    ),
                  ],
                ),
              ),
            ), Padding(
              padding: const EdgeInsets.only(left: 60,top: 50,bottom: 50),
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  FormCard(tag: "fot",),
                  FormCard(tag: "pub",),
                ],
              ),
            )
          ],
        ));
  }
}
