// import 'package:flutter/material.dart';
// import 'pages/login.dart';
// import 'pages/home.dart';
// import 'utils/routes.dart';


// void main() {
//   runApp( MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       // home: HomePage(),
//      routes: {
//       MyRoutes.homeRoute:(context)=> HomePage(),
//       // 
//       MyRoutes.loginRoute:(context)=> LoginPage(),},
//     );
//   }
// }


import 'package:flutter/material.dart';
import 'pages/login.dart';
import 'pages/home.dart';
import 'utils/routes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: MyRoutes.loginRoute,
      routes: {
        MyRoutes.loginRoute: (context) => LoginPage(),
        MyRoutes.homeRoute: (context) => HomePage(),
      },
    );
  }
}
