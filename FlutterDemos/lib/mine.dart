import 'package:flutter/material.dart';

 class Mine extends StatelessWidget {
   const Mine({Key key}) : super(key: key);
 
   @override
   Widget build(BuildContext context) {
     return ListView.builder(
       itemCount: 5,
       itemBuilder: (context,index){
         return MineCell();
       }
     );
   }
 }

 class MineCell extends StatelessWidget {
   const MineCell({Key key}) : super(key: key);
 
   @override
   Widget build(BuildContext context) {
     return ListTile(
       title: Text("个人资料"),
       trailing: Text(">"),
     );
   }
 }