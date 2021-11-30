import 'package:flutter/material.dart';
import '../../campos_size_configs.dart';

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
                    validator: (value) =>
                        value!.isEmpty ? 'Coloque seu CPF' : null,
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
                    validator: (value) =>
                        value!.isEmpty ? 'Coloque seu CPF' : null,
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
