import 'package:flutter/material.dart';
import '../../.././SigningUp_Path%20Steps/campos_size_configs.dart';
import 'campo_cliente_cpf.dart';

class CampoClienteNomeMae extends StatefulWidget {
  final CamposSizeConfigs camposSizeConfigs;
  CampoClienteNomeMae({required this.camposSizeConfigs});

  @override
  _CampoClienteNomeMaeState createState() => _CampoClienteNomeMaeState();
}

class _CampoClienteNomeMaeState extends State<CampoClienteNomeMae> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
          top: widget.camposSizeConfigs.spaceBetweenFieldsInTop),
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text('Nome da mãe'),
            SizedBox(
              height: widget.camposSizeConfigs.campoHeight,
              width: widget.camposSizeConfigs.campoWidth,
              child: TextFormField(
                initialValue: singinUpController.dadosPessoais.nomeDaMae != ''
                    ? singinUpController.dadosPessoais.nomeDaMae
                    : '',
                validator: (value) =>
                    value!.isEmpty ? 'Coloque o nome da mãe' : null,
                onSaved: (valor) => singinUpController.nomeDaMae(valor),
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
