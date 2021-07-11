import 'package:flutter/material.dart';

import 'AllMessages.dart';

class ChatScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text(
          "Chats",
          style: Theme.of(context)
              .textTheme
              .headline5
              .copyWith(fontWeight: FontWeight.bold),
        ),
      ),
      body: DefaultTabController(
        initialIndex: 0,
        length: 3,
        child: Column(
          children: [
            TabBar(
                indicatorColor: Colors.black,
                indicatorWeight: 6,
                labelColor: Colors.black,
                labelPadding: EdgeInsets.all(20),
                labelStyle: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),
                tabs: [
                  Text("ALL"),
                  Text("BUYING"),
                  Text("SELLING"),
                ]),
            Expanded(
              child: TabBarView(
                children: [
                  AllMessages(),
                  Text("Buying"),
                  Text("Selling")
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
