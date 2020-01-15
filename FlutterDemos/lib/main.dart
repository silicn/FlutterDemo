import 'package:flutter/material.dart';

void main()=>(runApp(MyApp()));


class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Demo",
      home: Scaffold(
        appBar: AppBar(
          title: Text("首页")
        ),
        body: Home(),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: 0,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              title: Text("首页")
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.category),
              title: Text("分类")
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              title: Text("设置")
            )
          ] ,
        ),
      ),
    );
  }
}

class Home extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 20,
      itemBuilder: (context,index){
        return HomeCell();
      }
    );
  }
}

class HomeCell extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   
    return Container(
          padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
          child: Row(
            children: <Widget>[
              Image.network("https://www.itying.com/images/flutter/1.png",width: 150,height: 150),
              Column(
                crossAxisAlignment:CrossAxisAlignment.start,
                children: <Widget>[
                   Text(
                    "这是标题",
                    style: TextStyle(
                      fontSize: 18.0
                    ),
                    textAlign: TextAlign.start,
                  ),
                  Text(
                    "这是副标题标题",
                    style: TextStyle(
                      fontSize: 18.0
                    ),
                    textAlign: TextAlign.start,
                  ),
                ],
              )
             
            ],
          ),
        );
  }
}