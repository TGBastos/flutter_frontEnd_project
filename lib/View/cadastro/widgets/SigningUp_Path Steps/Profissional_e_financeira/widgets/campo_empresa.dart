import 'package:flutter/material.dart';
import 'package:rio_das_pedras_front_end/View/cadastro/widgets/SigningUp_Path%20Steps/controllers.dart';

import '../../campos_size_configs.dart';
import '../../repositories.dart';

class CampoEmpresa extends StatefulWidget {
  final CamposSizeConfigs camposSizeConfigs;
  const CampoEmpresa({required this.camposSizeConfigs});

  @override
  _CampoEmpresaState createState() => _CampoEmpresaState();
}

class _CampoEmpresaState extends State<CampoEmpresa> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
          top: widget.camposSizeConfigs.spaceBetweenFieldsInTop),
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text('Empresa'),
            SizedBox(
              height: widget.camposSizeConfigs.campoHeight,
              width: widget.camposSizeConfigs.campoWidth,
              child: TextFormField(
                initialValue: Repositories.profissionalFinanceiraRepository
                            .profissionalEmpresa !=
                        ''
                    ? Repositories
                        .profissionalFinanceiraRepository.profissionalEmpresa
                    : '',
                onSaved: (valor) => Controllers
                    .profissionalEFinanceiraController
                    .profissionalEmpresa = valor,
                validator: (value) =>
                    value!.isEmpty ? 'Coloque sua empresa' : null,
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
