import 'package:flutter/cupertino.dart';
import 'package:rio_das_pedras_front_end/core/model/user_model.dart';
import 'package:rio_das_pedras_front_end/core/repositories/login_repository.dart';

class LoginController {
  final formKey = GlobalKey<FormState>();

  LoginRepository repository = LoginRepository();

  UserModel user = UserModel();

  String userCPF(String value) => user.CPF = value;
  String userSenha(String value) => user.senha = value;

  Future<bool> doLogin() async {
    if (!formKey.currentState!.validate()) {
      return false;
    }
    formKey.currentState!.save();
    try {
      await repository.entrar(user);
      return true;
    } catch (e) {
      return false;
    }
  }
}
