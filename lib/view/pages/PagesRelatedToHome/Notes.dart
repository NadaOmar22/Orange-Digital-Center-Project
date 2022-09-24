import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../components/core/AppBarOfPagesRelatedToHome.dart';
import '../pagesRelatedToNotes/AddNote.dart';

class Notes extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBarOfPagesRelatedToHome(context, 'Notes'),
          body: MaterialApp(
            debugShowCheckedModeBanner: false,
            home: Scaffold(
              body: Center(
                  child: Column(
                children: [
                  SizedBox(
                    height: 300,
                  ),
                  Center(
                    child: Text(
                      'There is no Data to Show',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 250,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 300,
                    ),
                    child: FloatingActionButton(
                      backgroundColor: Colors.grey,
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => AddNote()));
                      },
                      child: Icon(
                        Icons.add,
                        size: 35,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ],
              )),
            ),
          )),
    );
  }
}
