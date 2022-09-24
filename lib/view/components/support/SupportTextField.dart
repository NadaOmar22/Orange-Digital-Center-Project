import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget SupportTextField(String txt , IconData icon , int lines) {
  return Container(
    child: TextFormField(
      maxLines: lines,
      decoration: InputDecoration(
          label: Row(
            children: [
              if(lines <= 2)
                Icon(icon),
              Text(txt),
            ],
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(20),
            ),
          )),
    ),
    margin: EdgeInsets.only(bottom: 20),
  );
}
