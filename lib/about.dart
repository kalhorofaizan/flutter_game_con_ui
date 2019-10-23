import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:gamelister/ui/layout.dart';

class About extends StatefulWidget {
  final String tag;
  About({this.tag});

  @override
  _AboutState createState() => _AboutState();
}

class _AboutState extends State<About> with SingleTickerProviderStateMixin {

  AnimationController _animationController;
  Animation<double> _fadeanimtion;
  Animation<double> _scaleanimtion;
  Animation<Offset> _offsetanimtion;
  
_playAnimation(){
  _animationController.reset();
  _animationController.forward();
}
  @override
  void initState() {
   _animationController=AnimationController(vsync: this,duration: Duration(milliseconds: 700));
   _fadeanimtion=Tween<double>(begin: 0,end: 1.0).animate(_animationController);
   _scaleanimtion=Tween<double>(begin: 0,end: 1.0).animate(_animationController);
   _offsetanimtion=Tween<Offset>(begin: Offset(0,1),end: Offset(0,0)).animate(_animationController);
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Stack(
          children: <Widget>[
            Layout(
              color1: 0xffF6B776,
              color2: 0xffF5B16E,
              color3: 0xffF2A363,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                InkWell(
                  onTap: ()=>Navigator.of(context).pop(),
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Icon(
                      Icons.arrow_back,
                      color: Colors.white,
                    ),
                  ),
                ),
                SizedBox(
                  height: 12,
                ),
                FutureBuilder(
                  future: _playAnimation(),
                  builder:(context,snapshort){
                    return FadeTransition(
                      opacity: _fadeanimtion,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20, right: 120),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: <Widget>[
                                Text(
                                  "19",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                  ),
                                ),
                                Text(
                                  "Topics",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: <Widget>[
                                Text(
                                  "88",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                  ),
                                ),
                                Text(
                                  "Threads",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              children: <Widget>[
                                Text(
                                  "500+",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                  ),
                                ),
                                Text(
                                  "Subs",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
                SizedBox(
                  height: 20,
                ),
                Hero(
                  tag: widget.tag,
                  child: ClipRRect(
                      borderRadius:
                          BorderRadius.only(topLeft: Radius.circular(20)),
                      child: Image.asset(
                        'assets/Fortnite.jpg',
                        fit: BoxFit.fill,
                        height: MediaQuery.of(context).size.height * 0.65,
                      )),
                ),
              ],
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                width: MediaQuery.of(context).size.width,
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: SingleChildScrollView(
                    child: SlideTransition(
                      position: _offsetanimtion,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            "Topics",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.grey,
                            ),
                          ),
                          SizedBox(
                            height: 12,
                          ),
                          Row(
                            children: <Widget>[
                              Text(
                                "Should we drop early?",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Flexible(
                                flex: 1,
                                child: Container(),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  color: Color(0xffF4AD75),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 10, vertical: 3),
                                  child: Text(
                                    "1241",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ),
                              )
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 47),
                            child: Wrap(
                              children: <Widget>[
                                Text(
                                  "asldkl;sak;lsak;ldk;lask;laskd;lkas;dlksal;k;laskd;lksdlkd;laksd;lsadsadas",
                                  style: TextStyle(
                                    color: Colors.grey
                                  ),
                                )
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 12,
                          ),
                          Row(
                            children: <Widget>[
                              Text(
                                "Should we drop early?",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Flexible(
                                flex: 1,
                                child: Container(),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  color: Color(0xffF4AD75),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 10, vertical: 3),
                                  child: Text(
                                    "1241",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ),
                              )
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 47),
                            child: Wrap(
                              children: <Widget>[
                                Text(
                                  "asldkl;sak;lsak;ldk;lask;laskd;lkas;dlksal;k;laskd;lksdlkd;laksd;lsadsadas",
                                  style: TextStyle(
                                      color: Colors.grey
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                height: 180,
                decoration: BoxDecoration(
                    color: Color(0xffEEF0F4),
                    borderRadius:
                        BorderRadius.only(topLeft: Radius.circular(30))),
              ),
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: Padding(
                child: ScaleTransition(
                  scale: _scaleanimtion,
                  child: Material(
                    elevation: 3,
                    borderRadius: BorderRadius.circular(30),
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Text(
                        "30",
                        style: TextStyle(
                            color: Color(0xffF3A169),
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
                padding: EdgeInsets.only(right: 20, bottom: 150),
              ),
            )
          ],
        ),
      ),
    );
  }
}
