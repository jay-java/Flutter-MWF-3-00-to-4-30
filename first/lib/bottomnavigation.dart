import 'package:flutter/material.dart';

import 'LIkes.dart';
import 'Profile.dart';
import 'Search.dart';
import 'Settings.dart';
import 'home.dart';

class MyBottomNavigation extends StatefulWidget {
  const MyBottomNavigation({super.key});

  @override
  State<MyBottomNavigation> createState() => _MyBottomNavigationState();
}

class _MyBottomNavigationState extends State<MyBottomNavigation> {
  int myIndex = 0;
  List<Widget> myWidgets = const [
    Home(),
    Search(),
    Likes(),
    Settings(),
    Profile()
    // Text(
    //   'Home',
    //   style: TextStyle(fontSize: 40),
    // ),
    // Text(
    //   'Search',
    //   style: TextStyle(fontSize: 40),
    // ),
    // Text(
    //   'Likes',
    //   style: TextStyle(fontSize: 40),
    // ),
    // Text(
    //   'Setting',
    //   style: TextStyle(fontSize: 40),
    // ),
    // Text(
    //   'Profile',
    //   style: TextStyle(fontSize: 40),
    // ),
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        // appBar: AppBar(
        //   title: Text('Bottom Navigation Bar'),
        // ),
        body: Center(
          child: myWidgets[myIndex],
        ),
        bottomNavigationBar: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            backgroundColor: Colors.grey.shade700,
            selectedItemColor: Colors.white,
            // showSelectedLabels: false,
            showUnselectedLabels: false,
            onTap: (value) {
              setState(() {
                myIndex = value;
              });
            },
            currentIndex: myIndex,
            items: [
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.home,
                    color: Colors.orange,
                  ),
                  label: 'Home'),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.search,
                    color: Colors.green,
                  ),
                  label: 'Search'),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.monitor_heart,
                  ),
                  label: 'likes'),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.settings,
                  ),
                  label: 'Settings'),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.person,
                  ),
                  label: 'Profile'),
            ]),
      ),
    );
  }
}
