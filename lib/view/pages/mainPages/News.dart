import 'package:flutter/material.dart';
import 'NavBar.dart';

class News extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          body: Padding(
            padding: const EdgeInsets.all(30.0),
            child: Column(
              children: [
                Center(
                  child: Text(
                    'News',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 30.0,
                    ),
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
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
                    Positioned(
                      child: Container(
                        width: 80,
                        decoration: BoxDecoration(
                          color: Colors.orangeAccent,
                          borderRadius: BorderRadiusDirectional.circular(20),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Icon(
                              Icons.share_rounded,
                              color: Colors.white,
                            ),
                            Container(
                              color: Colors.white,
                              height: 20,
                              width: 2,
                            ),
                            Icon(
                              Icons.copy,
                              color: Colors.white,
                            ),
                          ],
                        ),
                      ),
                      top: 10,
                      right: 10,
                    ),
                    Positioned(
                      child: Text(
                        'ODC support all universities',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 10.0,
                        ),
                      ),
                      bottom: 10,
                      left: 10,
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
