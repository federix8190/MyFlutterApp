import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Federix App'),
        elevation: 10,
      ),
      body: PageView(
        children: [
          CustomScreen(color: Colors.blue,),
          CustomScreen(color: Colors.orange,),
          CustomScreen(color: Colors.indigo,),
          CustomScreen(color: Colors.pink,),
          CustomScreen(color: Colors.purple,),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.ac_unit_outlined),
              label: 'User'
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: 'Settings'
          ),
        ],
      ),
    );
  }
}

class CustomScreen extends StatelessWidget {

  final Color color;

  const CustomScreen({this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
      child: Center(
          child: Text('Custom Screen')
      ),
    );
  }
}
