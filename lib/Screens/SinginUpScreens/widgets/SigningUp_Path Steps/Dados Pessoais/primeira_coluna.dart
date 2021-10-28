import 'package:flutter/material.dart';

import '../campos_size_configs.dart';
import 'widgets/campo_cliente_UF_nascimento.dart';
import 'widgets/campo_cliente_cpf.dart';
import 'widgets/campo_cliente_escolaridade.dart';
import 'widgets/campo_cliente_orgao_emissor_CPF_cliente.dart';
import 'widgets/campo_cliente_sexo.dart';
import 'widgets/campo_data_vencimento_fatura.dart';

class PrimeiraColuna extends StatelessWidget {
  const PrimeiraColuna({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return Column(
      //Primeira Coluna
      children: <Widget>[
        CampoDataVencimentoFatura(
          camposSizeConfigs: new CamposSizeConfigs(
            campoHeight: 40,
            campoWidth: screenSize.width / 4.5,
            borderRadius: 15,
            spaceBetweenFieldsInTop: 40,
          ),
        ),
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
