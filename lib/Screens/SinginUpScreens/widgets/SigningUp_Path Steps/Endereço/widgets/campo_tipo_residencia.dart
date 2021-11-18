import 'package:flutter/material.dart';

import '../../campos_size_configs.dart';

class TipoResidencia {
  String tiposResidencia;
  TipoResidencia(this.tiposResidencia);
}

class CampoTipoResidencia extends StatefulWidget {
  final CamposSizeConfigs camposSizeConfigs;
  const CampoTipoResidencia({required this.camposSizeConfigs});

  @override
  _CampoTipoResidenciaState createState() => _CampoTipoResidenciaState();
}

class _CampoTipoResidenciaState extends State<CampoTipoResidencia> {
  TipoResidencia? selectedTipo;
  List<TipoResidencia> tiposResidencia = <TipoResidencia>[
    TipoResidencia('Propria'),
    TipoResidencia('Alugada'),
    TipoResidencia('Funcional'),
    TipoResidencia('Dos Pais'),
    TipoResidencia('Financiada'),
    TipoResidencia('Outros'),
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: widget.camposSizeConfigs.spaceBetweenFieldsInTop,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text('Tipo de residência'),
          Container(
            decoration: BoxDecoration(
              border: Border.all(
                width: 1,
                color: Colors.grey,
              ),
              borderRadius:
                  BorderRadius.circular(widget.camposSizeConfigs.borderRadius),
            ),
            child: SizedBox(
              height: widget.camposSizeConfigs.campoHeight,
              width: widget.camposSizeConfigs.campoWidth,
              child: DropdownButtonHideUnderline(
                child: DropdownButton<TipoResidencia>(
                  style: TextStyle(),
                  borderRadius: BorderRadius.circular(20),
                  hint: Text('Selecionar'),
                  isExpanded: true,
                  value: selectedTipo,
                  onChanged: (TipoResidencia? Value) {
                    setState(() {
                      selectedTipo = Value;
                    });
                  },
                  items: tiposResidencia.map((TipoResidencia tiposResidencia) {
                    return DropdownMenuItem<TipoResidencia>(
                        value: tiposResidencia,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              tiposResidencia.tiposResidencia,
                              style: TextStyle(
                                color: Colors.black,
                              ),
                            )
                          ],
                        ));
                  }).toList(),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
