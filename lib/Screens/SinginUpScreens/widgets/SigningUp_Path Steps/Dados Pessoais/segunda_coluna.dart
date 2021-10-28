import 'package:flutter/material.dart';

import '../campos_size_configs.dart';
import 'widgets/campo_cliente_estado_civil.dart';
import 'widgets/campo_cliente_nacionalidade.dart';
import 'widgets/campo_cliente_rg.dart';
import 'widgets/campo_cliente_tratamento.dart';
import 'widgets/campo_loja_retirada_cartao.dart';

class SegundaColuna extends StatelessWidget {
  const SegundaColuna({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return Column(
      //Segunda Coluna
      children: <Widget>[
        CampoLojaRetiradaCartao(
          camposSizeConfigs: new CamposSizeConfigs(
            campoHeight: 40,
            campoWidth: screenSize.width / 4.5,
            borderRadius: 15,
            spaceBetweenFieldsInTop: 40,
          ),
        ),
        CampoClienteRG(
          camposSizeConfigs: new CamposSizeConfigs(
            campoHeight: 40,
            campoWidth: screenSize.width / 4.5,
            borderRadius: 15,
            spaceBetweenFieldsInTop: 20,
          ),
        ),
        CampoClienteNacionalidade(
          camposSizeConfigs: new CamposSizeConfigs(
            campoHeight: 40,
            campoWidth: screenSize.width / 4.5,
            borderRadius: 15,
            spaceBetweenFieldsInTop: 40,
          ),
        ),
        CampoClienteTratamento(
          camposSizeConfigs: new CamposSizeConfigs(
            campoHeight: 40,
            campoWidth: screenSize.width / 4.5,
            borderRadius: 15,
            spaceBetweenFieldsInTop: 10,
          ),
        ),
        CampoClienteEstadoCivil(
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
