import 'package:flutter/material.dart';
import 'package:nlw_flutter/home/home_page.dart';
import 'package:nlw_flutter/splash/splash_page.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "DevQuiz",
      home: HomePage(),
    );
  }
}