import 'package:flutter/material.dart';
class MyInkWell extends StatelessWidget {
  const MyInkWell({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('InkWell'),
        backgroundColor: Colors.purple,
      ),
      body: Center(
        child: InkWell(
          onTap: (){
            print('single tap on container');
          },
          onDoubleTap: (){
            print('double tap on container');
          },
          onLongPress: (){
            print('long press on container');
          },
          child: Container(
            height: 300,
            width: 300,
            color: Colors.grey,
            child: Center(
              child: InkWell(
                onTap: (){
                  print('clicked on text');
                },
                child: Text(
                  'click here',
                  style: TextStyle(
                    fontSize: 25
                ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
