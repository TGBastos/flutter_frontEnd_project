import 'package:flutter/material.dart';

import '../../campos_size_configs.dart';

class CampoEmpresaComplento extends StatefulWidget {
  final CamposSizeConfigs camposSizeConfigs;
  const CampoEmpresaComplento({required this.camposSizeConfigs});

  @override
  _CampoEmpresaComplentoState createState() => _CampoEmpresaComplentoState();
}

class _CampoEmpresaComplentoState extends State<CampoEmpresaComplento> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
          top: widget.camposSizeConfigs.spaceBetweenFieldsInTop),
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text('Complemento'),
            SizedBox(
              height: widget.camposSizeConfigs.campoHeight,
              width: widget.camposSizeConfigs.campoWidth,
              child: TextFormField(
                validator: (value) =>
                    value!.isEmpty ? 'Coloque o complemento' : null,
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
