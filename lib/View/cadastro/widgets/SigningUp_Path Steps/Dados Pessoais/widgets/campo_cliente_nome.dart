import 'package:flutter/material.dart';
import '../../.././SigningUp_Path%20Steps/campos_size_configs.dart';
import 'campo_cliente_cpf.dart';

class CampoClienteNome extends StatefulWidget {
  final CamposSizeConfigs camposSizeConfigs;
  CampoClienteNome({required this.camposSizeConfigs});

  @override
  _CampoClienteNomeState createState() => _CampoClienteNomeState();
}

class _CampoClienteNomeState extends State<CampoClienteNome> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
          top: widget.camposSizeConfigs.spaceBetweenFieldsInTop),
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text('Nome'),
            SizedBox(
              height: widget.camposSizeConfigs.campoHeight,
              width: widget.camposSizeConfigs.campoWidth,
              child: TextFormField(
                initialValue: dadosPessoais.clienteNome != ''
                    ? dadosPessoais.clienteNome
                    : '',
                validator: (value) =>
                    value!.isEmpty ? 'Coloque seu nome' : null,
                onSaved: (valor) => dadosPessoaisController.clienteNome = valor,
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
