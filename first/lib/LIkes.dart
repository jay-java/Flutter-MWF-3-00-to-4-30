import 'package:flutter/material.dart';

class Likes extends StatelessWidget {
  const Likes({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Likes'),
        ),
        body: Center(
          child: Text('Likes'),
        ),
      ),
    );
  }
}
