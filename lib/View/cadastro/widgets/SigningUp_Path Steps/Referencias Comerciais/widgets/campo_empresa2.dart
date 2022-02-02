import 'package:flutter/material.dart';
import 'package:rio_das_pedras_front_end/View/cadastro/widgets/SigningUp_Path%20Steps/controllers.dart';

import '../../campos_size_configs.dart';
import '../../repositories.dart';

class CampoEmpresa2 extends StatefulWidget {
  final CamposSizeConfigs camposSizeConfigs;
  const CampoEmpresa2({required this.camposSizeConfigs});

  @override
  _CampoEmpresa2State createState() => _CampoEmpresa2State();
}

class _CampoEmpresa2State extends State<CampoEmpresa2> {
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
                initialValue: Repositories.referenciasComerciaisRepository
                            .referenciaComercialEmpresa2 !=
                        ''
                    ? Repositories.referenciasComerciaisRepository
                        .referenciaComercialEmpresa2
                    : '',
                onSaved: (valor) => Controllers.referenciasComerciaisController
                    .referenciaComercialEmpresa2 = valor,
                validator: (value) => value!.isEmpty ? 'Coloque um nome' : null,
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
