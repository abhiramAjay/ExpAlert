import 'package:exp_alert/scanorcal.dart';
import 'package:flutter/material.dart';
import 'scanner.dart';
class LoginPage extends StatelessWidget {
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
        padding: EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextFormField(
              decoration: InputDecoration(
                labelText: 'Email',
              ),
            ),
            SizedBox(height: 15.0),
            TextFormField(
              decoration: InputDecoration(
                labelText: 'Password',
              ),
              obscureText: true,
            ),
            SizedBox(height: 15.0),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) { return centerpage();}));
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Color.fromRGBO(109,144,167,1), // Change this color to your desired color
              ),
              child: Text('Login'),
            ),
            // ElevatedButton(
            //   onPressed: () {
            //     AuthService().signInWithGoogle();
            //   },
            //   child: Text('Signin With Google'),
            // )
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: LoginPage(),
  ));
}
