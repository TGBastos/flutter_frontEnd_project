import 'package:flutter/material.dart';
import 'package:rio_das_pedras_front_end/Screens/SinginUpScreens/widgets/SigningUp_Path%20Steps/Profissional%20e%20financeira/widgets/campo_empresa_bairro.dart';
import 'package:rio_das_pedras_front_end/Screens/SinginUpScreens/widgets/SigningUp_Path%20Steps/Profissional%20e%20financeira/widgets/campo_empresa_endere%C3%A7o.dart';
import 'package:rio_das_pedras_front_end/Screens/SinginUpScreens/widgets/SigningUp_Path%20Steps/Profissional%20e%20financeira/widgets/campo_empresa_matricula.dart';
import 'package:rio_das_pedras_front_end/Screens/SinginUpScreens/widgets/SigningUp_Path%20Steps/Profissional%20e%20financeira/widgets/campo_profiss%C3%A3o.dart';

import '../campos_size_configs.dart';

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
