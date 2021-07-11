import "package:flutter/material.dart";
import 'package:olx_ui/homeScreen/homeScreen1.dart';
import 'package:olx_ui/homeScreen/homeScreen2.dart';

@override
Widget homeScreen(BuildContext context) {
  return SingleChildScrollView(
    child: Column(
      children: [
        Container(
          margin: EdgeInsets.all(10.0),
          child: Text("Browse Popular Categories",
              style: Theme.of(context)
                  .textTheme
                  .headline6
                  .copyWith(fontWeight: FontWeight.bold)),
        ),
        PopularCategories(),
        Container(
          margin: EdgeInsets.only(bottom: 10.0, top: 0.0),
          child: Text("Top Picks For You",
              style: Theme.of(context)
                  .textTheme
                  .headline6
                  .copyWith(fontWeight: FontWeight.bold)),
        ),
        TopPicks(),
      ],
    ),
  );
}