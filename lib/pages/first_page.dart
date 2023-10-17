import 'package:flutter/material.dart';
import 'package:noted/pages/second_page.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text("First Page"),
        ),
        drawer: Drawer(
          backgroundColor: Colors.blue[100],
          child: Column(
            children: [
              DrawerHeader(
                child: Icon(
                  Icons.person_3_outlined,
                  size: 48,
                ),
              ),
              ListTile(
                  leading: Icon(Icons.home),
                  title: Text("H O M E"),
                  onTap: () {
                    Navigator.pop(context);
                    Navigator.pushNamed(context, '/secondpage');
                  },),
    
                              ListTile(
                  leading: Icon(Icons.settings),
                  title: Text("S E T T I N G S"),
                  onTap: () {
                    Navigator.pop(context);
                    Navigator.pushNamed(context, '/secondpage');
                  },),
            ],
          ),
        ),
      ),
    );
  }
}
