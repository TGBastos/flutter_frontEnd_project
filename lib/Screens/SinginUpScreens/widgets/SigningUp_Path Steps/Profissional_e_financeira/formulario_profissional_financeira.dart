import 'package:flutter/material.dart';

import 'primeira_coluna.dart';
import 'segunda_coluna.dart';
import 'terceira_coluna.dart';

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
