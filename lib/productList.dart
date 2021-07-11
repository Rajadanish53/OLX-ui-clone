import "package:flutter/material.dart";

import 'product.dart';

class ProductList extends StatelessWidget {
  final String title;
  const ProductList({Key key, @required this.title}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    List<Product> productsList = [
      Product("Camera PX780", 200, "assets/images/product.jpg",
          "this is an amazing camera"),
      Product("Cycle Electric R9", 450, "assets/images/product2.jpg",
          "this is an amazing camera"),
      Product("HeadPhones sm22", 130, "assets/images/product3.jpg",
          "this is an amazing camera"),
      Product("Tablet Core2x", 220, "assets/images/product4.jpg",
          "this is an amazing camera"),
      Product("CreamwashX", 2600, "assets/images/product5.jpg",
          "this is an amazing camera"),
      Product("OliveFace Mask", 560, "assets/images/product6.jpg",
          "this is an amazing camera"),
    ];

    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        title: Text(
          this.title,
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: ListView.builder(
          itemCount: productsList.length,
          itemBuilder: (context, index) {
            return Column(
              children: [
                Card(
                  margin: EdgeInsets.all(10),
                  child: ListTile(
                    leading: Image.asset(productsList[index].image),
                    title: Text(productsList[index].name),
                    subtitle: Text(productsList[index].description),
                    trailing: Text(
                      productsList[index].price.toString() + "\$",
                      style: Theme.of(context).textTheme.bodyText1.copyWith(color:Colors.black87)
                    ),
                  ),
                ),
                Divider()
              ],
            );
          }),
    );
  }
}
