
import 'dart:developer';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';
import "package:googleapis_auth/auth_io.dart";
import 'package:googleapis/calendar/v3.dart';
import 'package:url_launcher/url_launcher.dart';

import 'calender.dart';


class QRExample extends StatelessWidget {
  var data;

  QRExample({ required this.data});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/img/theme.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Text(data!,style: TextStyle(
                color: Color.fromRGBO(255, 255, 255, 1), // Change this color to your desired color
                fontSize: 20,
              ),),
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                // addevent();
                Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) { return Calendar1(title: "CALENDAR",qrCodeResult:this.data);}));
              },  style: ElevatedButton.styleFrom(
              backgroundColor: Color.fromRGBO(109,144,167,1), // Change this color to your desired color
            ),
              child: Text('Add to Calendar'),
            ),

          ],
        ),
      ),
    );
  }


}


// class Calendar{
//   var credentials ;
//   static const scopes = const [CalendarApi.calendarScope];
//   Calendar(var credentials){
//     this.credentials = credentials;
//   }
//   Event event = Event(); // Create object of event
//
// EventDateTime start = new EventDateTime(); //Setting start time
// EventDateTime end = new EventDateTime(); //setting end time
//
// insertEvent(event){
//   try {
//     clientViaUserConsent(this.credentials, scopes, prompt).then((AuthClient client){
//       var calendar = CalendarApi(client);
//       String calendarId = "primary";
//       calendar.events.insert(this.event,calendarId).then((value) {
//         print("ADDEDDD_________________${value.status}");
//         if (value.status == "confirmed") {
//           log('Event added in google calendar');
//         } else {
//           log("Unable to add event in google calendar");
//         }
//       });
//     });
//   } catch (e) {
//     log('Error creating event $e');
//   }
// }
//
// void prompt(String url) async {
//  try{ print("URL IS: $url");
//  var parsedurl= Uri.parse(url);
//
//    if (await canLaunchUrl(parsedurl)) {
//     await launchUrl(parsedurl);
//  } else {
//     throw 'Could not launch $parsedurl';
//    }}catch(e){print(e);}
// }}
// void addevent(){
//   var credentials1 = new ClientId(
//       "460931234185-dk88ssb32lbhpjq03j32h3iu2oe6ardj.apps.googleusercontent.com",
//       "");
//   Calendar cal = new Calendar(credentials1);
//   cal.event.summary = "Production is going to expire in a month";
//   cal.start.dateTime = startTime;
//   cal.start.timeZone = "GMT+05:00";
//   cal.event.start = cal.start;
//   cal.end.timeZone="GMT+05:00";
//   cal.end.dateTime=endTime;
//   cal.event.end=cal.end;
//   cal.insertEvent(cal.event);
// }