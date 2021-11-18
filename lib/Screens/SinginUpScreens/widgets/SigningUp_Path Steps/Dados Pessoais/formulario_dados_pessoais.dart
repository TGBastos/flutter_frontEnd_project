// ignore_for_file: unused_field

import 'package:flutter/material.dart';
import '../../../widgets/SigningUp_Path%20Steps/Dados%20Pessoais/primeira_coluna.dart';
import '../../../widgets/SigningUp_Path%20Steps/Dados%20Pessoais/segunda_coluna.dart';
import '../../../widgets/SigningUp_Path%20Steps/Dados%20Pessoais/terceira_coluna.dart';

class FormularioDadosPessoais extends StatefulWidget {
  final GlobalKey<FormState> _formKey;

  const FormularioDadosPessoais({
    Key? key,
    required GlobalKey<FormState> formKey,
  })  : _formKey = formKey,
        super(key: key);

  @override
  _FormularioDadosPessoaisState createState() =>
      _FormularioDadosPessoaisState();
}

class _FormularioDadosPessoaisState extends State<FormularioDadosPessoais> {
  String _vencimentoFatura = '';
  String _clienteCPF = '';
  String _clienteOrgaoEmissorCPF = '';
  String _clienteNome = '';
  String _clienteUFNascimento = '';
  String _clienteNacionalidade = '';
  String _clienteRG = '';
  String _clienteSexo = '';
  String _clienteEscolaridade = '';
  String _lojaRetiradaCartao = '';
  String _clienteTratamento = '';
  String _clienteEstadoCivil = '';
  String _clienteExpedidorRG = '';
  String _clienteNaturalidade = '';
  String _clienteDataNascimento = '';
  String _clienteNomeMae = '';

  String _conjugeNome = '';
  String _conjugeDataNascimento = '';
  String _conjugeCPF = '';

  @override
  Widget build(BuildContext context) {
    return Form(
      key: widget._formKey,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          PrimeiraColunaDadosPessoais(),
          SegundaColuna(),
          TerceiraColuna(),
        ],
      ),
    );
  }
}
