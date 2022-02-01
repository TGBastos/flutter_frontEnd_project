import 'package:flutter/material.dart';

import 'primeira_coluna_endereço.dart';
import 'segunda_coluna_endereço.dart';
import 'terceira_coluna_endereço.dart';

class FormularioEndereco extends StatefulWidget {
  final GlobalKey<FormState> _formKey;
  const FormularioEndereco({
    Key? key,
    required GlobalKey<FormState> formKey,
  })  : _formKey = formKey,
        super(key: key);

  @override
  _FormularioEnderecoState createState() => _FormularioEnderecoState();
}

class _FormularioEnderecoState extends State<FormularioEndereco> {
  @override
  Widget build(BuildContext context) {
    return Form(
      key: widget._formKey,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          PrimeiraColunaEndereco(),
          SegundaColunaEndereco(),
          TerceiraColunaEndereco(),
        ],
      ),
    );
  }
}
