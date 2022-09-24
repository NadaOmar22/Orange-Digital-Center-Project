import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget FieldOfFormWithIconEnd(String text, TextEditingController textController , IconData iconData , TextInputType textInputType) {
  return TextFormField(
    controller: textController,
    keyboardType: textInputType,
    decoration: InputDecoration(
      label: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(text),
          Icon(iconData,
            color: Colors.orangeAccent,),
        ],
      ),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(20),),
      ),
    ),
  );

}
Widget FieldOfFormWithoutIcon(String text, TextEditingController textController, TextInputType textInputType) {
  return TextFormField(
    controller: textController,
    keyboardType: textInputType,
    decoration: InputDecoration(
      label: Text(text),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(20),),
      ),
    ),
  );

}
