import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';
import 'dart:convert';

class Calendar1 extends StatefulWidget {
  String qrCodeResult;
  Calendar1({super.key, required this.title,required this.qrCodeResult});

  final String title;

  @override
  State<Calendar1> createState() => EventCal();
}
class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Calendar"),
      ),

      );
  }
}
class EventCal extends State<Calendar1> {

  var jsonData;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    fetchResultFromQrCode();
  }

  void fetchResultFromQrCode(){
    int len = widget.qrCodeResult.length;
    String result = widget.qrCodeResult.substring(1, (len -1));
    print("Result: $result");
    jsonData = jsonDecode(result);
    print(jsonData['result'][0]['product']);
  }

  @override
  Widget build(BuildContext context) {


    return Scaffold(
      appBar: AppBar(
        title: Text("Calendar"),
      ),
      body:SfCalendar(

        view: CalendarView.timelineWeek,
        cellBorderColor: Colors.blueAccent,
        backgroundColor: Colors.white,

        //initialDisplayDate: DateTime(2021, 03, 01, 08, 30),
        //initialSelectedDate: DateTime(2021, 03, 01, 08, 30),
        dataSource: MeetingDataSource(getAppointments(jsonData)),

      ) ,
    );
  }
}

List<Appointment> getAppointments(Map<String, dynamic> jsonData) {
  List<Appointment> meetings = <Appointment>[];
   String dateStringstart = '2023-06-19 11:30:00';
  // DateTime startTime = DateTime.parse(dateStringstart);
  // String dateStringend = '2023-07-21 10:30:00';
  // DateTime endTime = startTime.add(const Duration(hours: 2));
  // final DateTime today = DateTime.now();
  // final DateTime startTime =
  // DateTime(today.year, today.month, today.day, 9, 0, 0);
  // final DateTime endTime = startTime.add(const Duration(hours: 2));
  print(jsonData['result'][0]['product']);

  for(int i=0;i<=2;i++) {
    String dateStringstart = jsonData['result'][i]['date'];
    DateTime starttime = DateTime.parse(dateStringstart);
    meetings.add(Appointment(
        startTime: starttime,
        endTime: starttime.add(const Duration(hours: 10)),
        subject: 'Your ${jsonData['result'][i]['product']} Is Going to Expire In 30 days',

        color: Colors.blue,
        //recurrenceRule: 'FREQ=DAILY;COUNT=10',
        isAllDay: false));
  }
  return meetings;
}

class MeetingDataSource extends CalendarDataSource {
  MeetingDataSource(List<Appointment> source) {
    appointments = source;
  }
}