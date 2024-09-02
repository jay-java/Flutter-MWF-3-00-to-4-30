import 'package:flutter/material.dart';
import 'dart:io';
import 'package:url_launcher/url_launcher.dart' as launcher;

class MyLauncherPage extends StatelessWidget {
  const MyLauncherPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Launchers'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            launcherButtons(
              title: 'Phone Launcher',
              icon: Icons.phone,
              onPressed: () {
                Uri uri = Uri.parse('tel:+919662261373');
                launcher.launchUrl(uri);
              },
            ),
            launcherButtons(
              title: 'Lunach URL',
              icon: Icons.language,
              onPressed: () {
                launcher.launchUrl(Uri.parse('https://pub.dev/'));
              },
            ),
            launcherButtons(
              title: 'Launch Email',
              icon: Icons.email,
              onPressed: () {
                Uri uri = Uri.parse('mailto:');
                launcher.launchUrl(uri);
              },
            ),
            launcherButtons(
              title: 'Launch SMS',
              icon: Icons.message,
              onPressed: () {
                launcher.launchUrl(
                  Uri.parse(
                      'sms:9662261373${Platform.isAndroid ? '?' : '&'}body=hello this msg from flutter'),
                );
              },
            )
          ],
        ),
      ),
    );
  }

  Widget launcherButtons({
    required String title,
    required IconData icon,
    required Function() onPressed,
  }) {
    return Container(
      height: 50,
      child: ElevatedButton(
        onPressed: onPressed,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(title),
            Icon(icon),
          ],
        ),
      ),
    );
  }
}
