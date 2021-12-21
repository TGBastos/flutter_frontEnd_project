import 'package:flutter/material.dart';
import '../../.././SigningUp_Path%20Steps/campos_size_configs.dart';

class CampoConjugeCPF extends StatefulWidget {
  final CamposSizeConfigs camposSizeConfigs;
  const CampoConjugeCPF({required this.camposSizeConfigs});

  @override
  _CampoConjugeCPFState createState() => _CampoConjugeCPFState();
}

class _CampoConjugeCPFState extends State<CampoConjugeCPF> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
          top: widget.camposSizeConfigs.spaceBetweenFieldsInTop),
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text('CPF'),
            SizedBox(
              height: widget.camposSizeConfigs.campoHeight,
              width: widget.camposSizeConfigs.campoWidth,
              child: TextFormField(
                //validator: (value) => value!.isEmpty ? 'Coloque seu CPF' : null,
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
