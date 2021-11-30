import 'package:flutter/material.dart';
import '../../.././SigningUp_Path%20Steps/campos_size_configs.dart';

class PreferenciaContato {
  String preferenciaContato;
  PreferenciaContato(this.preferenciaContato);
}

class CampoPreferenciaContato extends StatefulWidget {
  final CamposSizeConfigs camposSizeConfigs;
  const CampoPreferenciaContato({required this.camposSizeConfigs});

  @override
  _CampoPreferenciaContatoState createState() =>
      _CampoPreferenciaContatoState();
}

class _CampoPreferenciaContatoState extends State<CampoPreferenciaContato> {
  PreferenciaContato? selectedPreferencia;
  List<PreferenciaContato> preferenciasContato = <PreferenciaContato>[
    PreferenciaContato('Fone Residencial'),
    PreferenciaContato('Fone Comercial'),
    PreferenciaContato('Celular'),
    PreferenciaContato('Email'),
    PreferenciaContato('Correio')
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
          Text('Preferência de contato'),
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
                child: DropdownButton<PreferenciaContato>(
                  style: TextStyle(),
                  borderRadius: BorderRadius.circular(20),
                  hint: Text('Selecionar'),
                  isExpanded: true,
                  value: selectedPreferencia,
                  onChanged: (PreferenciaContato? Value) {
                    setState(() {
                      selectedPreferencia = Value;
                    });
                  },
                  items: preferenciasContato
                      .map((PreferenciaContato preferenciaContato) {
                    return DropdownMenuItem<PreferenciaContato>(
                        value: preferenciaContato,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              preferenciaContato.preferenciaContato,
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
