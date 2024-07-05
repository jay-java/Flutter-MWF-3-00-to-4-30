import 'package:flutter/material.dart';
class MyImage extends StatelessWidget {
  const MyImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Image'),
        backgroundColor: Colors.grey,
      ),
      body: Container(
        height: 150,
        width: 150,
        child: Image.asset('assets/all_images/chair.png'),
      ),
    );
  }
}
