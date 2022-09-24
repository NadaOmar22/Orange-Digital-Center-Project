
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../pages/mainPages/Home.dart';

AppBar AppBarOfPagesRelatedToHome(BuildContext context , String title)
{
  return AppBar(
    leading: IconButton(
      color: Colors.orangeAccent,
      onPressed: () {
        Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Home()));
      },
      icon: Icon(
        Icons.arrow_back,
      ),
    ),
    title: Text(
      title,
      style: TextStyle(
        color: Colors.black,
        fontWeight: FontWeight.bold,
      ),
    ),
    actions: [
      Icon(
        IconData(
          0xe27a,
          fontFamily: 'MaterialIcons',
        ),
        color: Colors.orangeAccent,
        size: 30,
      ),
    ],
    backgroundColor: Colors.white,
    centerTitle: true,
  );
}