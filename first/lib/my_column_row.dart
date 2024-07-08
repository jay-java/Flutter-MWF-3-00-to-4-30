import 'package:flutter/material.dart';
class MyColumn extends StatelessWidget {
  const MyColumn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Column'),
        backgroundColor: Colors.blue,
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              height: 100,
              width: 100,
              color: Colors.green,
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('First',style: TextStyle(fontSize: 25),),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('Second',style: TextStyle(fontSize: 25),),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('Third',style: TextStyle(fontSize: 25),),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('Third',style: TextStyle(fontSize: 25),),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('Third',style: TextStyle(fontSize: 25),),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('Third',style: TextStyle(fontSize: 25),),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('Third',style: TextStyle(fontSize: 25),),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('Third',style: TextStyle(fontSize: 25),),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('Third',style: TextStyle(fontSize: 25),),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('Third',style: TextStyle(fontSize: 25),),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('Third',style: TextStyle(fontSize: 25),),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('Third',style: TextStyle(fontSize: 25),),
            ),          Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('Third',style: TextStyle(fontSize: 25),),
            ),          Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('Third',style: TextStyle(fontSize: 25),),
            ),          Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('Third',style: TextStyle(fontSize: 25),),
            ),          Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('Third',style: TextStyle(fontSize: 25),),
            ),          Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('Third',style: TextStyle(fontSize: 25),),
            ),
        
        
        
        
        
        
          ],
        ),
      )
    );
  }
}
