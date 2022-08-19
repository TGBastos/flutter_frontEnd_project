import 'package:flutter/material.dart';
import 'package:rio_das_pedras_front_end/controllers/dados_pessoais_controller.dart';
import '../campos_size_configs.dart';
import 'widgets/campo_cliente_UF_nascimento.dart';
import 'widgets/campo_cliente_cpf.dart';
import 'widgets/campo_cliente_escolaridade.dart';
import 'widgets/campo_cliente_orgao_emissor_CPF_cliente.dart';
import 'widgets/campo_cliente_sexo.dart';

class PrimeiraColunaDadosPessoais extends StatefulWidget {
  const PrimeiraColunaDadosPessoais({Key? key}) : super(key: key);

  @override
  _PrimeiraColunaDadosPessoaisState createState() =>
      _PrimeiraColunaDadosPessoaisState();
}

class _PrimeiraColunaDadosPessoaisState
    extends State<PrimeiraColunaDadosPessoais> {
  DadosPessoaisController singinUpController = DadosPessoaisController();
  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    return Column(
      //Primeira Coluna
      children: <Widget>[
        CampoClienteCPF(
          camposSizeConfigs: new CamposSizeConfigs(
            campoHeight: 40,
            campoWidth: screenSize.width / 4.5,
            borderRadius: 15,
            spaceBetweenFieldsInTop: 20,
          ),
        ),
        CampoClienteOragaoEmissorCPF(
          camposSizeConfigs: new CamposSizeConfigs(
            campoHeight: 40,
            campoWidth: screenSize.width / 4.5,
            borderRadius: 15,
            spaceBetweenFieldsInTop: 40,
          ),
        ),
        Row(children: <Widget>[
          CampoClienteUFNascimento(
            camposSizeConfigs: new CamposSizeConfigs(
              campoHeight: 40,
              campoWidth: screenSize.width / 10,
              borderRadius: 15,
              spaceBetweenFieldsInTop: 10,
            ),
          ),
          SizedBox(
            width: screenSize.width / 80,
          ),
          CampoClienteSexo(
            camposSizeConfigs: new CamposSizeConfigs(
              campoHeight: 40,
              campoWidth: screenSize.width / 9.5,
              borderRadius: 15,
              spaceBetweenFieldsInTop: 10,
            ),
          ),
        ]),
        CampoClienteEscolaridade(
          camposSizeConfigs: new CamposSizeConfigs(
            campoHeight: 40,
            campoWidth: screenSize.width / 4.5,
            borderRadius: 15,
            spaceBetweenFieldsInTop: 40,
          ),
        ),
        SizedBox(
          height: screenSize.height / 64,
        ),
      ],
    );
  }
}
