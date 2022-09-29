import 'package:flutter/material.dart';
import 'package:lms/view/components/shared/custom_appbar_text.dart';
// import 'package:syncfusion_flutter_calendar/calendar.dart';

class EventsPage extends StatelessWidget {
  const EventsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: customAppBarText("Events"),
        backgroundColor: Colors.white,
        elevation: 8,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios_new,
            color: Colors.deepOrange,
          ),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
      // body: Container(
      //   child: SfCalendar(
      //     view: CalendarView.month,
      //   ),
      // ),
    );
  }
}
