import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget SubmitButton() {
  return Container(
    width: double.infinity,
    height: 50.0,
    child: ElevatedButton(
      child: Text(
        'Submit',
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
          fontSize: 20.0
        ),
      ),
      onPressed: () {},
      style: ElevatedButton.styleFrom(backgroundColor: Colors.orangeAccent),
    ),
  );
}
