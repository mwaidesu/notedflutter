// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:noted/pages/home_page.dart';
import 'package:noted/pages/profile_page.dart';
import 'package:noted/pages/settings_page.dart';
// import 'package:noted/pages/second_page.dart';

class FirstPage extends StatefulWidget {
  FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  int _selectedIndex = 0;

  void navigateBottomBar(int index) {
    setState((){
      _selectedIndex = index;
    });
  }

  final List _pages = [
    HomePage(),
    ProfilePage(),
    SettingsPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text("First Page"),
        ),
        body: _pages[_selectedIndex],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _selectedIndex,
          onTap: navigateBottomBar,
          items: [
            //home
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),

            //profile
            BottomNavigationBarItem(
                icon: Icon(Icons.account_box_outlined), label: 'Account'),

            //settings
            BottomNavigationBarItem(
                icon: Icon(Icons.settings), label: 'Settings'),
          ],
        ),
      ),
    );
  }
}
