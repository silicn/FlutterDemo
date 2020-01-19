import 'package:flutter/material.dart';
import 'Tabs.dart';


void main()=>(runApp(MyApp()));

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Demo",
      home: Tabs()
    );
  }
}









