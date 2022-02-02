import 'package:flutter/material.dart';
import 'package:rio_das_pedras_front_end/View/cadastro/widgets/SigningUp_Path%20Steps/controllers.dart';

import '../../campos_size_configs.dart';
import '../../repositories.dart';

class CampoTelefone2 extends StatefulWidget {
  final CamposSizeConfigs camposSizeConfigs;
  const CampoTelefone2({required this.camposSizeConfigs});

  @override
  _CampoTelefone2State createState() => _CampoTelefone2State();
}

class _CampoTelefone2State extends State<CampoTelefone2> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
          top: widget.camposSizeConfigs.spaceBetweenFieldsInTop),
      child: Row(
        children: <Widget>[
          Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text('DDD'),
                SizedBox(
                  height: widget.camposSizeConfigs.campoHeight,
                  width: widget.camposSizeConfigs.campoWidth / 4,
                  child: TextFormField(
                    initialValue: Repositories.referenciasPessoaisRepository
                                .referenciaPessoalDDDTelefone2 !=
                            ''
                        ? Repositories.referenciasPessoaisRepository
                            .referenciaPessoalDDDTelefone2
                        : '',
                    onSaved: (valor) => Controllers
                        .referenciasPessoaisController
                        .referenciaPessoalDDDTelefone2 = valor,
                    validator: (value) =>
                        value!.isEmpty ? 'Coloque seu DDD' : null,
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
            width: widget.camposSizeConfigs.campoWidth / 32,
          ),
          Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text('Telefone '),
                SizedBox(
                  height: widget.camposSizeConfigs.campoHeight,
                  width: widget.camposSizeConfigs.campoWidth / 1.5,
                  child: TextFormField(
                    initialValue: Repositories.referenciasPessoaisRepository
                                .referenciaPessoalTelefone2 !=
                            ''
                        ? Repositories.referenciasPessoaisRepository
                            .referenciaPessoalTelefone2
                        : '',
                    onSaved: (valor) => Controllers
                        .referenciasPessoaisController
                        .referenciaPessoalTelefone2 = valor,
                    validator: (value) =>
                        value!.isEmpty ? 'Coloque um telefone' : null,
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
