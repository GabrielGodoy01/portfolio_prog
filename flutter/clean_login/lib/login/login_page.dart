import 'package:clean_login/login/widgets/login_button_widget.dart';
import 'package:clean_login/user/user_page.dart';
import 'package:flutter/material.dart';
import 'login_controller.dart';
import 'widgets/text_field_custom_widget.dart';
import 'login_load_state.dart';

class LoginPage extends StatefulWidget {
  LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final controller = LoginController();
  final controllerEmail = TextEditingController();
  final controllerSenha = TextEditingController();

  @override
  void initState() {
    super.initState();
    controller.getUser();
    controller.stateNotifier.addListener(() {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    if (controller.state == LoadState.success) {
      return Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 150,
                child: Center(
                  child: Image.asset(
                    "assets/images/logo.png",
                    width: 100,
                  ),
                ),
              ),
              TextFieldCustomWidget(
                controller: controllerEmail,
                labelText: 'Email',
                iconData: IconData(58775, fontFamily: 'MaterialIcons'),
              ),
              SizedBox(
                height: 8,
              ),
              TextFieldCustomWidget(
                controller: controllerSenha,
                obscureText: true,
                labelText: 'Senha',
                iconData: IconData(60115, fontFamily: 'MaterialIcons'),
              ),
              SizedBox(
                height: 24,
              ),
              GestureDetector(
                  onTap: () {
                    if (controller.validaLogin(
                        controllerEmail, controllerSenha)) {
                      if (controller.user != null) {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  UserPage(user: controller.user!)),
                        );
                      }
                    }
                    print(controllerEmail.text);
                    print(controllerSenha.text);
                  },
                  child: LoginButtonWidget()),
              Container(
                child: FlatButton(
                  onPressed: () {},
                  child: Text(
                    "Forgot password?",
                    style: TextStyle(
                      color: Colors.blue.shade300,
                      fontWeight: FontWeight.bold,
                      decoration: TextDecoration.underline,
                      decorationThickness: 2,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      );
    } else {
      return Scaffold(
        body: Center(
          child: CircularProgressIndicator(
            valueColor: AlwaysStoppedAnimation<Color>(Colors.blue),
          ),
        ),
      );
    }
  }
}
