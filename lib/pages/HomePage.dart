import 'package:flutter/material.dart';
import 'info.dart';

class MyHome extends StatelessWidget {
  const MyHome({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    const url = 'http://devcodinghub.com';
const email = 'deedeepak976@gmail.com';
const phone = '+91 9519724948';
const location = 'Gorakhpur, U.P.';
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My Profile'),
          centerTitle: true,
        ),
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 60,
                backgroundImage: AssetImage('images/Dev.jpeg'),
              ),
            Text('Deepak Yadav',
                style: TextStyle(
                    fontSize: 40,
                    color: Colors.white,
                    fontWeight: FontWeight.bold)),
            Text(
              'Student at Chandigarh University',
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.teal[50],
                  letterSpacing: 2.5,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 20,
              width: 200,
              child: Divider(
                color: Colors.teal.shade700,
              ),
            ),
            Info(
              text: phone,
              icon: Icons.phone,
            ),
            Info(
              text: email,
              icon: Icons.email,
            ),
            Info(
              text: url,
              icon: Icons.web,
            ),
            Info(
              text: location,
              icon: Icons.location_city,
            ),
            ],
          ),
        ),
        backgroundColor: Colors.teal[200],
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
