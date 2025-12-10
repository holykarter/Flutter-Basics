import 'package:flutter/material.dart'; //(1)

import 'pages/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key}); // what is doing  MyApp({Key ? key}) : super(key:key) 

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // remove the banner 
      theme: ThemeData(fontFamily: 'Poppins'), // what is doing in the the MaterialApp()
      home: HomePage() // create an instance of the Homepage
    );
  }
}
/* question 
  const MyApp({super.key}); // what is doing 
*/
