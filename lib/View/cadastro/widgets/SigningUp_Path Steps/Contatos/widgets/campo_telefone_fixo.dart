import 'package:flutter/material.dart';
import 'package:rio_das_pedras_front_end/View/cadastro/widgets/SigningUp_Path%20Steps/controllers.dart';

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
              initialValue: Repositories.contatosRepository.dddTelefoneFixo != 0
                  ? Repositories.contatosRepository.dddTelefoneFixo.toString()
                  : '',
              validator: (value) => value!.isEmpty ? 'Coloque seu DDD' : null,
              onSaved: (valor) =>
                  Controllers.contatosController.contatosDDDTelefone = valor,
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
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text('Telefone fixo'),
            SizedBox(
              height: widget.camposSizeConfigs.campoHeight,
              width: widget.camposSizeConfigs.campoWidth / 1.5,
              child: TextFormField(
                initialValue: Repositories.contatosRepository.telefoneFixo != ''
                    ? Repositories.contatosRepository.telefoneFixo.toString()
                    : '',
                validator: (value) =>
                    value!.isEmpty ? 'Coloque seu telefone fixo' : null,
                onSaved: (valor) =>
                    Controllers.contatosController.contatosTelefoneFixo = valor,
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
          ],
        ),
      ],
    );
  }
}
