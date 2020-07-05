import 'package:flutter/material.dart';
import 'package:shreya/getAppBar.dart';
import 'package:shreya/users.dart';

import 'circular_Border.dart';

class HomePage extends StatelessWidget {
  final List<Users> user =getDataFromServer();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: getAppBar('People',Colors.grey.shade500),
      body: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: user.length,
        itemBuilder: (BuildContext context ,int index){
          return CircularBorder(users:user[index]);
        },
      ),
    );
  }
}