import 'package:exp_alert/scanner.dart';
import 'package:flutter/material.dart';

import 'calender.dart';
import 'listview.dart';


class centerpage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: CenteredButtonPage(),
    );
  }
}

class CenteredButtonPage extends StatelessWidget {
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
        child: Center(

          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) { return QRViewExample();}));
                },

            style: ElevatedButton.styleFrom(
            backgroundColor: Color.fromRGBO(109,144,167,1), // Change this color to your desired color
      ),
                child: Text('Scan QR Code'),
              ),
              SizedBox(height: 20), // Add some spacing between the buttons
              ElevatedButton(
                onPressed: () {
                 Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) { return List_items();}));
                },  style: ElevatedButton.styleFrom(
                backgroundColor: Color.fromRGBO(109,144,167,1), // Change this color to your desired color
              ),
                child: Text('Item List'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
