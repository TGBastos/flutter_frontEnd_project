import 'package:flutter/material.dart';
import 'package:rio_das_pedras_front_end/View/cadastro/widgets/SigningUp_Path%20Steps/controllers.dart';

import '../../campos_size_configs.dart';
import '../../repositories.dart';

class CampoEmpresaCEP extends StatefulWidget {
  final CamposSizeConfigs camposSizeConfigs;
  const CampoEmpresaCEP({required this.camposSizeConfigs});

  @override
  _CampoEmpresaCEPState createState() => _CampoEmpresaCEPState();
}

class _CampoEmpresaCEPState extends State<CampoEmpresaCEP> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
          top: widget.camposSizeConfigs.spaceBetweenFieldsInTop),
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text('CEP'),
            SizedBox(
              height: widget.camposSizeConfigs.campoHeight,
              width: widget.camposSizeConfigs.campoWidth,
              child: TextFormField(
                initialValue: Repositories
                            .profissionalFinanceiraRepository.profissionalCep !=
                        ''
                    ? Repositories
                        .profissionalFinanceiraRepository.profissionalCep
                    : '',
                onSaved: (valor) => Controllers
                    .profissionalEFinanceiraController.profissionalCep = valor!,
                validator: (value) => value!.isEmpty ? 'Coloque o CEP' : null,
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
