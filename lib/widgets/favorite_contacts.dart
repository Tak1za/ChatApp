import 'package:chat/models/message_model.dart';
import 'package:chat/widgets/avatar.dart';
import 'package:flutter/material.dart';

class FavoriteContacts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                "Favorite Contacts",
                style: TextStyle(
                    color: Colors.grey,
                    fontSize: 14.0,
                    letterSpacing: 1.2,
                    fontWeight: FontWeight.bold),
              ),
              IconButton(
                onPressed: () {
                  print("tap");
                },
                icon: Icon(Icons.more_horiz),
                iconSize: 35.0,
                color: Colors.grey,
              )
            ],
          ),
        ),
        Container(
            height: 120.0,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: Message.favorites.length,
                itemBuilder: (BuildContext context, int index) {
                  return Avatar(index);
                })),
      ],
    );
  }
}
