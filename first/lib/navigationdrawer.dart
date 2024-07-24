import 'package:flutter/material.dart';

import 'drawer.dart';

class MyNavigationDrawer extends StatefulWidget {
  const MyNavigationDrawer({super.key});

  @override
  State<MyNavigationDrawer> createState() => _MyNavigationDrawerState();
}

class _MyNavigationDrawerState extends State<MyNavigationDrawer> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        drawer: MyNavDrawer(),
        appBar: AppBar(
          title: Text('Navigation Drawer'),
        ),
        body: Center(
            child: Text(
          'Navigation Drawer',
          style: TextStyle(fontSize: 40),
        )),
      ),
    );
  }
}
