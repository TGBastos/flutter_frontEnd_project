import 'dart:html';

import 'package:rio_das_pedras_front_end/Screens/LoginScreens/widgets/loginForms.dart';
import 'package:rio_das_pedras_front_end/core/entities/cpf.dart';

class buttonFuctions {
  entrar(String ClientCPF) {
    print(CPF(ClientCPF).formatedToString());
  }

  void cadastrar() {
    print("Cadastrado");
  }

  void forgotPassword() {
    print("Nova senha");
  }
}
