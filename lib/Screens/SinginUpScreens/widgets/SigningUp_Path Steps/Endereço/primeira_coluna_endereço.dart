import 'package:flutter/material.dart';

import '../campos_size_configs.dart';
import 'widgets/campo_CEP.dart';
import 'widgets/campo_UF.dart';
import 'widgets/campo_cidade.dart';
import 'widgets/campo_complento.dart';
import 'widgets/campo_numero.dart';

class PrimeiraColunaEndereco extends StatelessWidget {
  const PrimeiraColunaEndereco({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return Column(
      children: <Widget>[
        CampoCidade(
          camposSizeConfigs: new CamposSizeConfigs(
            campoHeight: 40,
            campoWidth: screenSize.width / 4.5,
            borderRadius: 15,
            spaceBetweenFieldsInTop: 40,
          ),
        ),
        Row(
          children: <Widget>[
            CampoCEP(
              camposSizeConfigs: new CamposSizeConfigs(
                campoHeight: 40,
                campoWidth: screenSize.width / 8,
                borderRadius: 15,
                spaceBetweenFieldsInTop: 40,
              ),
            ),
            SizedBox(
              width: screenSize.width / 80,
            ),
            CampoUF(
              camposSizeConfigs: new CamposSizeConfigs(
                campoHeight: 40,
                campoWidth: screenSize.width / 12.5,
                borderRadius: 15,
                spaceBetweenFieldsInTop: 40,
              ),
            ),
          ],
        ),
        Row(
          children: <Widget>[
            CampoComplemento(
              camposSizeConfigs: new CamposSizeConfigs(
                campoHeight: 40,
                campoWidth: screenSize.width / 8,
                borderRadius: 15,
                spaceBetweenFieldsInTop: 40,
              ),
            ),
            SizedBox(
              width: screenSize.width / 80,
            ),
            CampoNumero(
              camposSizeConfigs: new CamposSizeConfigs(
                campoHeight: 40,
                campoWidth: screenSize.width / 12.5,
                borderRadius: 15,
                spaceBetweenFieldsInTop: 40,
              ),
            )
          ],
        )
      ],
    );
  }
}
