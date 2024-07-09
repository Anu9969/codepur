import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
 final int days =30;
 final String name = "Lets Upgarde";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Back to Basics'),
      ),
      body: Center(child: Container(
        child: Text('Welcome to $days days of Flutter by $name'),
      ),),
      drawer: Drawer(),

    );
  }
}