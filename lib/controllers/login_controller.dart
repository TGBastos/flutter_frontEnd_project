import 'package:flutter/cupertino.dart';
import '../models/user_model.dart';

class LoginController {
  final formKey = GlobalKey<FormState>();

  // LoginRepository repository = LoginRepository();

  UserModel user = UserModel();

  String userCPF(String value) => user.CPF = value;
  String userSenha(String value) => user.senha = value;

  Future<bool> doLogin() async {
    if (!formKey.currentState!.validate() && user.CPF.length != 11) {
      return false;
    } else {
      formKey.currentState!.save();
      return true;
    }
  }
}
