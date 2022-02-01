import 'package:flutter/material.dart';

import '../../campos_size_configs.dart';
import '../../repositories.dart';

class CampoEmpresaMatricula extends StatefulWidget {
  final CamposSizeConfigs camposSizeConfigs;
  const CampoEmpresaMatricula({required this.camposSizeConfigs});

  @override
  _CampoEmpresaMatriculaState createState() => _CampoEmpresaMatriculaState();
}

class _CampoEmpresaMatriculaState extends State<CampoEmpresaMatricula> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
          top: widget.camposSizeConfigs.spaceBetweenFieldsInTop),
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text('Matrícula'),
            SizedBox(
              height: widget.camposSizeConfigs.campoHeight,
              width: widget.camposSizeConfigs.campoWidth,
              child: TextFormField(
                initialValue: Repositories
                            .profissionalFinanceiraRepositorie
                            .profissionalEFinanceiraModel
                            .profissionalMatricula !=
                        ''
                    ? Repositories.profissionalFinanceiraRepositorie
                        .profissionalEFinanceiraModel.profissionalMatricula
                    : '',
                onSaved: (valor) => Repositories
                    .profissionalFinanceiraRepositorie
                    .profissionalMatricula(valor),
                validator: (value) =>
                    value!.isEmpty ? 'Coloque sua matrícula' : null,
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
