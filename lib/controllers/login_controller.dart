import 'package:flutter/cupertino.dart';
import '../models/user_model.dart';
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
      if (await repository.entrar(user) == true) {
        print('loginSucces');
        return true;
      } else
        return false;
    } catch (e) {
      print(e);
      return false;
    }
  }
}
