import 'dart:js';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rio_das_pedras_front_end/Screens/LogedScreens/DesktoLogedScreen.dart';
import 'package:rio_das_pedras_front_end/Screens/commun/widgets/PageWrappers/SingingUpPageWrapper.dart';
import 'package:rio_das_pedras_front_end/Screens/commun/widgets/PageWrappers/logedPageWrapper.dart';
import 'package:rio_das_pedras_front_end/core/entities/cpf.dart';

class buttonFuctions {
  BuildContext ctx;
  buttonFuctions(this.ctx);
  entrar(
    String ClientCPF,
  ) {
    print(CPF(ClientCPF));
    Navigator.of(ctx).pushReplacement(
        MaterialPageRoute(builder: (context) => logedPageWrapper()));
  }

  cadastrar() {
    print("Cadastrado");
    Navigator.of(ctx).pushReplacement(
        MaterialPageRoute(builder: (context) => SingingUpPageWrapper()));
  }

  forgotPassword() {
    print("Nova senha");
  }
}
