import 'package:flutter/material.dart';

import '../../campos_size_configs.dart';

class Profissao {
  final String profissao;
  Profissao(
    this.profissao,
  );
}

class CampoProfisao extends StatefulWidget {
  final CamposSizeConfigs camposSizeConfigs;
  const CampoProfisao({required this.camposSizeConfigs});

  @override
  _CampoProfisaoState createState() => _CampoProfisaoState();
}

class _CampoProfisaoState extends State<CampoProfisao> {
  Profissao? selectedProfissao;
  List<Profissao> profissoes = <Profissao>[
    Profissao('profissao'),
    Profissao('profissao'),
    Profissao('profissao'),
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
          Text('Profissão'),
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
                child: DropdownButton<Profissao>(
                  style: TextStyle(),
                  borderRadius: BorderRadius.circular(20),
                  //hint: Text('Selecionar'),
                  isExpanded: true,
                  value: selectedProfissao,
                  onChanged: (Profissao? Value) {
                    setState(() {
                      selectedProfissao = Value;
                    });
                  },
                  items: profissoes.map((Profissao profissao) {
                    return DropdownMenuItem<Profissao>(
                        value: profissao,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              profissao.profissao,
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
