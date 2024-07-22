import 'package:flutter/material.dart';

class MyCheckBox extends StatefulWidget {
  const MyCheckBox({super.key});

  @override
  State<MyCheckBox> createState() => _MyCheckBoxState();
}

class _MyCheckBoxState extends State<MyCheckBox> {
  bool checkBox1 = false;
  bool checkBox2 = false;
  bool checkBox3 = false;
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('CheckBox'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              children: [
                Checkbox(
                    value: checkBox1,
                    onChanged: (value) {
                      setState(() {
                        checkBox1 = value!;
                      });
                    }),
                SizedBox(
                  width: 10,
                ),
                Text('CheckBox 1')
              ],
            ),
            Row(
              children: [
                Checkbox(
                    value: checkBox2,
                    onChanged: (value) {
                      setState(() {
                        checkBox2 = value!;
                      });
                    }),
                SizedBox(
                  width: 10,
                ),
                Text('CheckBox 2')
              ],
            ),
            Row(
              children: [
                Checkbox(
                    value: checkBox3,
                    onChanged: (value) {
                      setState(() {
                        checkBox3 = value!;
                      });
                    }),
                SizedBox(
                  width: 10,
                ),
                Text('CheckBox 3')
              ],
            ),
          ],
        ),
      ),
    );
  }
}
