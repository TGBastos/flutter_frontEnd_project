import 'package:flutter/material.dart';

import '../../.././SigningUp_Path%20Steps/campos_size_configs.dart';
import 'campo_cliente_cpf.dart';

class CampoClienteOragaoEmissorCPF extends StatefulWidget {
  final CamposSizeConfigs camposSizeConfigs;
  CampoClienteOragaoEmissorCPF({required this.camposSizeConfigs});

  @override
  _CampoClienteOragaoEmissorCPFState createState() =>
      _CampoClienteOragaoEmissorCPFState();
}

class _CampoClienteOragaoEmissorCPFState
    extends State<CampoClienteOragaoEmissorCPF> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
          top: widget.camposSizeConfigs.spaceBetweenFieldsInTop),
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text('Org.Emissor'),
            SizedBox(
              height: widget.camposSizeConfigs.campoHeight,
              width: widget.camposSizeConfigs.campoWidth,
              child: TextFormField(
                initialValue: dadosPessoais.orgaoEmissor != ''
                    ? dadosPessoais.orgaoEmissor
                    : '',
                validator: (valor) =>
                    valor!.isEmpty ? 'Coloque o orgão emissor' : null,
                onSaved: (valor) =>
                    dadosPessoaisController.cpfOrgaoEmissor = valor,
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
