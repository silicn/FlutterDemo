import 'package:flutter/material.dart';

 class Search extends StatelessWidget {
  const Search({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("搜索"),
      ),
      body: Container(
        child: Text("搜索一下"),
      ),
    );
  }
}