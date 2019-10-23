import 'package:flutter/material.dart';
import 'package:gamelister/about.dart';
import 'package:gamelister/widget/form_name.dart';
import 'package:gamelister/widget/fron_detail.dart';

class FormCard extends StatelessWidget {
  final String tag;
  FormCard({this.tag});
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Hero(
      tag: tag,
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: (){
            Navigator.of(context).push(MaterialPageRoute(builder: (context)=>About(tag: tag,)));
          },
          child: SizedBox(
            width: 250,
            child: Card(
              margin: EdgeInsets.symmetric(horizontal: 25, vertical: height * 0.1),
              elevation: 20.0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(20)),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(20)),
                child: Stack(
                  children: <Widget>[
                    Image.asset(
                      'assets/Fortnite.jpg',
                      width: 240,
                      fit: BoxFit.fill,
                    ),
                    Positioned(
                      left: 0,
                      right: 0,
                      bottom: 0,
                      child: FromDetail(),
                    ),
                    Positioned(
                      bottom: 75,
                      child: FormName(name: "Fortnite"),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
