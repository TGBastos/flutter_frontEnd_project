import 'package:flutter/material.dart';

import '../../.././SigningUp_Path%20Steps/campos_size_configs.dart';
import 'campo_cliente_cpf.dart';

class CampoExpedidorDoRG extends StatefulWidget {
  final CamposSizeConfigs camposSizeConfigs;
  CampoExpedidorDoRG({required this.camposSizeConfigs});

  @override
  _CampoExpedidorDoRGState createState() => _CampoExpedidorDoRGState();
}

class _CampoExpedidorDoRGState extends State<CampoExpedidorDoRG> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
          top: widget.camposSizeConfigs.spaceBetweenFieldsInTop),
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text('Exp. RG'),
            SizedBox(
              height: widget.camposSizeConfigs.campoHeight,
              width: widget.camposSizeConfigs.campoWidth,
              child: TextFormField(
                initialValue: dadosPessoais.expedidorRg != ''
                    ? dadosPessoais.expedidorRg
                    : '',
                validator: (value) =>
                    value!.isEmpty ? 'Coloque o expedidor do RG' : null,
                onSaved: (valor) => singinUpController.expedidorRg = valor,
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
