import 'package:flutter/material.dart';

class List_items extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ListViewPage(),
    );
  }
}

class ListViewPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Product List'),
        backgroundColor: Color.fromRGBO(30,45,62,1),
      ),
      body: Container(
        decoration: BoxDecoration(

          image: DecorationImage(
            image: AssetImage('assets/img/theme.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: ListView(
          children: <Widget>[
            Container(decoration: BoxDecoration(

                border: Border.all(color: Color.fromRGBO(4,94,125,1), width: 3)
    ),

              child: ListTile(
                title: Text('Maggie:',
                  style: TextStyle(
                    color: Colors.white, // Change this color to your desired color
                    fontSize: 24,
                  ), ),
                subtitle: Text('Going to expire in 1 day',
    style: TextStyle(
    color: Colors.white, // Change this color to your desired color
    fontSize: 18,
    ), ),
                leading: Image.asset('assets/img/maggi.png'),
              ),
            ),
            Container(decoration: BoxDecoration(

                border: Border.all(color: Color.fromRGBO(4,94,125,1), width: 3)
            ),
              child: ListTile(
                title: Text('Oreo:',
                  style: TextStyle(
                    color: Colors.white, // Change this color to your desired color
                    fontSize: 24,
                  ), ),
                subtitle: Text('Going to expire in 2 day'
                  ,
                  style: TextStyle(
                    color: Colors.white, // Change this color to your desired color
                    fontSize: 18,
                  ), ),
                leading: Image.asset('assets/img/Oreo.png'),
              ),
            ),
            Container(decoration: BoxDecoration(

                border: Border.all(color: Color.fromRGBO(4,94,125,1), width: 3)
            ),
              child: ListTile(
                title: Text('Red Label:',
                  style: TextStyle(
                    color: Colors.white, // Change this color to your desired color
                    fontSize: 24,
                  ), ),
                subtitle: Text('Going to expire in 3 day',
                  style: TextStyle(
                    color: Colors.white, // Change this color to your desired color
                    fontSize: 18,
                  ), ),
                leading: Image.asset('assets/img/red.png'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
