import 'package:flutter/material.dart';

import '../../.././SigningUp_Path%20Steps/campos_size_configs.dart';
import 'campo_cliente_cpf.dart';

class CampoClienteEscolaridade extends StatefulWidget {
  final CamposSizeConfigs camposSizeConfigs;
  CampoClienteEscolaridade({required this.camposSizeConfigs});

  @override
  _CampoClienteEscolaridadeState createState() =>
      _CampoClienteEscolaridadeState();
}

class _CampoClienteEscolaridadeState extends State<CampoClienteEscolaridade> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: widget.camposSizeConfigs.spaceBetweenFieldsInTop,
      ),
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text('Escolaridade'),
            SizedBox(
              height: widget.camposSizeConfigs.campoHeight,
              width: widget.camposSizeConfigs.campoWidth,
              child: TextFormField(
                initialValue: dadosPessoais.escolaridade != ''
                    ? dadosPessoais.escolaridade
                    : '',
                validator: (value) =>
                    value!.isEmpty ? 'Coloque sua escolaridade' : null,
                onSaved: (valor) =>
                    dadosPessoaisController.escolaridade = valor,
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
    );
  }
}
