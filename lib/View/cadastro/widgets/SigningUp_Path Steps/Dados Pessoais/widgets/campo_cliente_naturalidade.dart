import 'package:flutter/material.dart';
import '../../.././SigningUp_Path%20Steps/campos_size_configs.dart';
import 'campo_cliente_cpf.dart';

class CampoClienteNaturalidade extends StatefulWidget {
  final CamposSizeConfigs camposSizeConfigs;
  CampoClienteNaturalidade({required this.camposSizeConfigs});

  @override
  _CampoClienteNaturalidadeState createState() =>
      _CampoClienteNaturalidadeState();
}

class _CampoClienteNaturalidadeState extends State<CampoClienteNaturalidade> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
          top: widget.camposSizeConfigs.spaceBetweenFieldsInTop),
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text('Naturalidade'),
            SizedBox(
              height: widget.camposSizeConfigs.campoHeight,
              width: widget.camposSizeConfigs.campoWidth,
              child: TextFormField(
                initialValue: dadosPessoais.naturalidade != ''
                    ? dadosPessoais.naturalidade
                    : '',
                validator: (value) =>
                    value!.isEmpty ? 'Coloque sua naturalidade' : null,
                onSaved: (valor) =>
                    dadosPessoaisController.naturalidade = valor,
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
