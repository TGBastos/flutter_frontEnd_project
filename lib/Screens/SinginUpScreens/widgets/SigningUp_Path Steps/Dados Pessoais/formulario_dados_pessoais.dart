import 'package:flutter/material.dart';
import 'package:rio_das_pedras_front_end/Screens/SinginUpScreens/widgets/SigningUp_Path%20Steps/Dados%20Pessoais/primeira_coluna.dart';
import 'package:rio_das_pedras_front_end/Screens/SinginUpScreens/widgets/SigningUp_Path%20Steps/Dados%20Pessoais/segunda_coluna.dart';
import 'package:rio_das_pedras_front_end/Screens/SinginUpScreens/widgets/SigningUp_Path%20Steps/Dados%20Pessoais/terceira_coluna.dart';
import 'package:rio_das_pedras_front_end/Screens/SinginUpScreens/widgets/SigningUp_Path%20Steps/Dados%20Pessoais/widgets/campo_cliente_UF_nascimento.dart';
import 'package:rio_das_pedras_front_end/Screens/SinginUpScreens/widgets/SigningUp_Path%20Steps/Dados%20Pessoais/widgets/campo_cliente_cpf.dart';
import 'package:rio_das_pedras_front_end/Screens/SinginUpScreens/widgets/SigningUp_Path%20Steps/Dados%20Pessoais/widgets/campo_cliente_escolaridade.dart';
import 'package:rio_das_pedras_front_end/Screens/SinginUpScreens/widgets/SigningUp_Path%20Steps/Dados%20Pessoais/widgets/campo_cliente_estado_civil.dart';
import 'package:rio_das_pedras_front_end/Screens/SinginUpScreens/widgets/SigningUp_Path%20Steps/Dados%20Pessoais/widgets/campo_cliente_nacionalidade.dart';
import 'package:rio_das_pedras_front_end/Screens/SinginUpScreens/widgets/SigningUp_Path%20Steps/Dados%20Pessoais/widgets/campo_cliente_orgao_emissor_CPF_cliente.dart';
import 'package:rio_das_pedras_front_end/Screens/SinginUpScreens/widgets/SigningUp_Path%20Steps/Dados%20Pessoais/widgets/campo_cliente_rg.dart';
import 'package:rio_das_pedras_front_end/Screens/SinginUpScreens/widgets/SigningUp_Path%20Steps/Dados%20Pessoais/widgets/campo_cliente_sexo.dart';
import 'package:rio_das_pedras_front_end/Screens/SinginUpScreens/widgets/SigningUp_Path%20Steps/Dados%20Pessoais/widgets/campo_cliente_tratamento.dart';
import 'package:rio_das_pedras_front_end/Screens/SinginUpScreens/widgets/SigningUp_Path%20Steps/Dados%20Pessoais/widgets/campo_data_vencimento_fatura.dart';
import 'package:rio_das_pedras_front_end/Screens/SinginUpScreens/widgets/SigningUp_Path%20Steps/Dados%20Pessoais/widgets/campo_loja_retirada_cartao.dart';
import 'package:rio_das_pedras_front_end/Screens/SinginUpScreens/widgets/SigningUp_Path%20Steps/campos_size_configs.dart';

import 'widgets/campo_cliente_nome.dart';

class FormularioDadosPessoais extends StatefulWidget {
  const FormularioDadosPessoais({Key? key}) : super(key: key);

  @override
  _FormularioDadosPessoaisState createState() =>
      _FormularioDadosPessoaisState();
}

class _FormularioDadosPessoaisState extends State<FormularioDadosPessoais> {
  var _formKey = GlobalKey<FormState>();
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
    Size screenSize = MediaQuery.of(context).size;
    return Form(
      key: _formKey,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          PrimeiraColuna(),
          SegundaColuna(),
          TerceiraColuna(),
        ],
      ),
    );
  }
}
