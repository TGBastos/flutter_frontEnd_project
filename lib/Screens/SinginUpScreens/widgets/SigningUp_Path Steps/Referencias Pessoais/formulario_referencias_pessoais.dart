import 'package:flutter/material.dart';

import 'primeira_coluna.dart';
import 'segunda_coluna.dart';

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
