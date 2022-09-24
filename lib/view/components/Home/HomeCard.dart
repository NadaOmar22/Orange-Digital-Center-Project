import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:odc_project/view/pages/PagesRelatedToHome/Midterms.dart';
import 'package:odc_project/view/pages/PagesRelatedToHome/Sections.dart';

import '../../pages/PagesRelatedToHome/Notes.dart';
import '../../pages/PagesRelatedToHome/Finals.dart';
import '../../pages/PagesRelatedToHome/Lectures.dart';
import '../../pages/PagesRelatedToHome/Events.dart';

void onClick(String page , BuildContext context)
{
  if(page == 'Sections'){
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => Sections()));
  }
  else if(page == 'Lectures'){
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => Lectures()));
  }
  else if(page == 'Midterms'){
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => Midterms()));
  }
  else if(page == 'Finals'){
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => Finals()));
  }
  else if(page == 'Notes'){
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => Notes()));
  }
  else {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => Events()));
  }
}
Widget HomeCard(String page , String icon , BuildContext context)
{
  return Container(
    width: 150,
    height: 150,
    child: InkWell(
      onTap: (){
        onClick(page, context);
      },
      child: Card(
        elevation: 20,
        child: ElevatedButton(
          child: Column(
            children: [
              IconButton(
                icon: SvgPicture.asset(
                  icon,
                  color: Colors.orangeAccent,
                  width: 70,
                  height: 70,
                ),
                iconSize: 90,
                onPressed: (){
                  onClick(page, context);
                },
              ),
              Text(page,
                style: TextStyle(
                  color: Colors.orangeAccent,
                  fontWeight: FontWeight.bold,
                  fontSize: 20.0,
                ),),
            ],
          ),
          style: ElevatedButton.styleFrom(
            primary: Colors.white,
          ),
          onPressed: () {
          },
        ),
      ),
    ),
  );
}