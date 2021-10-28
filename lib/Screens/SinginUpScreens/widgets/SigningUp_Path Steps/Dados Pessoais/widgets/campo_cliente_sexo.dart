import 'package:flutter/material.dart';
import 'package:rio_das_pedras_front_end/Screens/SinginUpScreens/widgets/SigningUp_Path%20Steps/campos_size_configs.dart';

class Sexo {
  String sexo;
  Sexo(this.sexo);
}

class CampoClienteSexo extends StatefulWidget {
  final CamposSizeConfigs camposSizeConfigs;
  CampoClienteSexo({required this.camposSizeConfigs});

  @override
  _CampoClienteSexoState createState() => _CampoClienteSexoState();
}

class _CampoClienteSexoState extends State<CampoClienteSexo> {
  Sexo? selectedSexo;
  List<Sexo> sexos = <Sexo>[Sexo('Homem'), Sexo('Mulher'), Sexo('Outro')];
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: widget.camposSizeConfigs.spaceBetweenFieldsInTop,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            'Sexo',
          ),
          Container(
            decoration: BoxDecoration(
              border: Border.all(
                width: 1,
                color: Colors.grey,
              ),
              borderRadius: BorderRadius.circular(
                widget.camposSizeConfigs.borderRadius,
              ),
            ),
            child: SizedBox(
                height: widget.camposSizeConfigs.campoHeight,
                width: widget.camposSizeConfigs.campoWidth,
                child: DropdownButtonHideUnderline(
                  child: DropdownButton<Sexo>(
                    borderRadius: BorderRadius.circular(20),
                    hint: Text('Selecionar'),
                    isExpanded: true,
                    value: selectedSexo,
                    onChanged: (Sexo? Value) {
                      setState(() {
                        selectedSexo = Value;
                      });
                    },
                    items: sexos.map((Sexo sexo) {
                      return DropdownMenuItem(
                          value: sexo,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Text(
                                sexo.sexo,
                                style: TextStyle(
                                  color: Colors.black,
                                ),
                              ),
                            ],
                          ));
                    }).toList(),
                  ),
                )),
          )
        ],
      ),
    );
  }
}
