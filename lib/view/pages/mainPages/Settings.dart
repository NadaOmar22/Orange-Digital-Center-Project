import 'package:flutter/material.dart';
import 'package:odc_project/view/pages/pagesRelatedToSettings/Support.dart';
import 'package:odc_project/view/pages/auth/Login.dart';

import '../pagesRelatedToSettings/FAQ.dart';
import '../pagesRelatedToSettings/Partners.dart';
import '../pagesRelatedToSettings/Terms.dart';

class Settings extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(30.0),
                child: Text(
                  'Settings',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 30.0,
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => FAQ()));
                },
                child: ListTile(
                  title: Text('FAQ'),
                  trailing: Icon(Icons.arrow_forward_ios_outlined),
                ),
              ),
              Divider(
                color: Colors.grey,
                height: 25,
                thickness: 1,
                indent: 5,
                endIndent: 5,
              ),
              InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Terms()));
                },
                child: ListTile(
                  title: Text('Terms & Conditions'),
                  trailing: Icon(Icons.arrow_forward_ios_outlined),
                ),
              ),
              Divider(
                color: Colors.grey,
                height: 25,
                thickness: 1,
                indent: 5,
                endIndent: 5,
              ),
              InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Parteners()));
                },
                child: ListTile(
                  title: Text('Our Parteners'),
                  trailing: Icon(Icons.arrow_forward_ios_outlined),
                ),
              ),
              Divider(
                color: Colors.grey,
                height: 25,
                thickness: 1,
                indent: 5,
                endIndent: 5,
              ),
              InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Support()));
                },
                child: ListTile(
                  title: Text('Support'),
                  trailing: Icon(Icons.arrow_forward_ios_outlined),
                ),
              ),
              Divider(
                color: Colors.grey,
                height: 25,
                thickness: 1,
                indent: 5,
                endIndent: 5,
              ),
              InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Login()));
                },
                child: ListTile(
                  title: Text('Log out'),
                  trailing: Icon(Icons.arrow_forward_ios_outlined),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
