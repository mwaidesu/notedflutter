import 'package:flutter/material.dart';
import 'package:noted/pages/first_page.dart';
import 'package:noted/pages/home_page.dart';
import 'package:noted/pages/profile_page.dart';
import 'package:noted/pages/settings_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FirstPage(),
      routes: {
        '/homepage': (context) => HomePage(),
        '/settingspage': (context) => SettingsPage(),
        '/profilepage':(context) => ProfilePage(),
      },
    );
  }
}
