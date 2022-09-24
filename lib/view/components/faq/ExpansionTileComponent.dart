import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';

Widget ExpansionTileComponent(String subtitle, String item) {
  return ExpansionTile(
    title: Container(
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Title(
          child: Html(data: subtitle),
          color: Colors.white,
        ),
      ),
      width: double.infinity,
      height: 50.0,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          color: Colors.orangeAccent),
    ),
    children: <Widget>[
      Padding(
        padding: const EdgeInsets.only(right: 58.0, left: 18.0),
        child: Container(
          child: ListTile(
            title: Title(
              child: Html(data: item),
              color: Colors.white,
            ),
          ),
          height: 50.0,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              color: Colors.grey),
        ),
      ),
    ],
  );
}
