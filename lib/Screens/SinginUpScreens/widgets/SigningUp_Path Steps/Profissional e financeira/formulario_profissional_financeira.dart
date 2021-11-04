import 'package:flutter/material.dart';
import 'package:rio_das_pedras_front_end/Screens/SinginUpScreens/widgets/SigningUp_Path%20Steps/Dados%20Pessoais/terceira_coluna.dart';
import 'package:rio_das_pedras_front_end/Screens/SinginUpScreens/widgets/SigningUp_Path%20Steps/Profissional%20e%20financeira/primeira_coluna.dart';
import 'package:rio_das_pedras_front_end/Screens/SinginUpScreens/widgets/SigningUp_Path%20Steps/Profissional%20e%20financeira/segunda_coluna.dart';
import 'package:rio_das_pedras_front_end/Screens/SinginUpScreens/widgets/SigningUp_Path%20Steps/Profissional%20e%20financeira/terceira_coluna.dart';

class FormularioProfissionalFinanceira extends StatelessWidget {
  const FormularioProfissionalFinanceira({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
        PrimeiraColunaProfissional(),
        SegundaColunaProfissional(),
        TerceiraColunaProfissional()
      ],
    );
  }
}
