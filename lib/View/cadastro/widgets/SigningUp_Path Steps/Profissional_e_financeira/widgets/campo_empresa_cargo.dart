import 'package:flutter/material.dart';
import 'package:rio_das_pedras_front_end/View/cadastro/widgets/SigningUp_Path%20Steps/controllers.dart';

import '../../campos_size_configs.dart';
import '../../repositories.dart';

class CampoEmpresaCargo extends StatefulWidget {
  final CamposSizeConfigs camposSizeConfigs;
  const CampoEmpresaCargo({required this.camposSizeConfigs});

  @override
  _CampoEmpresaCargoState createState() => _CampoEmpresaCargoState();
}

class _CampoEmpresaCargoState extends State<CampoEmpresaCargo> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
          top: widget.camposSizeConfigs.spaceBetweenFieldsInTop),
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text('Cargo'),
            SizedBox(
              height: widget.camposSizeConfigs.campoHeight,
              width: widget.camposSizeConfigs.campoWidth,
              child: TextFormField(
                initialValue: Repositories.profissionalFinanceiraRepository
                            .profissionalCargo !=
                        ''
                    ? Repositories
                        .profissionalFinanceiraRepository.profissionalCargo
                    : '',
                onSaved: (valor) => Controllers
                    .profissionalEFinanceiraController
                    .profissionalCargo = valor,
                validator: (value) =>
                    value!.isEmpty ? 'Coloque seu cargo' : null,
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
