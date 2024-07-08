import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
class MyStack extends StatelessWidget {
  const MyStack({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('MyStack'),
        backgroundColor: Colors.blue,
      ),
      body: Stack(
        children: [
          Positioned(
            child: Container(
              height: 300,
              width: 300,
              color: Colors.blue,
            ),
          ),
          Positioned(
            top: 50,
            left: 50,
            child: Container(
              height: 200,
              width: 200,
              color: Colors.yellow,
            ),
          ),
          Positioned(
            left: 100,
            top: 100,
            child: Container(
              height: 100,
              width: 100,
              color: Colors.grey,
            ),
          ),
        ],
      ),
    );
  }
}
