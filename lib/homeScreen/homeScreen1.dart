import "package:flutter/material.dart";
import 'package:olx_ui/gridItem.dart';


class PopularCategories extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: GridItemsTop(),
    );
  }
}




class GridItemsTop extends StatelessWidget {
  const GridItemsTop({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap:true,
      crossAxisCount: 3,
      children: [
        gridItem(
            context, "NEARBY ADS", Icon(Icons.near_me), Colors.blue[200]),
        gridItem(context, "PROPERTIES", Icon(Icons.apartment_sharp),
            Colors.yellow),
        gridItem(context, "CARS", Icon(Icons.car_rental), Colors.indigo[200]),
        gridItem(
            context, "FURNITURE", Icon(Icons.tablet), Colors.orange[300]),
        gridItem(context, "JOBS", Icon(Icons.work_outline), Colors.blueAccent[200]),
        gridItem(context, "ELECTRONICS & APPLIANCES",
            Icon(Icons.important_devices), Colors.blue[200]),
        gridItem(context, "MOBILES", Icon(Icons.mobile_friendly),
            Colors.blue[200]),
        gridItem(
            context, "BIKES", Icon(Icons.electric_bike), Colors.orange[300]),
        gridItem(context, "MORE CATEGORIES", Icon(Icons.more_horiz),
            Colors.blue[100]),
      ],
    );
  }
}
