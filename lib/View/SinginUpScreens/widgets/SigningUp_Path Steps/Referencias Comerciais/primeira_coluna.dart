import 'package:flutter/material.dart';

import '../campos_size_configs.dart';
import 'widgets/campo_nome1.dart';
import 'widgets/campo_nome2.dart';

class PrimeiraColunaReferenciasComerciais extends StatelessWidget {
  const PrimeiraColunaReferenciasComerciais({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return Column(
      children: <Widget>[
        CampoEmpresa1(
          camposSizeConfigs: new CamposSizeConfigs(
            campoHeight: 40,
            campoWidth: screenSize.width / 4.5,
            borderRadius: 15,
            spaceBetweenFieldsInTop: 40,
          ),
        ),
        CampoEmpresa2(
          camposSizeConfigs: new CamposSizeConfigs(
            campoHeight: 40,
            campoWidth: screenSize.width / 4.5,
            borderRadius: 15,
            spaceBetweenFieldsInTop: 40,
          ),
        )
      ],
    );
  }
}
