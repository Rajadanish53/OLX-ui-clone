import "package:flutter/material.dart";
import 'package:olx_ui/productList.dart';

Widget gridItem(BuildContext context, String text, Icon icon, Color color) {
  return InkWell(
    onTap: () {
      Navigator.push(context,
          MaterialPageRoute(builder: (context) => ProductList(title: text)));
    },
    child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
              alignment: Alignment.center,
              decoration: BoxDecoration(color: color, shape: BoxShape.circle),
              child: Padding(
                padding: const EdgeInsets.all(14.0),
                child: icon,
              )),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              text,
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 12.0),
            ),
          )
        ]),
  );
}
