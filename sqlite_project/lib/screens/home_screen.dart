import 'package:flutter/material.dart';
import 'package:sqlite_project/helpers/drawer_navigation.dart';
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
            'ToDoList sqflite',
            style: TextStyle(fontSize: 25,fontWeight:FontWeight.w500)),
        backgroundColor: Colors.green,
      ),
      drawer: MyDrawerNavigation(),
    );
  }
}
