import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget NotesTextField (String name , int lines)
{
  return  Container(
    child: TextFormField(
      maxLines: lines,
      decoration: InputDecoration(
        alignLabelWithHint: true,
        isDense: true,
        label: Text(name,
          style: TextStyle(
            color: Colors.black,
          ),),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.only(
            topLeft:Radius.circular(20),
            bottomRight:Radius.circular(20), ),
          borderSide: BorderSide(color:Colors.teal),
        ),
      ),
    ),
    margin: EdgeInsets.only(bottom: 20),
  );

}