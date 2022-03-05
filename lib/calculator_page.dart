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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Calculator Page"),
      ),
      body: Container(
        child: Column(
          children: [
            TextField(
              controller: numberOneController,
              onChanged: (text){

              },
              decoration: InputDecoration(
                hintText: "Input number 1",
                border: OutlineInputBorder(),
                suffixIcon: IconButton(
                  onPressed: (){
                    String text = numberOneController.text.toString();
                    print(text);
                  },
                  icon: Icon(Icons.remove_red_eye_rounded),
                )
                // fillColor: Colors.grey,
                // filled: true,
              ),
              keyboardType: TextInputType.number,
              // obscureText: true,
              // cursorColor: Colors.red,

            )
          ],
        ),
      ),
    );
  }
}
