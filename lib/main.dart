import 'package:flutter/material.dart';
import 'package:instragram/utils/colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Instragram Clone',
     debugShowCheckedModeBanner: false,
      
      theme: ThemeData.dark().copyWith(
        backgroundColor: mobileBackgroundColor
      ),
      home: Scaffold(body: Text('data')),
    );
  }
}

