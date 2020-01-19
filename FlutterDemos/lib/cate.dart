import 'package:flutter/material.dart';
import 'Search.dart';

 class Cate extends StatelessWidget {
  const Cate({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
          children: <Widget>[
            Center(
              child: RaisedButton(
              child: Text("跳转"),
              onPressed: (){
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (content)=>Search()
                  )
                );
              },
            ),
            )
          ],
        )
      );
  }
}
