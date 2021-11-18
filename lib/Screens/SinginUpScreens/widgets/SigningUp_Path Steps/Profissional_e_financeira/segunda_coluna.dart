import 'package:flutter/material.dart';

import '../campos_size_configs.dart';
import 'widgets/campo_empresa_bairro.dart';
import 'widgets/campo_empresa_endereço.dart';
import 'widgets/campo_empresa_matricula.dart';
import 'widgets/campo_profissão.dart';

class SegundaColunaProfissional extends StatelessWidget {
  const SegundaColunaProfissional({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return Column(
      children: <Widget>[
        CampoEmpresaMatricula(
          camposSizeConfigs: new CamposSizeConfigs(
            campoHeight: 40,
            campoWidth: screenSize.width / 6,
            borderRadius: 15,
            spaceBetweenFieldsInTop: 40,
          ),
        ),
        CampoEmpresaEndereco(
          camposSizeConfigs: new CamposSizeConfigs(
            campoHeight: 40,
            campoWidth: screenSize.width / 6,
            borderRadius: 15,
            spaceBetweenFieldsInTop: 40,
          ),
        ),
        CampoEmpresaBairro(
          camposSizeConfigs: new CamposSizeConfigs(
            campoHeight: 40,
            campoWidth: screenSize.width / 6,
            borderRadius: 15,
            spaceBetweenFieldsInTop: 40,
          ),
        ),
        CampoProfisao(
          camposSizeConfigs: new CamposSizeConfigs(
            campoHeight: 40,
            campoWidth: screenSize.width / 6,
            borderRadius: 15,
            spaceBetweenFieldsInTop: 40,
          ),
        ),
      ],
    );
  }
}
