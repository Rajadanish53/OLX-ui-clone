import 'package:flutter/material.dart';

class AllMessages extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical:14),
      child: Column(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
        Image(
          image: AssetImage("assets/images/nomessage.png"),
        ),
        Text(
          "No messages, yet?",
          style: Theme.of(context)
              .textTheme
              .headline5
              .copyWith(fontWeight: FontWeight.w800),
        ),
        Text(
          "Find something you like and start a \n conversation",
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 16,
          ),
        ),
        SizedBox(
          width: double.infinity,
          height: 50,
                child: ElevatedButton(
            style:ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Colors.black)
            ),
              onPressed: () {},
              child: Text("Explore the latest ads",style: TextStyle(fontSize: 18),),
            ),
        )
      ]),
    );
  }
}
