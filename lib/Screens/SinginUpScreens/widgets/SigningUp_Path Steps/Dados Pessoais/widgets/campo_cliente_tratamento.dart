import 'package:flutter/material.dart';
import 'package:rio_das_pedras_front_end/Screens/SinginUpScreens/widgets/SigningUp_Path%20Steps/campos_size_configs.dart';

class Tratamentos {
  String tratamento;
  Tratamentos(this.tratamento);
}

class CampoClienteTratamento extends StatefulWidget {
  CamposSizeConfigs camposSizeConfigs;
  CampoClienteTratamento({required this.camposSizeConfigs});

  @override
  _CampoClienteTratamentoState createState() => _CampoClienteTratamentoState();
}

class _CampoClienteTratamentoState extends State<CampoClienteTratamento> {
  Tratamentos? selectedTratamento;
  List<Tratamentos> tratamentos = <Tratamentos>[
    Tratamentos('Sr.'),
    Tratamentos('Sra.'),
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
            Text('Tratamento'),
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
                  child: DropdownButton<Tratamentos>(
                    borderRadius: BorderRadius.circular(20),
                    hint: Text("Selecionar"),
                    isExpanded: true,
                    icon: Icon(
                      Icons.arrow_drop_down,
                    ),
                    value: selectedTratamento,
                    onChanged: (Tratamentos? Value) {
                      setState(() {
                        selectedTratamento = Value;
                      });
                    },
                    items: tratamentos.map((Tratamentos tratamentos) {
                      return DropdownMenuItem<Tratamentos>(
                        value: tratamentos,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              tratamentos.tratamento,
                              style: TextStyle(color: Colors.black),
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
