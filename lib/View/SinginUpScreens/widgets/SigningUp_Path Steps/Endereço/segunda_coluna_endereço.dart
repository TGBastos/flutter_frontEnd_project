import 'package:flutter/material.dart';

import '../campos_size_configs.dart';
import 'widgets/campo_bairro.dart';
import 'widgets/campo_endereço.dart';
import 'widgets/campo_tipo_residencia.dart';

class SegundaColunaEndereco extends StatelessWidget {
  const SegundaColunaEndereco({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return Column(
      children: <Widget>[
        CampoTipoResidencia(
          camposSizeConfigs: new CamposSizeConfigs(
            campoHeight: 40,
            campoWidth: screenSize.width / 8,
            borderRadius: 15,
            spaceBetweenFieldsInTop: 40,
          ),
        ),
        CampoEndereco(
          camposSizeConfigs: new CamposSizeConfigs(
            campoHeight: 40,
            campoWidth: screenSize.width / 8,
            borderRadius: 15,
            spaceBetweenFieldsInTop: 40,
          ),
        ),
        CampoBairro(
          camposSizeConfigs: new CamposSizeConfigs(
            campoHeight: 40,
            campoWidth: screenSize.width / 8,
            borderRadius: 15,
            spaceBetweenFieldsInTop: 40,
          ),
        )
      ],
    );
  }
}
