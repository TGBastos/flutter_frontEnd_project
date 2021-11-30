import 'package:flutter/material.dart';

import 'primeira_coluna_endereço.dart';
import 'segunda_coluna_endereço.dart';
import 'terceira_coluna_endereço.dart';

class FormularioEndereco extends StatelessWidget {
  const FormularioEndereco({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        PrimeiraColunaEndereco(),
        SegundaColunaEndereco(),
        TerceiraColunaEndereco(),
      ],
    );
  }
}
