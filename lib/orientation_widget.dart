import 'package:flutter/material.dart';
class OrientationWidget extends StatefulWidget {
  const OrientationWidget({Key? key}) : super(key: key);

  @override
  State<OrientationWidget> createState() => _OrientationWidgetState();
}

class _OrientationWidgetState extends State<OrientationWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My home page"),
      ),
      body: Container(
        constraints: BoxConstraints.expand(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
                flex: 1,
                child: Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Expanded(
                          child: Container(
                            color: Colors.red,
                            child: Center(child: Text("A")),
                          )
                      ),
                      Expanded(
                          child: Container(
                            color: Colors.purple,
                            child: Center(child: Text("B")),
                          )
                      ),
                      Expanded(
                          child: Container(
                            color: Colors.lime,
                            child: Center(child: Text("C")),
                          )
                      ),
                      Expanded(
                          child: Container(
                            decoration: BoxDecoration(
                              border: Border(
                                  bottom: BorderSide(color: Colors.black,style: BorderStyle.none)
                              ),
                              color: Colors.green,
                            ),
                            child: Center(child: Text("D")),
                          )
                      )
                    ],
                  ),
                )
            ),
            Expanded(
                flex: 1,
                child: Container(
                  color: Colors.blue,
                )
            ),
          ],
        ),
      ),
    );
  }
}
