import 'package:flutter/material.dart';

class TopPicks extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: GridView.count(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        crossAxisCount: 2,
        crossAxisSpacing: 10,
        mainAxisSpacing: 14,
        childAspectRatio: 0.8,
        children: [
          buildCardpick(context, "assets/images/product.jpg", "CreamWash X",
              "Street 10 dk moscow"),
          buildCardpick(context, "assets/images/product2.jpg", "OliveOIL",
              "Street 10 dk moscow"),
          buildCardpick(context, "assets/images/product3.jpg", "HeadPhone Mx",
              "Street 10 dk moscow"),
          buildCardpick(context, "assets/images/product4.jpg", "DSLR PROCAM",
              "Street 10 dk moscow"),
          buildCardpick(context, "assets/images/product5.jpg",
              "Digital Watch Z2", "Street 10 dk moscow"),
          buildCardpick(context, "assets/images/product6.jpg", "HeadPhones S3",
              "Street 10 dk moscow"),
          buildCardpick(context, "assets/images/product7.jpg", "Shoes Nike LT",
              "Street 10 dk moscow"),
        ],
      ),
    );
  }

  Card buildCardpick(
      BuildContext context, String img, String name, String location) {
    return Card(
      elevation: 2,
      color: Colors.grey[200],
      child: Container(
          child: Stack(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset(
                img,
                height: 140,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
              Text(name,
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              Text(location, style: Theme.of(context).textTheme.caption),
            ],
          ),
          Positioned(
            top: 5,
            right: 5,
            child: Container(
              width: 35,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(width: 2, color: Colors.red)),
              child: IconButton(
                  alignment: Alignment.center,
                  iconSize: 16,
                  splashColor: Colors.transparent,
                  icon: Icon(
                    Icons.favorite,
                    color: Colors.red,
                  ),
                  onPressed: () {
                    ScaffoldMessenger.of(context).removeCurrentSnackBar();
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                      padding: EdgeInsets.all(0),
                      behavior: SnackBarBehavior.floating,
                      margin: EdgeInsets.only(bottom: 20),
                      content: Text(" $name Added to favorites "),
                    ));
                  }),
            ),
          ),
        ],
      )),
    );
  }
}
