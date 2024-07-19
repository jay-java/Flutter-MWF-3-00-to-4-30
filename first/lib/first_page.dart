import 'package:first/second_page.dart';
import 'package:flutter/material.dart';

class MyFirstPage extends StatefulWidget {
  const MyFirstPage({super.key});

  @override
  State<MyFirstPage> createState() => _MyFirstPageState();
}

class _MyFirstPageState extends State<MyFirstPage> {
  TextEditingController _name = TextEditingController();
  TextEditingController _conatct = TextEditingController();
  TextEditingController _email = TextEditingController();
  TextEditingController _password = TextEditingController();
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Page One'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextField(
                controller: _name,
                decoration: InputDecoration(
                    border: OutlineInputBorder(), labelText: 'Enter name'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextField(
                controller: _conatct,
                decoration: InputDecoration(
                    border: OutlineInputBorder(), labelText: 'Enter conatct'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextField(
                controller: _email,
                decoration: InputDecoration(
                    border: OutlineInputBorder(), labelText: 'Enter email'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextField(
                controller: _password,
                decoration: InputDecoration(
                    border: OutlineInputBorder(), labelText: 'Enter password'),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            OutlinedButton(
                onPressed: () {
                  print('name : $_name');
                  print('contact : $_conatct');
                  print('email: $_email');
                  print('password : $_password');
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => MySecondPage(
                        name: _name.text.toString(),
                        contact: _conatct.text.toString(),
                        email: _email.text.toString(),
                        password: _password.text.toString(),
                      )));
                },
                child: Text('click here'))
          ],
        ),
      ),
    );
  }
}
