import 'package:flutter/material.dart';
import 'package:rio_das_pedras_front_end/controllers/endereco_controller.dart';
import '../../campos_size_configs.dart';
import 'campo_bairro.dart';

class CampoEndereco extends StatefulWidget {
  final CamposSizeConfigs camposSizeConfigs;
  const CampoEndereco({required this.camposSizeConfigs});

  @override
  _CampoEnderecoState createState() => _CampoEnderecoState();
}

class _CampoEnderecoState extends State<CampoEndereco> {
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
                initialValue: enderecoController.enderecoModel.endereco != ''
                    ? enderecoController.enderecoModel.endereco
                    : '',
                validator: (value) =>
                    value!.isEmpty ? 'Coloque seu Endereço' : null,
                onSaved: (valor) => enderecoController.endereco = valor,
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
