import 'package:flutter/cupertino.dart';
import 'package:calendar_view/calendar_view.dart';
import 'package:flutter/material.dart';

import '../../components/core/AppBarOfPagesRelatedToHome.dart';

class Events extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CalendarControllerProvider(
      controller: EventController(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBarOfPagesRelatedToHome(context, 'Events'),
          body: MonthView(),
        ),
      ),
    );
  }
}
