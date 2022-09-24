import 'package:flutter/material.dart';

import '../../components/core/AppBarOfPagesRelatedToSettings.dart';
import '../../components/support/SubmitButton.dart';
import '../../components/support/SupportTextField.dart';

class Support extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBarOfPageRelatedToSettings(
            context, 'Support', Colors.black, Colors.orangeAccent),
        body: Padding(
          padding: const EdgeInsets.all(30.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SupportTextField(' Name', Icons.person, 2),
                SupportTextField(' Email', Icons.email, 2),
                SupportTextField('What’s making you unhappy', Icons.person, 7),
                SubmitButton(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
