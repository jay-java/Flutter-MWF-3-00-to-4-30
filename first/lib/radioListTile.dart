import 'package:flutter/material.dart';

class MyRadioListTile extends StatefulWidget {
  const MyRadioListTile({super.key});

  @override
  State<MyRadioListTile> createState() => _MyRadioListTileState();
}

class _MyRadioListTileState extends State<MyRadioListTile> {
  int _value = 1;
  int i =0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('RadioListTile'),
        ),
        body:
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            RadioListTile(
              value: 1,
              groupValue: _value,
              onChanged: (value) {
                setState(() {
                  _value = value!;
                });
              },
              activeColor: Colors.deepOrange,
              title: Text('Radio 1'),
              subtitle: Text('Subtitle radio 1'),
            ),
            RadioListTile(
              value: 2,
              groupValue: _value,
              onChanged: (value) {
                setState(() {
                  _value = value!;
                });
              },
              activeColor: Colors.deepOrange,
              title: Text('Radio 2'),
              subtitle: Text('Subtitle radio 2'),
            ),
            RadioListTile(
              value: 3,
              groupValue: _value,
              onChanged: (value) {
                setState(() {
                  _value = value!;
                });
              },
              activeColor: Colors.deepOrange,
              title: Text('Radio 3'),
              subtitle: Text('Subtitle radio 3'),
            ),
            SizedBox(
              height: 20,
            ),
            Text('i = $i',style: TextStyle(fontSize: 25),)
          ],
        ),
      floatingActionButton: FloatingActionButton(onPressed: () {
        setState(() {
          i++;
        });
      },
      backgroundColor: Colors.green,
      child: Icon(Icons.add),),
      ),
    );
  }
}
