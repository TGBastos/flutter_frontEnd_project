import 'package:flutter/material.dart';
import 'package:rio_das_pedras_front_end/Screens/SinginUpScreens/widgets/SigningUp_Path%20Steps/campos_size_configs.dart';

class EstadoCivil {
  String estadoCivil;
  EstadoCivil(this.estadoCivil);
}

class CampoClienteEstadoCivil extends StatefulWidget {
  CamposSizeConfigs camposSizeConfigs;
  CampoClienteEstadoCivil({required this.camposSizeConfigs});

  @override
  _CampoClienteEstadoCivilState createState() =>
      _CampoClienteEstadoCivilState();
}

class _CampoClienteEstadoCivilState extends State<CampoClienteEstadoCivil> {
  EstadoCivil? selectedEstadoCivil;
  List<EstadoCivil> EstadosCivis = <EstadoCivil>[
    EstadoCivil('Solteiro'),
    EstadoCivil('Casado'),
    EstadoCivil('Divorciado'),
    EstadoCivil('Viúvo'),
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
            Text('Escolha a data de vencimento da fatura:'),
            Container(
              decoration: BoxDecoration(
                  border: Border.all(
                    width: 1,
                    color: Colors.grey,
                  ),
                  borderRadius: BorderRadius.circular(
                      widget.camposSizeConfigs.borderRadius)),
              child: SizedBox(
                height: widget.camposSizeConfigs.campoHeight,
                width: widget.camposSizeConfigs.campoWidth,
                child: DropdownButtonHideUnderline(
                  child: DropdownButton<EstadoCivil>(
                    borderRadius: BorderRadius.circular(20),
                    hint: Text("Selecionar"),
                    isExpanded: true,
                    icon: Icon(
                      Icons.arrow_drop_down,
                    ),
                    value: selectedEstadoCivil,
                    onChanged: (EstadoCivil? Value) {
                      setState(() {
                        selectedEstadoCivil = Value;
                      });
                    },
                    items: EstadosCivis.map((EstadoCivil estadoCivil) {
                      return DropdownMenuItem<EstadoCivil>(
                        value: estadoCivil,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              estadoCivil.estadoCivil,
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
