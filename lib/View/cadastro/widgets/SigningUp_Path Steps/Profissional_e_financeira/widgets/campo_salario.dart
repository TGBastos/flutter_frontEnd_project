import 'package:flutter/material.dart';

import '../../campos_size_configs.dart';
import '../../repositories.dart';

class CampoSalario extends StatefulWidget {
  final CamposSizeConfigs camposSizeConfigs;
  const CampoSalario({required this.camposSizeConfigs});

  @override
  _CampoSalarioState createState() => _CampoSalarioState();
}

class _CampoSalarioState extends State<CampoSalario> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
          top: widget.camposSizeConfigs.spaceBetweenFieldsInTop),
      child: Row(
        children: [
          Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text('Salário'),
                SizedBox(
                  height: widget.camposSizeConfigs.campoHeight,
                  width: widget.camposSizeConfigs.campoWidth / 2,
                  child: TextFormField(
                    initialValue: Repositories
                                .profissionalFinanceiraRepositorie
                                .profissionalEFinanceiraModel
                                .profissionalSalario !=
                            ''
                        ? Repositories.profissionalFinanceiraRepositorie
                            .profissionalEFinanceiraModel.profissionalSalario
                        : '',
                    onSaved: (valor) => Repositories
                        .profissionalFinanceiraRepositorie
                        .profissionalSalario(valor),
                    validator: (value) =>
                        value!.isEmpty ? 'Coloque seu salário' : null,
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
          SizedBox(
            width: widget.camposSizeConfigs.campoWidth / 16,
          ),
          Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text('Outras Rendas'),
                SizedBox(
                  height: widget.camposSizeConfigs.campoHeight,
                  width: widget.camposSizeConfigs.campoWidth / 2,
                  child: TextFormField(
                    initialValue: Repositories
                                .profissionalFinanceiraRepositorie
                                .profissionalEFinanceiraModel
                                .profissionalOutrasRendas !=
                            ''
                        ? Repositories
                            .profissionalFinanceiraRepositorie
                            .profissionalEFinanceiraModel
                            .profissionalOutrasRendas
                        : '',
                    onSaved: (valor) => Repositories
                        .profissionalFinanceiraRepositorie
                        .profissionalOutrasRendas(valor),
                    validator: (value) => value!.isEmpty ? null : null,
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
        ],
      ),
    );
  }
}
