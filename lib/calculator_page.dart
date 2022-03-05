import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';

class CalculatorPage extends StatefulWidget {
  @override
  State<CalculatorPage> createState() => _CalculatorPageState();
}

class _CalculatorPageState extends State<CalculatorPage> {
  final TextEditingController numberOneController = TextEditingController();
  double? result;

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text("Calculator Page"),
      ),
      body: Container(
        constraints: BoxConstraints.expand(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              "May tinh bo tui",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.red,
                fontSize: width / 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                decoration: InputDecoration(
                  hintText: "Input number 1",
                  border: OutlineInputBorder()
                ),
                keyboardType: TextInputType.number,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                decoration: InputDecoration(
                    hintText: "Input number 2",
                    border: OutlineInputBorder()
                ),
                keyboardType: TextInputType.number,
              ),
            ),
            showResult(),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      ElevatedButton(
                          onPressed: (){

                          },
                          child: Text("+")),
                      ElevatedButton(
                          onPressed: (){

                          },
                          child: Text("-"))
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      ElevatedButton(
                          onPressed: (){

                          },
                          child: Text("*")),
                      ElevatedButton(
                          onPressed: (){

                          },
                          child: Text("/"))
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget showResult(){
    if(result != null){
      return Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(" = 10"),
      );
    }else{
      return Container();
    }
  }
}
