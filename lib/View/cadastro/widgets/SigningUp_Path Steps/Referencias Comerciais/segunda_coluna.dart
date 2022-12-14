import 'package:flutter/material.dart';
import 'package:rio_das_pedras_front_end/View/commun/widgets/Defaults/default_button.dart';
import '../campos_size_configs.dart';
import 'widgets/campo_empresa1_telefone.dart';
import 'widgets/campo_empresa2_telefone.dart';

class SegundaColunaReferenciasComerciais extends StatelessWidget {
  const SegundaColunaReferenciasComerciais({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return Column(
      children: <Widget>[
        CampoTelefoneComercial1(
          camposSizeConfigs: new CamposSizeConfigs(
            campoHeight: 40,
            campoWidth: screenSize.width / 4.5,
            borderRadius: 15,
            spaceBetweenFieldsInTop: 40,
          ),
        ),
        CampoTelefoneComercial2(
          camposSizeConfigs: new CamposSizeConfigs(
            campoHeight: 40,
            campoWidth: screenSize.width / 4.5,
            borderRadius: 15,
            spaceBetweenFieldsInTop: 40,
          ),
        ),
      ],
    );
  }
}
