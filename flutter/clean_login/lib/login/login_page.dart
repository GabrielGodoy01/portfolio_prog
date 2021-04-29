import 'package:clean_login/login/widgets/login_button_widget.dart';
import 'package:clean_login/user/user_page.dart';
import 'package:flutter/material.dart';
import 'login_controller.dart';
import 'widgets/text_field_custom_widget.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final controller = LoginController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 150,
              decoration: BoxDecoration(
                color: Colors.transparent,
              ),
              child: Center(
                child: Image.asset("assets/images/logo.png", width: 100,),
              ),
            ),
            TextFieldCustomWidget(
            labelText: 'Email',
            iconData: IconData(58775, fontFamily: 'MaterialIcons'),
              ),
            SizedBox(
                height: 8,
              ),
            TextFieldCustomWidget(
              labelText: 'Senha',
              iconData: IconData(60115, fontFamily: 'MaterialIcons'),
            ),
            SizedBox(
              height: 24,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                 context,
                 MaterialPageRoute(
                    builder: (context) => UserPage(user: controller.user,)));
              },
              child: LoginButtonWidget()
            ),
          ],
        ),
      ),
    );
  }
}