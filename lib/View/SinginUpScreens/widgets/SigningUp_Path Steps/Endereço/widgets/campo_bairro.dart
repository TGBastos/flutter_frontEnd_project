import 'package:flutter/material.dart';
import '../../campos_size_configs.dart';

class CampoBairro extends StatefulWidget {
  final CamposSizeConfigs camposSizeConfigs;
  const CampoBairro({required this.camposSizeConfigs});

  @override
  _CampoBairroState createState() => _CampoBairroState();
}

class _CampoBairroState extends State<CampoBairro> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
          top: widget.camposSizeConfigs.spaceBetweenFieldsInTop),
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text('Bairro'),
            SizedBox(
              height: widget.camposSizeConfigs.campoHeight,
              width: widget.camposSizeConfigs.campoWidth,
              child: TextFormField(
                validator: (value) =>
                    value!.isEmpty ? 'Coloque seu Bairro' : null,
                decoration: InputDecoration(
                  constraints: BoxConstraints(
                    maxHeight: 33,
                  ),
                  floatingLabelBehavior: FloatingLabelBehavior.always,
                  //labelText: "CPF",
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
