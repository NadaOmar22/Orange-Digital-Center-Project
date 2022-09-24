
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget OR_Row()
{
  return Row(
    children: [
      Container(
        width: 150.0,
        height: 3.0,
        color: Colors.grey,
      ),
      Text(
        ' OR ',
        style: TextStyle(
          fontSize: 20.0,
        ),
      ),
      Container(
        width: 150.0,
        height: 3.0,
        color: Colors.grey,
      ),
    ],
  );
}