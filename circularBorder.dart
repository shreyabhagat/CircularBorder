import 'package:flutter/material.dart';

import 'users.dart';

class CircularBorder extends StatelessWidget {
  final Users users;

  CircularBorder({this.users});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(4),
      child: Column(
        children: <Widget>[
          Stack(
            children: <Widget>[
              Container(
                height: 60,
                width: 60,
                padding: EdgeInsets.all(2),
                child: CircleAvatar(
                  backgroundImage: users.image == null
                      ? AssetImage('images/default.jpg')
                      : AssetImage(users.image),
                ),
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: Colors.grey.shade400, width: 2)),
              ),
              
            ],
          ),
          SizedBox(
            height: 8,
          ),
          Text(users.name),
        ],
      ),
    );
  }
}
