import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget AddNoteButton()
{
  return Container(
    width: 90,
    height: 50,
    child: ElevatedButton(
      child: Text(
        ' + Add ',
        style: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.bold,
        ),
      ),
      onPressed: () {},
      style: ElevatedButton.styleFrom(
          backgroundColor: Colors.grey),
    ),
  );
}