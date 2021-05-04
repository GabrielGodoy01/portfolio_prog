import 'package:clean_login/models/user_model.dart';
import 'package:flutter/material.dart';
import 'login_repository.dart';
import 'login_load_state.dart';

class LoginController {
  final stateNotifier = ValueNotifier<LoadState>(LoadState.empty);
  set state(LoadState state) => stateNotifier.value = state;
  LoadState get state => stateNotifier.value;

  UserModel? user;

  final repository = LoginRepository();

  bool validaLogin(TextEditingController controllerEmail,
      TextEditingController controllerSenha) {
    if (this.user!.email == controllerEmail.text &&
        this.user!.senha == controllerSenha.text) {
      return true;
    } else {
      return false;
    }
  }

  Future<void> getUser() async {
    state = LoadState.loading;
    user = await repository.getUser();
    state = LoadState.success;
  }
}
