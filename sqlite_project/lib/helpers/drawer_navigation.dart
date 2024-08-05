import 'package:flutter/material.dart';
import 'package:sqlite_project/screens/home_screen.dart';
import '../screens/categories_screen.dart';

class MyDrawerNavigation extends StatefulWidget {
  const MyDrawerNavigation({super.key});

  @override
  State<MyDrawerNavigation> createState() => _MyDrawerNavigationState();
}

class _MyDrawerNavigationState extends State<MyDrawerNavigation> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              currentAccountPicture: CircleAvatar(
                  backgroundImage: AssetImage('assets/images/user.jpg')),
              accountName: Text(
                'Your name',
                style: TextStyle(fontSize: 20),
              ),
              accountEmail: Text(
                'email@email.com',
                style: TextStyle(fontSize: 17),
              ),
              decoration: BoxDecoration(color: Colors.blue),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Home'),
              onTap: (){
                 Navigator.of(context).push(MaterialPageRoute(builder: (context) => HomeScreen(),));
              },
            ),
            ListTile(
              leading: Icon(Icons.view_list),
              title: Text('Categories'),
              onTap: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => CategoriesScreen(),));
              },
            )
          ],
        ),
      ),
    );
  }
}
