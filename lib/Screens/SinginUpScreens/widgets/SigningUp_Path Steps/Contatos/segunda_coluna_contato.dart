import 'package:flutter/material.dart';
import '../../../widgets/SigningUp_Path%20Steps/Contatos/widgets/campo_telefone.dart';
import '../../../widgets/SigningUp_Path%20Steps/Contatos/widgets/campo_telefone_fixo.dart';

import '../campos_size_configs.dart';

class SegundaColunaContato extends StatelessWidget {
  const SegundaColunaContato({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return Column(
      children: [
        CampoTelefone(
          camposSizeConfigs: new CamposSizeConfigs(
            campoHeight: 40,
            campoWidth: screenSize.width / 4.5,
            borderRadius: 15,
            spaceBetweenFieldsInTop: 40,
          ),
        ),
        CampoTelefoneFixo(
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
