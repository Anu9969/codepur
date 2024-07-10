import 'package:flutter/material.dart';
import 'package:codepur/widgets/drawer.dart';

class HomePage extends StatelessWidget {
  final int days = 4;
  final String name = "Let's Upgrade";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Back to Basics'),
        // leading: IconButton(
        //   icon: Icon(Icons.arrow_back),
        //   onPressed: () {
        //     Navigator.pop(context);
        //   },
        // ),
      ),
      body: Center(
        child: Container(
          child: Text('Welcome to $days days of Flutter by $name'),
        ),
      ),
      drawer: MyDrawer(),
    );
  }
}
