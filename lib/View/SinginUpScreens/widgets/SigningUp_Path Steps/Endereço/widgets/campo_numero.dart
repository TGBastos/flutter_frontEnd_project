import 'package:flutter/material.dart';
import 'package:rio_das_pedras_front_end/controllers/endereco_controller.dart';
import '../../campos_size_configs.dart';

class CampoNumero extends StatefulWidget {
  final CamposSizeConfigs camposSizeConfigs;
  const CampoNumero({required this.camposSizeConfigs});

  @override
  _CampoNumeroState createState() => _CampoNumeroState();
}

class _CampoNumeroState extends State<CampoNumero> {
  EnderecoController enderecoController = EnderecoController();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
          top: widget.camposSizeConfigs.spaceBetweenFieldsInTop),
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text('Número'),
            SizedBox(
              height: widget.camposSizeConfigs.campoHeight,
              width: widget.camposSizeConfigs.campoWidth,
              child: TextFormField(
                initialValue:
                    enderecoController.enderecoModel.enderecoNumero != ''
                        ? enderecoController.enderecoModel.enderecoNumero
                        : '',
                validator: (value) =>
                    value!.isEmpty ? 'Coloque o número' : null,
                onSaved: (valor) => enderecoController.enderecoNumero(valor),
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
