import 'package:flutter/material.dart';
import '../../../widgets/SigningUp_Path%20Steps/Contatos/primeira_coluna_contato.dart';
import '../../../widgets/SigningUp_Path%20Steps/Contatos/segunda_coluna_contato.dart';

class FormularioContatos extends StatelessWidget {
  final GlobalKey<FormState> _formKey;
  const FormularioContatos({
    Key? key,
    required GlobalKey<FormState> formKey,
  })  : _formKey = formKey,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
        PrimeiraColunaContato(),
        SegundaColunaContato(),
      ],
    );
  }
}
