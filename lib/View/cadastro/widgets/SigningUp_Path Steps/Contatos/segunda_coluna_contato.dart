import 'package:flutter/material.dart';
import 'package:rio_das_pedras_front_end/models/permissoes.dart';
import '../../../widgets/SigningUp_Path%20Steps/Contatos/widgets/campo_telefone.dart';
import '../../../widgets/SigningUp_Path%20Steps/Contatos/widgets/campo_telefone_fixo.dart';

import '../campos_size_configs.dart';

class SegundaColunaContato extends StatefulWidget {
  const SegundaColunaContato({Key? key}) : super(key: key);

  @override
  _SegundaColunaContatoState createState() => _SegundaColunaContatoState();
}

class _SegundaColunaContatoState extends State<SegundaColunaContato> {
  bool enviarEmail = Permissoes().envioEmail;
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
        SizedBox(
          height: screenSize.height / 20,
        ),
        Text(
          'Permite contato por Email?',
        ),
        Switch(
          value: enviarEmail,
          onChanged: (value) {
            setState(() {
              enviarEmail = value;
            });
          },
          activeColor: Colors.green,
          activeTrackColor: Colors.lightGreen,
        ),
      ],
    );
  }
}
