import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';


class Calendar1 extends StatefulWidget {
  Calendar1({super.key, required this.title});

  final String title;

  @override
  State<Calendar1> createState() => EventCal();
}

class EventCal extends State<Calendar1> {

  @override
  Widget build(BuildContext context) {
    return SfCalendar(
      view: CalendarView.month,

      //initialDisplayDate: DateTime(2021, 03, 01, 08, 30),
      //initialSelectedDate: DateTime(2021, 03, 01, 08, 30),
      dataSource: MeetingDataSource(getAppointments()),
    );
  }
}

List<Appointment> getAppointments() {
  List<Appointment> meetings = <Appointment>[];
  // String dateStringstart = '2023-06-20 10:30:00';
  // DateTime startTime = DateTime.parse(dateStringstart);
  // String dateStringend = '2023-07-21 10:30:00';
  // DateTime endTime = DateTime.parse(dateStringend);
  final DateTime today = DateTime.now();
  final DateTime startTime =
  DateTime(today.year, today.month, today.day, 9, 0, 0);
  final DateTime endTime = startTime.add(const Duration(hours: 2));

  meetings.add(Appointment(
      startTime: startTime,
      endTime: endTime,
      subject: 'Your Product Is Going to Expire In 30 days',
      color: Colors.blue,
      //recurrenceRule: 'FREQ=DAILY;COUNT=10',
      isAllDay: true));

  return meetings;
}

class MeetingDataSource extends CalendarDataSource {
  MeetingDataSource(List<Appointment> source) {
    appointments = source;
  }
}