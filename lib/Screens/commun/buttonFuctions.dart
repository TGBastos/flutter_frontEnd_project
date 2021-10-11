import 'dart:js';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rio_das_pedras_front_end/Screens/LogedScreens/DesktoLogedScreen.dart';
import 'package:rio_das_pedras_front_end/core/entities/cpf.dart';

class buttonFuctions {
  entrar(String ClientCPF, BuildContext context) {
    print(CPF(ClientCPF));
    Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => DesktopLogedScreen()));
  }

  void cadastrar() {
    print("Cadastrado");
  }

  void forgotPassword() {
    print("Nova senha");
  }
}
