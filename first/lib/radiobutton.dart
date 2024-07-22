import 'package:flutter/material.dart';

class MyRadioButton extends StatefulWidget {
  const MyRadioButton({super.key});

  @override
  State<MyRadioButton> createState() => _MyRadioButtonState();
}

class _MyRadioButtonState extends State<MyRadioButton> {
  int _value = 1;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('RadioButton'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              children: [
                Radio(
                    value: 1,
                    groupValue: _value,
                    onChanged: (value) {
                      setState(() {
                        _value = value!;
                      });
                    }),
                SizedBox(
                  width: 10,
                ),
                Text('Male')
              ],
            ),
            Row(
              children: [
                Radio(
                    value: 2,
                    groupValue: _value,
                    onChanged: (value) {
                      setState(() {
                        _value = value!;
                      });
                    }),
                SizedBox(
                  width: 10,
                ),
                Text('Female')
              ],
            ),
            Row(
              children: [
                Radio(
                    value: 3,
                    groupValue: _value,
                    onChanged: (value) {
                      setState(() {
                        _value = value!;
                      });
                    }),
                SizedBox(
                  width: 10,
                ),
                Text('Other')
              ],
            ),
          ],
        ),
      ),
    );
  }
}
