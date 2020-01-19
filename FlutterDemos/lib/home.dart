import 'package:flutter/material.dart';

class Home extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 10,
      itemBuilder: (context,index){
        return HomeCell();
      }
    );
  }
}

class HomeCell extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(10),
      child: Column(
        children: <Widget>[
          AspectRatio(
            aspectRatio: 16/9,
            child: Image.network("https://www.itying.com/images/flutter/1.png",fit:BoxFit.cover,),
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage("https://www.itying.com/images/flutter/1.png"),
            ),
            title: Text("梦里不知"),
            subtitle: Text("梦里不知,梦里指哪里",maxLines: 2,),
          )
        ],
      ),
    );
  }
}