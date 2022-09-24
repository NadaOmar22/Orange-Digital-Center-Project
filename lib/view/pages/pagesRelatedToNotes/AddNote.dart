import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:odc_project/view/components/Notes/AddNoteButton.dart';

import '../../components/Notes/NotesTextField.dart';
import '../../components/core/AppBarOfPagesRelatedToHome.dart';

class AddNote extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBarOfPagesRelatedToHome(context, 'Add Note'),
        body: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Column(
            children: [
              NotesTextField('Title', 2),
              NotesTextField('Date', 2),
              NotesTextField('Note', 7),
              AddNoteButton(),
            ],
          ),
        ),
      ),
    );
  }
}
