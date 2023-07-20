import 'package:flutter/material.dart';

import 'final.dart';
import 'home_page.dart';
import 'quiz.dart';

 void main() {
  runApp(const myApp());
}

class myApp extends StatelessWidget {
  const myApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      
      initialRoute: '/',

      routes: {
      '/':(context)=>HomePage(),
       Quiz.routeName:(context) => Quiz(),
       Final.routeName:(context) => Final(),
      },
    );
  }
}

