import 'package:flutter/material.dart';
import 'login/login_page.dart';
import 'user/user_page.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Login App",
      home: LoginPage(),
    );
  }
}