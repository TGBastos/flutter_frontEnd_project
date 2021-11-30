import 'package:flutter/material.dart';
import '../../.././SigningUp_Path%20Steps/campos_size_configs.dart';

class CampoClienteRG extends StatefulWidget {
  final CamposSizeConfigs camposSizeConfigs;
  CampoClienteRG({required this.camposSizeConfigs});

  @override
  _CampoClienteRGState createState() => _CampoClienteRGState();
}

class _CampoClienteRGState extends State<CampoClienteRG> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
          top: widget.camposSizeConfigs.spaceBetweenFieldsInTop),
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text('RG'),
            SizedBox(
              height: widget.camposSizeConfigs.campoHeight,
              width: widget.camposSizeConfigs.campoWidth,
              child: TextFormField(
                validator: (value) => value!.isEmpty ? 'Coloque seu RG' : null,
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
