import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RelationWidget extends StatefulWidget {
  const RelationWidget({Key? key}) : super(key: key);

  @override
  State<RelationWidget> createState() => _RelationWidgetState();
}

class _RelationWidgetState extends State<RelationWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Demo relation"),
      ),
      body: demoAlignPosition(),
    );
  }
  Widget demoAlignPosition(){
    return Container(
      constraints: BoxConstraints.expand(),
      child: Stack(
        children: [
          Positioned(
            top: 0,
            left: 0,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
              color: Colors.deepPurpleAccent,
              child: Text("6"),
            ),
          ),
          Positioned(
            top: 0,
            right: 0,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
              color: Colors.greenAccent,
              child: Text("7"),
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
              color: Colors.indigo,
              child: Text("8"),
            ),
          ),
          Positioned(
            bottom: 0,
            right: 0,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
              color: Colors.orangeAccent,
              child: Text("9"),
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Container(
              width: MediaQuery.of(context).size.width / 1.9,
              height: MediaQuery.of(context).size.width / 2.26,
              child: Stack(
                children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: Container(
                      padding:
                      EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                      color: Colors.teal,
                      child: Text("2"),
                    ),
                  ),
                  Align(
                    alignment: Alignment.topRight,
                    child: Container(
                      padding:
                      EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                      color: Colors.pinkAccent,
                      child: Text("4"),
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomLeft,
                    child: Container(
                      padding:
                      EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                      color: Colors.orangeAccent,
                      child: Text("3"),
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomRight,
                    child: Container(
                      padding:
                      EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                      color: Colors.purple,
                      child: Text("5"),
                    ),
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      padding:
                      EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                      color: Colors.purple,
                      child: Text("1"),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
  Widget demoClipNone(){
    return Container(
      alignment: Alignment.center,
      padding: EdgeInsets.all(20),
      child: Stack(
        clipBehavior: Clip.none,
        alignment: AlignmentDirectional.bottomCenter,
        children: [
          ClipRRect(borderRadius: BorderRadius.circular(25), child: Image.asset('assets/image.png')),
          Positioned(
            bottom: -50,
            right: 20,
            left: 20,
            child: Container(
              height: 150,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.white,
              ),
              padding: EdgeInsets.all(20),
              alignment: Alignment.center,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "TITLE",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18, decoration: TextDecoration.none, color: Colors.black),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Hey, There?",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14, decoration: TextDecoration.none, color: Colors.black),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "This is the example",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 15, decoration: TextDecoration.none, color: Colors.black),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
