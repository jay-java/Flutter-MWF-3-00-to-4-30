import 'package:flutter/material.dart';
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
              height: double.infinity,
              width: double.infinity,
              color: Colors.yellow.shade700,
            ),
          ),
          Positioned(
            top: 150,
            child: Container(
              height: 650,
              width: 415,
              decoration: BoxDecoration(
                  color: Colors.white,
                borderRadius: BorderRadius.only(topLeft: Radius.circular(80),topRight: Radius.circular(80))
              ),
            ),
          ),
          Positioned(
            left: 160,
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
