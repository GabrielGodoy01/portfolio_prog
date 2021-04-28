import 'package:flutter/material.dart';
import 'widgets/text_field_custom_widget.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

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
                height: 16,
              ),
            TextFieldCustomWidget(
              labelText: 'Senha',
              iconData: IconData(60115, fontFamily: 'MaterialIcons'),
            )
          ],
        ),
      ),
    );
  }
}