import 'package:clean_login/models/user_model.dart';
import 'package:flutter/material.dart';
import 'login_repository.dart';
import 'login_state.dart';

class LoginController {
  final stateNotifier = ValueNotifier<LoginState>(LoginState.empty);
  set state(LoginState state) => stateNotifier.value = state;
  LoginState get state => stateNotifier.value;

  UserModel? user;

  final repository = LoginRepository();

  void getUser() async {
    state = LoginState.loading;
    user = await repository.getUser();
    state = LoginState.success;
  }
}
