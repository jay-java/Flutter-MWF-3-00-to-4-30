import 'package:flutter/material.dart';
class MyColumn extends StatelessWidget {
  const MyColumn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Column'),
        backgroundColor: Colors.green,
      ),
      body: Column(
        children: [
          Container(
              height: 100,
              width: 100,
              color: Colors.grey,
              child: Center(child: Text('Kavan',style: TextStyle(fontSize: 25,color: Colors.blue),))),
          Text('Gopal',style: TextStyle(fontSize: 25),),
          Text('Vinay',style: TextStyle(fontSize: 25),),
        ],
      ),
    );
  }
}
