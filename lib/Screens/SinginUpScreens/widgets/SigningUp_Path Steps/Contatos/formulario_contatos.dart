import 'package:flutter/material.dart';
import 'package:rio_das_pedras_front_end/Screens/SinginUpScreens/widgets/SigningUp_Path%20Steps/Contatos/primeira_coluna_contato.dart';

class FormularioContatos extends StatelessWidget {
  const FormularioContatos({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
        PrimeiraColunaContato(),
      ],
    );
  }
}
