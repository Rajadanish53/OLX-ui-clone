import "package:flutter/material.dart";
import 'package:olx_ui/homeScreen/homescreen.dart';

import 'package:olx_ui/searchbar.dart';
import 'package:convex_bottom_bar/convex_bottom_bar.dart';

import 'ChatScreen.dart';
import 'SellScreen.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen>
    with SingleTickerProviderStateMixin {
  TabController _tabController;
  @override
  void initState() {
    super.initState();
    _tabController = new TabController(initialIndex: 0, length: 5, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: bottomBar(_tabController),
      body: TabBarView(
        controller: _tabController,
        children: [
          Scaffold(
            appBar: AppBar(
              elevation: 3.0,
              actions: [
                Row(children: [
                  IconButton(
                      color: Colors.blue,
                      onPressed: () {},
                      icon: Icon(Icons.location_on, color: Colors.black)),
                  Padding(
                    padding: const EdgeInsets.only(right: 8.0, top: 12.0),
                    child:
                        Text("Pakistan", style: TextStyle(color: Colors.black)),
                  )
                ])
              ],
              bottom: SearchBar(),
            ),
            body: homeScreen(context),
          ),
          ChatScreen(),
          SellScreen(),
          Text("UNDER CONSTRUCTION"),
          Text("UNDER CONSTRUCTION"),
        ],
      ),
    );
  }
}

Widget bottomBar(_tabc) {
  return ConvexAppBar(
      backgroundColor: Colors.white,
      activeColor: Colors.black87,
      elevation: 0.5,
      style: TabStyle.fixed,
      color: Colors.grey[500],
      controller: _tabc,
      initialActiveIndex: 1,
      items: [
        TabItem(
          title: "Home",
          icon: Icon(Icons.home),
        ),
        TabItem(title: "Chats", icon: Icon(Icons.chat_bubble)),
        TabItem(
          title: "Sell",
          icon: Icon(Icons.camera_enhance, semanticLabel: "Sell"),
        ),
        TabItem(title: "My Adds", icon: Icon(Icons.shopping_basket)),
        TabItem(title: "Account", icon: Icon(Icons.account_circle)),
      ]);
}
