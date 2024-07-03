import 'package:flutter/material.dart';
class MyContainer extends StatelessWidget {
  const MyContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Container'),
        backgroundColor: Colors.green,
      ),

      body: Container(
        height: 100,
        width: 100,
        color: Colors.blue.shade100,
        child: Center(
          child: Text('hello user',style: TextStyle(fontSize: 25),),
        ),
      ),
    );
  }
}
