import 'package:extended_masked_text/extended_masked_text.dart';
import 'package:flutter/material.dart';

import '../../.././SigningUp_Path%20Steps/campos_size_configs.dart';
import 'campo_cliente_cpf.dart';

class CampoClienteDataNascimento extends StatefulWidget {
  final CamposSizeConfigs camposSizeConfigs;
  CampoClienteDataNascimento({required this.camposSizeConfigs});

  @override
  _CampoClienteDataNascimentoState createState() =>
      _CampoClienteDataNascimentoState();
}

class _CampoClienteDataNascimentoState
    extends State<CampoClienteDataNascimento> {
  final controladorDataDeNascimento = MaskedTextController(
      mask: '00-00-0000', text: dadosPessoais.dataDeNascimento);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
          top: widget.camposSizeConfigs.spaceBetweenFieldsInTop),
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text('Data de Nascimento'),
            SizedBox(
              height: widget.camposSizeConfigs.campoHeight,
              width: widget.camposSizeConfigs.campoWidth,
              child: TextFormField(
                controller: controladorDataDeNascimento,
                validator: (value) =>
                    value!.isEmpty ? 'Coloque sua data de nascimento' : null,
                onSaved: (valor) {
                  singinUpController.dataDeNascimento = valor;
                },
                decoration: InputDecoration(
                  constraints: BoxConstraints(
                    maxHeight: 33,
                  ),
                  floatingLabelBehavior: FloatingLabelBehavior.always,
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
