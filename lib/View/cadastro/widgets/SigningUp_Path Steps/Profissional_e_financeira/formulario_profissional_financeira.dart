import 'package:flutter/material.dart';

import 'primeira_coluna.dart';
import 'segunda_coluna.dart';
import 'terceira_coluna.dart';

class FormularioProfissionalFinanceira extends StatefulWidget {
  final GlobalKey<FormState> _formKey;
  const FormularioProfissionalFinanceira({
    Key? key,
    required GlobalKey<FormState> formKey,
  })  : _formKey = formKey,
        super(key: key);

  @override
  _FormularioProfissionalFinanceiraState createState() =>
      _FormularioProfissionalFinanceiraState();
}

class _FormularioProfissionalFinanceiraState
    extends State<FormularioProfissionalFinanceira> {
  @override
  Widget build(BuildContext context) {
    return Form(
      key: widget._formKey,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          PrimeiraColunaProfissional(),
          SegundaColunaProfissional(),
          TerceiraColunaProfissional()
        ],
      ),
    );
  }
}
