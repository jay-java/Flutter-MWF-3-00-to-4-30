import 'package:flutter/material.dart';

class MySecondPage extends StatelessWidget {
  String? name;
  String? contact;
  String? email;
  String? password;

  MySecondPage(
      {required this.name,
        required this.contact,
        required this.email,
        required this.password});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Text(
            'Name : $name',
            style: TextStyle(fontSize: 25),
          ),
          Text(
            'Contact : $contact',
            style: TextStyle(fontSize: 25),
          ),
          Text(
            'Email : $email',
            style: TextStyle(fontSize: 25),
          ),
          Text(
            'Password : $password',
            style: TextStyle(fontSize: 25),
          ),
        ],
      ),
    );
  }
}
