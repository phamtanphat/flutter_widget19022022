import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_widget19022022/calculator_page.dart';
import 'package:flutter_widget19022022/orientation_widget.dart';
import 'package:flutter_widget19022022/relation_widget.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter Widget",
      theme: ThemeData(primarySwatch: Colors.teal),
      home: CalculatorPage(),
    );
  }
}

