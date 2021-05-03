import 'package:clean_login/login/login_controller.dart';
import 'package:clean_login/models/user_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';

class LoginRepository {
  Future<UserModel> getUser() async {
    final response = await rootBundle.loadString("assets/database/user.json");
    final user = UserModel.fromJson(response);
    return user;
  }
}
