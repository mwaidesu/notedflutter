// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:noted/pages/first_page.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

   @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Second Page"),
        ),
        body: Center(
          child: ElevatedButton(
            child: Text("Go To First Page"),
            onPressed: () {
              //navigate to second page
              Navigator.pushNamed(context, '/firstpage');
            },
          ),
        ),
      ),
    );
  }
}
