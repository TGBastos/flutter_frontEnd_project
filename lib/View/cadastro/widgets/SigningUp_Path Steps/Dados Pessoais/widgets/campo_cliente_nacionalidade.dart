import 'package:flutter/material.dart';

import '../../.././SigningUp_Path%20Steps/campos_size_configs.dart';
import 'campo_cliente_cpf.dart';

class CampoClienteNacionalidade extends StatefulWidget {
  final CamposSizeConfigs camposSizeConfigs;
  CampoClienteNacionalidade({required this.camposSizeConfigs});

  @override
  _CampoClienteNacionalidadeState createState() =>
      _CampoClienteNacionalidadeState();
}

class _CampoClienteNacionalidadeState extends State<CampoClienteNacionalidade> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
          top: widget.camposSizeConfigs.spaceBetweenFieldsInTop),
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text('Nacionalidade'),
            SizedBox(
              height: widget.camposSizeConfigs.campoHeight,
              width: widget.camposSizeConfigs.campoWidth,
              child: TextFormField(
                initialValue: dadosPessoais.nacionalidade != ''
                    ? dadosPessoais.nacionalidade
                    : '',
                validator: (valor) =>
                    valor!.isEmpty ? 'Coloque sua nacionalidade' : null,
                onSaved: (valor) =>
                    dadosPessoaisController.nacionalidade = valor,
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
