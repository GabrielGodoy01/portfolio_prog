import 'dart:convert';

class UserModel {
  final String email;
  final String senha;
  final String nick;

  UserModel({
    required this.email, 
    required this.senha, 
    required this.nick
  });



  Map<String, dynamic> toMap() {
    return {
      'email': email,
      'senha': senha,
      'nick': nick,
    };
  }

  factory UserModel.fromMap(Map<String, dynamic> map) {
    return UserModel(
      email: map['email'],
      senha: map['senha'],
      nick: map['nick'],
    );
  }

  String toJson() => json.encode(toMap());

  factory UserModel.fromJson(String source) => UserModel.fromMap(json.decode(source));
}