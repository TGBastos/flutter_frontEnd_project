import 'package:flutter/material.dart';
import 'package:rio_das_pedras_front_end/View/cadastro/widgets/SigningUp_Path%20Steps/Contatos/terceira_coluna_contato.dart';
import 'package:rio_das_pedras_front_end/View/cadastro/widgets/SigningUp_Path%20Steps/Dados%20Pessoais/terceira_coluna.dart';
import '../../../widgets/SigningUp_Path%20Steps/Contatos/primeira_coluna_contato.dart';
import '../../../widgets/SigningUp_Path%20Steps/Contatos/segunda_coluna_contato.dart';

class FormularioContatos extends StatefulWidget {
  final GlobalKey<FormState> _formKey;
  const FormularioContatos({
    Key? key,
    required GlobalKey<FormState> formKey,
  })  : _formKey = formKey,
        super(key: key);

  @override
  _FormularioContatosState createState() => _FormularioContatosState();
}

class _FormularioContatosState extends State<FormularioContatos> {
  @override
  Widget build(BuildContext context) {
    return Form(
      key: widget._formKey,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          PrimeiraColunaContato(),
          SegundaColunaContato(),
          TerceiraColunaContato(),
        ],
      ),
    );
  }
}
