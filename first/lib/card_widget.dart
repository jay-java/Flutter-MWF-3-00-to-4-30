import 'package:flutter/material.dart';
class MyCard extends StatelessWidget {
  const MyCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Card'),
        backgroundColor: Colors.greenAccent,
      ),
      body: Center(
        child: Container(
          height: 200,
          width: 200,
          child: Card(
            elevation: 10,
              shadowColor: Colors.green,
              child: Text('hello flutter developers',style: TextStyle(fontSize: 25),)),
        ),
      ),
    );
  }
}
