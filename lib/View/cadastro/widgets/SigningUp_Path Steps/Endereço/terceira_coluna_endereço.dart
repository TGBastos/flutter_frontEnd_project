import 'package:flutter/material.dart';
import '../../../widgets/SigningUp_Path%20Steps/Endere%C3%A7o/widgets/campo_tempo_residencia.dart';

import '../campos_size_configs.dart';

class TerceiraColunaEndereco extends StatelessWidget {
  const TerceiraColunaEndereco({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return Column(
      children: <Widget>[
        CampoTempoResidencia(
          camposSizeConfigs: new CamposSizeConfigs(
            campoHeight: 40,
            campoWidth: screenSize.width / 10,
            borderRadius: 15,
            spaceBetweenFieldsInTop: 40,
          ),
        )
      ],
    );
  }
}
