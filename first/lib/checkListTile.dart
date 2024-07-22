import 'package:flutter/material.dart';

class MyCheckBoxListTile extends StatefulWidget {
  const MyCheckBoxListTile({super.key});

  @override
  State<MyCheckBoxListTile> createState() => _MyCheckBoxListTileState();
}

class _MyCheckBoxListTileState extends State<MyCheckBoxListTile> {
  bool checkBox1 = false;
  bool checkBox2 = false;
  bool checkBox3 = false;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('CheckBoxListTile'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CheckboxListTile(
              value: checkBox1,
              onChanged: (value) {
                setState(() {
                  checkBox1 = value!;
                });
              },
              activeColor: Colors.amber,
              title: Text('ChekcBox 1'),
              subtitle: Text('subtile check 1'),
            ),
            CheckboxListTile(
              value: checkBox2,
              onChanged: (value) {
                setState(() {
                  checkBox2 = value!;
                });
              },
              activeColor: Colors.amber,
              title: Text('ChekcBox 2'),
              subtitle: Text('subtile check 2'),
            ),
            CheckboxListTile(
              value: checkBox3,
              onChanged: (value) {
                setState(() {
                  checkBox3 = value!;
                });
              },
              activeColor: Colors.amber,
              title: Text('ChekcBox 3'),
              subtitle: Text('subtile check 3'),
            )
          ],
        ),
      ),
    );
  }
}
