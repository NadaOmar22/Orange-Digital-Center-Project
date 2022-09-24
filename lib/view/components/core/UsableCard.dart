import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:odc_project/view/pages/PagesRelatedToHome/Finals.dart';
import 'package:odc_project/view/pages/PagesRelatedToHome/Lectures.dart';
import 'package:odc_project/view/pages/PagesRelatedToHome/Sections.dart';

import '../../pages/PagesRelatedToHome/Events.dart';
import '../../pages/PagesRelatedToHome/Midterms.dart';
import '../../pages/pagesRelatedToNotes/AddNote.dart';

Widget UsableCard(String subject , String day ,
    String stime , String etime )
{
  return Padding(
    padding: const EdgeInsets.all(10.0),
    child: Card(
      elevation: 20,
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  subject,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0,
                  ),
                ),
                Row(
                  children: [
                    Icon(Icons.alarm),
                    Text('2hrs'),
                  ],
                )
              ],
            ),
            SizedBox(
              height: 15.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Text(
                      "Section day",
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.calendar_month,
                        ),
                        Text(day),
                      ],
                    )
                  ],
                ),
                Column(
                  children: [
                    Text(
                      'Start time',
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                    Row(children: [
                      Icon(
                        Icons.watch_later,
                        color: Colors.lightGreen,
                      ),
                      Text(stime),
                    ])
                  ],
                ),
                Column(
                  children: [
                    Text(
                      'End time',
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                    Row(children: [
                      Icon(
                        Icons.watch_later,
                        color: Colors.redAccent,
                      ),
                      Text(etime),
                    ])
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    ),
  );
}