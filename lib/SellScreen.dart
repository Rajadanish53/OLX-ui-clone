import "package:flutter/material.dart";

import 'gridItem.dart';

class SellScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[300],
        elevation: 2,
        leading: Icon(
          Icons.close,
          color: Colors.black,
          size: 34,
        ),
        title: Text(
          "What are you offering?",
          style: TextStyle(
              fontSize: 22, color: Colors.black, fontWeight: FontWeight.bold),
        ),
      ),
      body: Column(
        children: [
          Container(
            height: 60,
            margin: EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Browse Categories",
                    style:
                        TextStyle(fontSize: 18.0, fontWeight: FontWeight.w600)),
                Text("See all",
                    style: TextStyle(
                        fontSize: 14.0,
                        fontWeight: FontWeight.w600,
                        decoration: TextDecoration.underline))
              ],
            ),
          ),
          Expanded(
                      child: GridView.count(crossAxisCount: 3, children: [
              gridItem(context,"Mobiles",Icon(Icons.mobile_screen_share),Colors.teal[200]),
              gridItem(context,"Vehicles",Icon(Icons.car_rental),Colors.brown[200]),
              gridItem(context,"Property for Sale",Icon(Icons.point_of_sale),Colors.teal[100]),
              gridItem(context,"Property for Rent",Icon(Icons.home),Colors.yellow[200]),
              gridItem(context,"Electronics & \n Home appliances",Icon(Icons.tv),Colors.purple[200]),
              gridItem(context,"Bikes",Icon(Icons.bike_scooter),Colors.red[200]),
              gridItem(context,"Business,\n Industrial & ...",Icon(Icons.business_outlined),Colors.teal[500]),
              gridItem(context,"Services",Icon(Icons.rowing),Colors.orange[200]),
              gridItem(context,"Jobs",Icon(Icons.shopping_bag),Colors.red[400]),
            ]),
          )
        ],
      ),
    );
  }
}
