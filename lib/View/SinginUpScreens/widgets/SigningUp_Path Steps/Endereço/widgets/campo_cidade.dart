import 'package:flutter/material.dart';
import 'package:rio_das_pedras_front_end/controllers/endereco_controller.dart';
import '../../campos_size_configs.dart';
import 'campo_bairro.dart';

class CampoCidade extends StatefulWidget {
  final CamposSizeConfigs camposSizeConfigs;
  CampoCidade({required this.camposSizeConfigs});

  @override
  _CampoCidadeState createState() => _CampoCidadeState();
}

class _CampoCidadeState extends State<CampoCidade> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
          top: widget.camposSizeConfigs.spaceBetweenFieldsInTop),
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text('Cidade'),
            SizedBox(
              height: widget.camposSizeConfigs.campoHeight,
              width: widget.camposSizeConfigs.campoWidth,
              child: TextFormField(
                initialValue:
                    enderecoController.enderecoModel.enderecoCidade != ''
                        ? enderecoController.enderecoModel.enderecoCidade
                        : '',
                validator: (valor) =>
                    valor!.isEmpty ? 'Coloque sua cidade' : null,
                onSaved: (valor) => enderecoController.enderecoCidade(valor),
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
