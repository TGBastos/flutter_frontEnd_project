import 'package:flutter/material.dart';
import 'package:rio_das_pedras_front_end/Screens/SinginUpScreens/widgets/SigningUp_Path%20Steps/Profissional%20e%20financeira/widgets/campo_salario.dart';
import 'package:rio_das_pedras_front_end/Screens/SinginUpScreens/widgets/SigningUp_Path%20Steps/Profissional%20e%20financeira/widgets/campo_tempo_de_servico.dart';

import '../campos_size_configs.dart';

class TerceiraColunaProfissional extends StatelessWidget {
  const TerceiraColunaProfissional({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        CampoTempoDeServico(
          camposSizeConfigs: new CamposSizeConfigs(
            campoHeight: 40,
            campoWidth: screenSize.width / 6,
            borderRadius: 15,
            spaceBetweenFieldsInTop: 40,
          ),
        ),
        CampoSalario(
          camposSizeConfigs: new CamposSizeConfigs(
            campoHeight: 40,
            campoWidth: screenSize.width / 6,
            borderRadius: 15,
            spaceBetweenFieldsInTop: 40,
          ),
        )
      ],
    );
  }
}
