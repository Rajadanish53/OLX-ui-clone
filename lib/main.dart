import "package:flutter/material.dart";

import 'mainscreen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          appBarTheme: AppBarTheme(
              textTheme: TextTheme(
                  bodyText1: TextStyle(color: Colors.black),
                  headline1: TextStyle(color: Colors.black87, fontSize: 10.0)),
              backgroundColor: Colors.white,
              actionsIconTheme: IconThemeData(color: Colors.black))),
      debugShowCheckedModeBanner: false,
      home: MainScreen(),
    );
  }
}
