import 'package:flutter/material.dart';
import 'package:rio_das_pedras_front_end/Screens/SinginUpScreens/widgets/SigningUp_Path%20Steps/Profissional%20e%20financeira/widgets/campo_empresa.dart';
import 'package:rio_das_pedras_front_end/Screens/SinginUpScreens/widgets/SigningUp_Path%20Steps/Profissional%20e%20financeira/widgets/campo_empresa_CEP.dart';
import 'package:rio_das_pedras_front_end/Screens/SinginUpScreens/widgets/SigningUp_Path%20Steps/Profissional%20e%20financeira/widgets/campo_empresa_UF.dart';
import 'package:rio_das_pedras_front_end/Screens/SinginUpScreens/widgets/SigningUp_Path%20Steps/Profissional%20e%20financeira/widgets/campo_empresa_cargo.dart';
import 'package:rio_das_pedras_front_end/Screens/SinginUpScreens/widgets/SigningUp_Path%20Steps/Profissional%20e%20financeira/widgets/campo_empresa_complemento.dart';
import 'package:rio_das_pedras_front_end/Screens/SinginUpScreens/widgets/SigningUp_Path%20Steps/Profissional%20e%20financeira/widgets/campo_empresa_numero.dart';

import '../campos_size_configs.dart';

class PrimeiraColunaProfissional extends StatelessWidget {
  const PrimeiraColunaProfissional({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return Column(
      children: [
        CampoEmpresa(
          camposSizeConfigs: new CamposSizeConfigs(
            campoHeight: 40,
            campoWidth: screenSize.width / 4.5,
            borderRadius: 15,
            spaceBetweenFieldsInTop: 40,
          ),
        ),
        Row(
          children: <Widget>[
            CampoEmpresaCEP(
              camposSizeConfigs: new CamposSizeConfigs(
                campoHeight: 40,
                campoWidth: screenSize.width / 8,
                borderRadius: 15,
                spaceBetweenFieldsInTop: 40,
              ),
            ),
            SizedBox(
              width: screenSize.width / 92,
            ),
            CampoEmpresaUF(
              camposSizeConfigs: new CamposSizeConfigs(
                campoHeight: 40,
                campoWidth: screenSize.width / 12,
                borderRadius: 15,
                spaceBetweenFieldsInTop: 40,
              ),
            ),
          ],
        ),
        Row(
          children: <Widget>[
            CampoEmpresaComplento(
              camposSizeConfigs: new CamposSizeConfigs(
                campoHeight: 40,
                campoWidth: screenSize.width / 8,
                borderRadius: 15,
                spaceBetweenFieldsInTop: 40,
              ),
            ),
            SizedBox(
              width: screenSize.width / 92,
            ),
            CampoEmpresaNumero(
              camposSizeConfigs: new CamposSizeConfigs(
                campoHeight: 40,
                campoWidth: screenSize.width / 12,
                borderRadius: 15,
                spaceBetweenFieldsInTop: 40,
              ),
            )
          ],
        ),
        CampoEmpresaCargo(
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
