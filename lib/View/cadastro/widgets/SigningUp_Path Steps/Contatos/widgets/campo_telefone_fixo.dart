import 'package:flutter/material.dart';

import '../../.././SigningUp_Path%20Steps/campos_size_configs.dart';
import '../../repositories.dart';

class CampoTelefoneFixo extends StatefulWidget {
  final CamposSizeConfigs camposSizeConfigs;
  const CampoTelefoneFixo({required this.camposSizeConfigs});

  @override
  _CampoTelefoneFixoState createState() => _CampoTelefoneFixoState();
}

class _CampoTelefoneFixoState extends State<CampoTelefoneFixo> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Column(crossAxisAlignment: CrossAxisAlignment.start, children: <Widget>[
          Text('DDD'),
          SizedBox(
            height: widget.camposSizeConfigs.campoHeight,
            width: widget.camposSizeConfigs.campoWidth / 4,
            child: TextFormField(
              initialValue: Repositories
                          .contatosRepositorie.contatosModel.dddTelefoneFixo !=
                      ''
                  ? Repositories
                      .contatosRepositorie.contatosModel.dddTelefoneFixo
                  : '',
              validator: (value) => value!.isEmpty ? 'Coloque seu DDD' : null,
              onSaved: (valor) =>
                  Repositories.contatosRepositorie..contatosDDDFixo = valor,
              decoration: InputDecoration(
                constraints: BoxConstraints(
                  maxHeight: 33,
                ),
                floatingLabelBehavior: FloatingLabelBehavior.always,
                //labelText: "",
                labelStyle: TextStyle(
                  fontSize: 20,
                ),
                border: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.blue,
                  ),
                  borderRadius: BorderRadius.circular(
                    widget.camposSizeConfigs.borderRadius,
                  ),
                ),
              ),
            ),
          ),
        ]),
        SizedBox(
          width: widget.camposSizeConfigs.campoWidth / 32,
        ),
        Column(crossAxisAlignment: CrossAxisAlignment.start, children: <Widget>[
          Text('Telefone fixo'),
          SizedBox(
            height: widget.camposSizeConfigs.campoHeight,
            width: widget.camposSizeConfigs.campoWidth / 1.5,
            child: TextFormField(
              initialValue: Repositories
                          .contatosRepositorie.contatosModel.telefoneFixo !=
                      ''
                  ? Repositories.contatosRepositorie.contatosModel.telefoneFixo
                  : '',
              validator: (value) =>
                  value!.isEmpty ? 'Coloque seu telefone fixo' : null,
              onSaved: (valor) =>
                  Repositories.contatosRepositorie.contatosTelefoneFixo = valor,
              decoration: InputDecoration(
                constraints: BoxConstraints(
                  maxHeight: 33,
                ),
                floatingLabelBehavior: FloatingLabelBehavior.always,
                //labelText: "",
                labelStyle: TextStyle(
                  fontSize: 20,
                ),
                border: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.blue,
                  ),
                  borderRadius: BorderRadius.circular(
                    widget.camposSizeConfigs.borderRadius,
                  ),
                ),
              ),
            ),
          ),
        ]),
      ],
    );
  }
}
