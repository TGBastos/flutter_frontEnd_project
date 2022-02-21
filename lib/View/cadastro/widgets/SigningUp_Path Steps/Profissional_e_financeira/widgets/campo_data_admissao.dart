import 'package:flutter/material.dart';
import 'package:rio_das_pedras_front_end/View/cadastro/widgets/SigningUp_Path%20Steps/controllers.dart';

import '../../campos_size_configs.dart';
import '../../repositories.dart';

class CampoTempoDeServico extends StatefulWidget {
  final CamposSizeConfigs camposSizeConfigs;
  const CampoTempoDeServico({required this.camposSizeConfigs});

  @override
  _CampoTempoDeServicoState createState() => _CampoTempoDeServicoState();
}

class _CampoTempoDeServicoState extends State<CampoTempoDeServico> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
          top: widget.camposSizeConfigs.spaceBetweenFieldsInTop),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text('Data de admissão'),
                SizedBox(
                  height: widget.camposSizeConfigs.campoHeight,
                  width: widget.camposSizeConfigs.campoWidth / 2,
                  child: TextFormField(
                    initialValue: Repositories.profissionalFinanceiraRepository
                                .profissionalDataAdmissao !=
                            ''
                        ? Repositories.profissionalFinanceiraRepository
                            .profissionalDataAdmissao
                        : '',
                    onSaved: (valor) => Controllers
                        .profissionalEFinanceiraController
                        .profissionalTempoDeServicoAnos = valor,
                    validator: (value) =>
                        value!.isEmpty ? 'Coloque a data de admissão' : null,
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
