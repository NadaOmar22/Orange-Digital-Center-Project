import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../pages/mainPages/Settings.dart';


AppBar AppBarOfPageRelatedToSettings(BuildContext context , String title , Color color , Color iconColor)
{
  return AppBar(
    leading: IconButton(
        color: Colors.black,
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => Settings()));
        },
        icon:Icon(Icons.arrow_back_ios_new,
          size: 30,
          color: iconColor,
        )
    ),
    title: Text(
      title,
      style: TextStyle(
        color: color,
        fontWeight: FontWeight.bold,
      ),
    ),
    backgroundColor: Colors.white,
    centerTitle: true,
  );
}