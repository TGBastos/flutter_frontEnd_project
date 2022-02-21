import 'package:flutter/material.dart';
import 'package:rio_das_pedras_front_end/View/cadastro/widgets/SigningUp_Path%20Steps/controllers.dart';

import '../../campos_size_configs.dart';
import '../../repositories.dart';

class CampoEmpresaBairro extends StatefulWidget {
  final CamposSizeConfigs camposSizeConfigs;
  const CampoEmpresaBairro({required this.camposSizeConfigs});

  @override
  _CampoEmpresaBairroState createState() => _CampoEmpresaBairroState();
}

class _CampoEmpresaBairroState extends State<CampoEmpresaBairro> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
          top: widget.camposSizeConfigs.spaceBetweenFieldsInTop),
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text('Bairro'),
            SizedBox(
              height: widget.camposSizeConfigs.campoHeight,
              width: widget.camposSizeConfigs.campoWidth,
              child: TextFormField(
                initialValue: Repositories.profissionalFinanceiraRepository
                            .profissionalBairro !=
                        ''
                    ? Repositories
                        .profissionalFinanceiraRepository.profissionalBairro
                    : '',
                validator: (valor) =>
                    valor!.isEmpty ? 'Coloque o bairro da empresa' : null,
                onSaved: (valor) => Controllers
                    .profissionalEFinanceiraController
                    .profissionalBairro = valor!,
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
                //onSaved: () => {t = },
              ),
            ),
          ]),
    );
  }
}
