import 'package:flutter/material.dart';
import 'home.dart';
import 'cate.dart';
import 'mine.dart';


class Tabs extends StatefulWidget {
  Tabs({Key key}) : super(key: key);

  @override
  _TabsState createState() => _TabsState();
}

class _TabsState extends State<Tabs> {
  int _currentIndex = 0;

  List _pageList= [
    Home(),
    Cate(),
    Mine()
  ];

  String _navTitle = "首页";


  @override
  Widget build(BuildContext context) {
    return Container(
       child: Scaffold(
        appBar: AppBar(
          title: Text(this._navTitle)
        ),
        body: this._pageList[this._currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: this._currentIndex,
          onTap: (int index){
           setState(() {
                  this._currentIndex = index;
                  if (index == 0) {
                    this._navTitle = "首页";
                  } else if(index == 1){
                    this._navTitle = "分类";
                  }else{
                    this._navTitle = "设置";
                  }
                });
          },
          fixedColor: Colors.red,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              title: Text("首页"),
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