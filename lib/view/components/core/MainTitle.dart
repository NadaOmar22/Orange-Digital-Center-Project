import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget MainTitle() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      Text(
        'Orange',
        style: TextStyle(
          color: Colors.orangeAccent,
          fontSize: 25.0,
          fontWeight: FontWeight.bold,
        ),
      ),
      Text(
        ' Digital Center',
        style: TextStyle(
          color: Colors.black,
          fontSize: 25.0,
          fontWeight: FontWeight.bold,
        ),
      ),
    ],
  );
}
