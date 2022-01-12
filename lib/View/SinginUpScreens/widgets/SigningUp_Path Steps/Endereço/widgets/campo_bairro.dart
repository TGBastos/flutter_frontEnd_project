import 'package:flutter/material.dart';
import 'package:rio_das_pedras_front_end/controllers/endereco_controller.dart';
import '../../campos_size_configs.dart';

class CampoBairro extends StatefulWidget {
  final CamposSizeConfigs camposSizeConfigs;
  const CampoBairro({required this.camposSizeConfigs});

  @override
  _CampoBairroState createState() => _CampoBairroState();
}

EnderecoController enderecoController = EnderecoController();

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
                initialValue:
                    enderecoController.enderecoModel.enderecoBairro != ''
                        ? enderecoController.enderecoModel.enderecoBairro
                        : '',
                validator: (valor) =>
                    valor!.isEmpty ? 'Coloque seu Bairro' : null,
                onSaved: (valor) => enderecoController.enderecoBairro(valor),
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
