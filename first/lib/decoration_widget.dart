import 'package:flutter/material.dart';
class MyDecorsation extends StatelessWidget {
  const MyDecorsation({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Decoration'),
        backgroundColor: Colors.blue,
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: Center(
          child: Container(
            height: 150,
            width: 150,
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.circular(10),
              border: Border.all(
                  color: Colors.black,
                  width: 2
                ),

              )
            ),

          ),
        ),
      );
  }
}
