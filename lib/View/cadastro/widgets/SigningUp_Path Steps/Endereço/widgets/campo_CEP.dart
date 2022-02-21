import 'package:extended_masked_text/extended_masked_text.dart';
import 'package:flutter/material.dart';
import 'package:rio_das_pedras_front_end/controllers/endereco_controller.dart';
import '../../campos_size_configs.dart';
import 'campo_bairro.dart';

class CampoCEP extends StatefulWidget {
  final CamposSizeConfigs camposSizeConfigs;
  const CampoCEP({required this.camposSizeConfigs});

  @override
  _CampoCEPState createState() => _CampoCEPState();
}

class _CampoCEPState extends State<CampoCEP> {
  final controladorCEP = MaskedTextController(
      mask: '00000-000', text: enderecoController.enderecoModel.enderecoCep);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
          top: widget.camposSizeConfigs.spaceBetweenFieldsInTop),
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text('CEP'),
            SizedBox(
              height: widget.camposSizeConfigs.campoHeight,
              width: widget.camposSizeConfigs.campoWidth,
              child: TextFormField(
                controller: controladorCEP,
                validator: (valor) => valor!.isEmpty ? 'Coloque seu CEP' : null,
                onSaved: (valor) =>
                    enderecoController.enderecoCep = controladorCEP.unmasked,
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
