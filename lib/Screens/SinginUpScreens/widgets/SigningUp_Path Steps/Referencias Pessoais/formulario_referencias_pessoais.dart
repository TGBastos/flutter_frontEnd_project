import 'package:flutter/material.dart';
import 'package:rio_das_pedras_front_end/Screens/SinginUpScreens/widgets/SigningUp_Path%20Steps/Referencias%20Pessoais/primeira_coluna.dart';
import 'package:rio_das_pedras_front_end/Screens/SinginUpScreens/widgets/SigningUp_Path%20Steps/Referencias%20Pessoais/segunda_coluna.dart';

class FormularioReferenciasPessoais extends StatelessWidget {
  const FormularioReferenciasPessoais({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
        PrimeiraColunaReferenciasPessoais(),
        SegundaColunaReferenciasPessoais(),
      ],
    );
  }
}
