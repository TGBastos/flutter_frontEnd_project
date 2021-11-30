import 'package:flutter/material.dart';

import '../../campos_size_configs.dart';

class CampoEmpresaEndereco extends StatefulWidget {
  final CamposSizeConfigs camposSizeConfigs;
  const CampoEmpresaEndereco({required this.camposSizeConfigs});

  @override
  _CampoEmpresaEnderecoState createState() => _CampoEmpresaEnderecoState();
}

class _CampoEmpresaEnderecoState extends State<CampoEmpresaEndereco> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
          top: widget.camposSizeConfigs.spaceBetweenFieldsInTop),
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text('Endereço'),
            SizedBox(
              height: widget.camposSizeConfigs.campoHeight,
              width: widget.camposSizeConfigs.campoWidth,
              child: TextFormField(
                validator: (value) =>
                    value!.isEmpty ? 'Coloque o endereço da empresa' : null,
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
