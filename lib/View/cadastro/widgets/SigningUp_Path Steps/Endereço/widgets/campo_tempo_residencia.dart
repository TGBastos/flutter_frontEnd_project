import 'package:flutter/material.dart';
import 'package:rio_das_pedras_front_end/controllers/endereco_controller.dart';
import '../../campos_size_configs.dart';
import 'campo_bairro.dart';

class CampoTempoResidencia extends StatefulWidget {
  final CamposSizeConfigs camposSizeConfigs;
  const CampoTempoResidencia({required this.camposSizeConfigs});

  @override
  _CampoTempoResidenciaState createState() => _CampoTempoResidenciaState();
}

class _CampoTempoResidenciaState extends State<CampoTempoResidencia> {
  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return Padding(
      padding: EdgeInsets.only(
          top: widget.camposSizeConfigs.spaceBetweenFieldsInTop),
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text('Tempo de residência'),
            Row(
              children: <Widget>[
                SizedBox(
                  height: widget.camposSizeConfigs.campoHeight,
                  width: widget.camposSizeConfigs.campoWidth,
                  child: TextFormField(
                    initialValue: enderecoController
                                .enderecoModel.enderecoTempoDeResidenciaAnos !=
                            ''
                        ? enderecoController
                            .enderecoModel.enderecoTempoDeResidenciaAnos
                        : '',
                    validator: (valor) =>
                        valor!.isEmpty ? 'Coloque quantos anos' : null,
                    onSaved: (valor) => enderecoController
                        .enderecoTempoDeResidenciaAnos = valor,
                    decoration: InputDecoration(
                      constraints: BoxConstraints(
                        maxHeight: 33,
                      ),
                      labelText: "Anos",
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
                SizedBox(
                  width: screenSize.width / 80,
                ),
                SizedBox(
                  height: widget.camposSizeConfigs.campoHeight,
                  width: widget.camposSizeConfigs.campoWidth,
                  child: TextFormField(
                    initialValue: enderecoController
                                .enderecoModel.enderecoTempoDeResidenciaMeses !=
                            ''
                        ? enderecoController
                            .enderecoModel.enderecoTempoDeResidenciaMeses
                        : '',
                    validator: (valor) =>
                        valor!.isEmpty ? 'Coloque quantos meses' : null,
                    onSaved: (valor) => enderecoController
                        .enderecoTempoDeResidenciaMeses = valor,
                    decoration: InputDecoration(
                      constraints: BoxConstraints(
                        maxHeight: 33,
                      ),
                      labelText: "Meses",
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
              ],
            ),
          ]),
    );
  }
}
