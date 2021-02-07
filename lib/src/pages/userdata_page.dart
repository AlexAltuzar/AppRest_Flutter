import 'package:flutter/material.dart';

class UserData extends StatelessWidget {
  final String name;
  UserData({this.name});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AppRest'),
        centerTitle: true,
        backgroundColor: Color.fromRGBO(240, 94, 100, 1.0),
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
      ),
      body: Container(
          color: Color.fromRGBO(249, 246, 239, 1.0),
          child: Center(
              child: Text(name,
                  style: TextStyle(
                    fontSize: 32.0,
                  )))),
    );
  }
}
