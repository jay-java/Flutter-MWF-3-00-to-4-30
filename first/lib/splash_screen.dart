import 'dart:async';

import 'package:flutter/material.dart';

import 'first_page.dart';

class MySplashScreen extends StatefulWidget {
  const MySplashScreen({super.key});

  @override
  State<MySplashScreen> createState() => _MySplashScreenState();
}

class _MySplashScreenState extends State<MySplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 2), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => MyFirstPage()));
    });
  }



  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey.shade800,
      child: Center(
        child: Text(
          'Chatting',
          style: TextStyle(
              fontSize: 40, fontStyle: FontStyle.italic, color: Colors.white),
        ),
      ),
    );
  }
}
