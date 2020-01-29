import 'package:flutter/material.dart';
import './myHomeScreen.dart';
import './myAbout.dart';
void main()=> runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/about':(context)=>AboutMe(),
      },
      theme: ThemeData.dark(),
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}


