import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:odc_project/view/components/Home/HomeCard.dart';
import '../../components/core/MainTitle.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Builder(builder: (context) {
        return Scaffold(
          body: SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(30.0),
              child: Column(
                children: [
                  MainTitle(),
                  SizedBox(
                    height: 20,
                  ),
                  Expanded(
                    child: GridView.count(
                      crossAxisCount: 2,
                      mainAxisSpacing: 10,
                      children: [
                        HomeCard(
                            'Lectures', 'assets/icons/lecture.svg', context),
                        HomeCard(
                            'Sections', 'assets/icons/sections.svg', context),
                        HomeCard(
                            'Midterms', 'assets/icons/midterm.svg', context),
                        HomeCard('Finals', 'assets/icons/final.svg', context),
                        HomeCard('Events', 'assets/icons/event.svg', context),
                        HomeCard('Notes', 'assets/icons/notes.svg', context),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      }),
    );
  }
}
