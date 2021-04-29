import 'package:clean_login/models/user_model.dart';

import 'login_repository.dart';

class LoginController {

  UserModel? user;


  final repository = LoginRepository();

  void getUser() async {
    user = await repository.getUser();
  }
}