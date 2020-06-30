import 'package:chat/models/message_model.dart';
import 'package:flutter/material.dart';

class Avatar extends StatelessWidget {
  final int _index;

  Avatar(this._index);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 20.0, right: 1.0),
      child: Column(
        children: <Widget>[
          CircleAvatar(
            radius: 35.0,
            backgroundImage: AssetImage(Message.favorites[_index].imageUrl),
          ),
          SizedBox(height: 12.0),
          Text(
            Message.favorites[_index].name,
            style: TextStyle(color: Colors.blueGrey),
          ),
        ],
      ),
    );
  }
}
