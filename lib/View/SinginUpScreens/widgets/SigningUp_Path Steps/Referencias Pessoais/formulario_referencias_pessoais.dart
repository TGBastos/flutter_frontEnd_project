import 'package:flutter/material.dart';

import 'primeira_coluna.dart';
import 'segunda_coluna.dart';

class FormularioReferenciasPessoais extends StatefulWidget {
  final GlobalKey<FormState> _formKey;
  const FormularioReferenciasPessoais({
    Key? key,
    required GlobalKey<FormState> formKey,
  })  : _formKey = formKey,
        super(key: key);

  @override
  _FormularioReferenciasPessoaisState createState() =>
      _FormularioReferenciasPessoaisState();
}

class _FormularioReferenciasPessoaisState
    extends State<FormularioReferenciasPessoais> {
  @override
  Widget build(BuildContext context) {
    return Form(
      key: widget._formKey,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          PrimeiraColunaReferenciasPessoais(),
          SegundaColunaReferenciasPessoais(),
        ],
      ),
    );
  }
}
