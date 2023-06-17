import 'package:exp_alert/auth_services.dart';
import 'package:flutter/material.dart';
import 'calender.dart';
import 'scanner.dart';
class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: Container(
        color: Color.fromARGB(200,87,188,54),
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
                Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) { return QRViewExample();}));
              },
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
