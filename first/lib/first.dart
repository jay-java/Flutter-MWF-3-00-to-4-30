import 'package:flutter/material.dart';
class MyFirstDesign extends StatelessWidget {
  const MyFirstDesign({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('First App'),
        backgroundColor: Colors.green,
      ),
      body: Center(
        child :Text(
            'hello',
            style: TextStyle(
              color: Colors.white,
              backgroundColor: Colors.blue,
              fontSize: 30,
            )),
      )
    );
  }
}
