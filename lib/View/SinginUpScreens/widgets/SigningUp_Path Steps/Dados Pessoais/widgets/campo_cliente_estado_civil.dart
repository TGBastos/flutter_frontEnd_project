// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import '../../.././SigningUp_Path%20Steps/campos_size_configs.dart';
import 'package:rio_das_pedras_front_end/core/BLOC/estadoCivil_bloc.dart';

class EstadoCivil {
  String estadoCivil;

  EstadoCivil(this.estadoCivil);
}

class CampoClienteEstadoCivil extends StatefulWidget {
  static bool? inRelationship;
  final CamposSizeConfigs camposSizeConfigs;
  CampoClienteEstadoCivil({required this.camposSizeConfigs});
  _CampoClienteEstadoCivilState state = _CampoClienteEstadoCivilState();

  @override
  _CampoClienteEstadoCivilState createState() =>
      _CampoClienteEstadoCivilState();
}

class _CampoClienteEstadoCivilState extends State<CampoClienteEstadoCivil> {
  String? selectedEstadoCivil;

  List<String> EstadosCivis = <String>[
    'Solteiro',
    'Casado',
    'União Estável',
    'Divorciado',
    'Viúvo',
    'Outro',
  ];
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: widget.camposSizeConfigs.spaceBetweenFieldsInTop,
      ),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: <
          Widget>[
        Text('Estada Civil'),
        Container(
          decoration: BoxDecoration(
              border: Border.all(
                width: 1,
                color: Colors.grey,
              ),
              borderRadius:
                  BorderRadius.circular(widget.camposSizeConfigs.borderRadius)),
          child: SizedBox(
            height: widget.camposSizeConfigs.campoHeight,
            width: widget.camposSizeConfigs.campoWidth,
            child: DropdownButtonHideUnderline(
              child: DropdownButton<String>(
                borderRadius: BorderRadius.circular(20),
                hint: Text("Selecionar"),
                isExpanded: true,
                icon: Icon(
                  Icons.arrow_drop_down,
                ),
                value: selectedEstadoCivil,
                onChanged: (String? Value) {
                  setState(() {
                    selectedEstadoCivil = Value;
                    print(Value);
                    if (Value == "Casado" || Value == "União Estável") {
                      EstadoCivilBloc.instance
                          .add(EstadoCivilEvent.isntInRelationship);
                    } else if (Value == "Divorciado" || Value != "Solteiro") {
                      EstadoCivilBloc.instance
                          .add(EstadoCivilEvent.isInRelation);
                    }
                    CampoClienteEstadoCivil.inRelationship = true;
                  });
                },
                items: EstadosCivis.map((String estadoCivil) {
                  return DropdownMenuItem<String>(
                    value: estadoCivil,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          estadoCivil,
                          style: TextStyle(
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  );
                }).toList(),
              ),
            ),
          ),
        ),
      ]),
    );
  }
}
