import 'package:extended_masked_text/extended_masked_text.dart';
import 'package:flutter/material.dart';

import '../../.././SigningUp_Path%20Steps/campos_size_configs.dart';
import 'campo_cliente_cpf.dart';

class CampoClienteRG extends StatefulWidget {
  final CamposSizeConfigs camposSizeConfigs;
  CampoClienteRG({required this.camposSizeConfigs});

  @override
  _CampoClienteRGState createState() => _CampoClienteRGState();
}

class _CampoClienteRGState extends State<CampoClienteRG> {
  final controladorRgCadastro =
      MaskedTextController(mask: '00-000-000.00', text: dadosPessoais.rg);
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
                controller: controladorRgCadastro,
                validator: (valor) => valor!.isEmpty ? 'Coloque seu RG' : null,
                onSaved: (valor) =>
                    dadosPessoaisController.rg = controladorRgCadastro.unmasked,
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
