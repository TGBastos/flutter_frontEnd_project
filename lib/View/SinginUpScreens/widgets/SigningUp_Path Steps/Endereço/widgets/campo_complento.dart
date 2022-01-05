import 'package:flutter/material.dart';
import 'package:rio_das_pedras_front_end/controllers/endereco_controller.dart';
import '../../campos_size_configs.dart';

class CampoComplemento extends StatefulWidget {
  final CamposSizeConfigs camposSizeConfigs;
  CampoComplemento({required this.camposSizeConfigs});

  @override
  _CampoComplementoState createState() => _CampoComplementoState();
}

class _CampoComplementoState extends State<CampoComplemento> {
  EnderecoController enderecoController = EnderecoController();
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
                initialValue:
                    enderecoController.enderecoModel.enderecoComplemento != ''
                        ? enderecoController.enderecoModel.enderecoComplemento
                        : '',
                validator: (valor) =>
                    valor!.isEmpty ? 'Coloque um complemento' : null,
                onSaved: (valor) =>
                    enderecoController.enderecoComplemento(valor),
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
