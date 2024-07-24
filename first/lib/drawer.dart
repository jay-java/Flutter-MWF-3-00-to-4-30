import 'package:flutter/material.dart';

class MyNavDrawer extends StatelessWidget {
  const MyNavDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: ListView(
      children: [
        UserAccountsDrawerHeader(
          accountName: Text('flutter'),
          accountEmail: Text('flutter@gmail.com'),
          currentAccountPicture: CircleAvatar(
            child: Image.asset('images/*'),
          ),
          decoration: BoxDecoration(color: Colors.grey.shade800),
        ),
        ListTile(
          leading: Icon(Icons.home),
          title: Text('Home'),
          onTap: () {
            print('Home');
          },
        ),
        ListTile(
          leading: Icon(Icons.inbox),
          title: Text('Inbox'),
          onTap: () {
            print('Inbox');
          },
        ),
        ListTile(
          leading: Icon(Icons.star),
          title: Text('Starred'),
          onTap: () {
            print('Starred');
          },
        ),
        ListTile(
          leading: Icon(Icons.upload),
          title: Text('Upload'),
          onTap: () {
            print('upload');
          },
        ),
        ListTile(
          leading: Icon(Icons.settings),
          title: Text('Settings'),
          onTap: () {
            print('Settings');
          },
        ),
        ListTile(
          leading: Icon(Icons.logout),
          title: Text('Logout'),
          onTap: () {
            print('logout');
          },
        )
      ],
    ));
  }
}
