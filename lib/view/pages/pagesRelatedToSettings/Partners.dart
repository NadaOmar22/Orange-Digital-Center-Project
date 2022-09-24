import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../components/core/AppBarOfPagesRelatedToSettings.dart';

class Parteners extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBarOfPageRelatedToSettings(
            context, 'Our Partners', Colors.black, Colors.orangeAccent),
        body: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Column(
            children: [
              Stack(
                children: [
                  Container(
                      width: 700,
                      height: 300,
                      color: Colors.white,
                      child: Image.asset('assets/images/orange.jpeg')),
                  Positioned(
                    child: Text(
                      'ODCs',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15.0,
                      ),
                    ),
                    top: 10,
                    left: 10,
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
