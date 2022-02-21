import 'package:flutter/material.dart';
import 'package:rio_das_pedras_front_end/models/profissional_e_financeira_model.dart';

import '../../../../../../core/entities/uf_list.dart';
import '../../campos_size_configs.dart';
import '../../controllers.dart';

class CampoEmpresaUF extends StatefulWidget {
  final CamposSizeConfigs camposSizeConfigs;
  const CampoEmpresaUF({required this.camposSizeConfigs});

  @override
  _CampoEmpresaUFState createState() => _CampoEmpresaUFState();
}

class _CampoEmpresaUFState extends State<CampoEmpresaUF> {
  ProfissionalEFinanceiraModel UFController = Controllers
      .profissionalEFinanceiraController.profissionalEFinanceiraModel;
  @override
  Widget build(BuildContext context) {
    String selecionado = 'selecionar';

    return Padding(
      padding: EdgeInsets.only(
        top: widget.camposSizeConfigs.spaceBetweenFieldsInTop,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text('UF de nascimento'),
          Container(
            decoration: BoxDecoration(
              border: Border.all(
                width: 1,
                color: UFController.profissionalUF == ''
                    ? Colors.red
                    : Colors.grey,
              ),
              borderRadius:
                  BorderRadius.circular(widget.camposSizeConfigs.borderRadius),
            ),
            child: SizedBox(
              height: widget.camposSizeConfigs.campoHeight,
              width: widget.camposSizeConfigs.campoWidth,
              child: PopupMenuButton(
                child: Align(
                  alignment: Alignment.center,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 5),
                        child: Text(
                          UFController.profissionalUF != ''
                              ? UFController.profissionalUF
                              : selecionado,
                          style: TextStyle(
                            color: UFController.profissionalUF != ''
                                ? Colors.black
                                : Colors.grey,
                          ),
                        ),
                      ),
                      Icon(
                        Icons.arrow_drop_down,
                      ),
                    ],
                  ),
                ),
                itemBuilder: (context) => [
                  PopupMenuItem(
                    child: Text("AC"),
                    value: 1,
                  ),
                  PopupMenuItem(
                    child: Text("AL"),
                    value: 2,
                  ),
                  PopupMenuItem(
                    child: Text("AP"),
                    value: 3,
                  ),
                  PopupMenuItem(
                    child: Text("AM"),
                    value: 4,
                  ),
                  PopupMenuItem(
                    child: Text("BA"),
                    value: 5,
                  ),
                  PopupMenuItem(
                    child: Text("CE"),
                    value: 6,
                  ),
                  PopupMenuItem(
                    child: Text("DF"),
                    value: 7,
                  ),
                  PopupMenuItem(
                    child: Text("ES"),
                    value: 8,
                  ),
                  PopupMenuItem(
                    child: Text("GO"),
                    value: 9,
                  ),
                  PopupMenuItem(
                    child: Text("MA"),
                    value: 10,
                  ),
                  PopupMenuItem(
                    child: Text("MT"),
                    value: 11,
                  ),
                  PopupMenuItem(
                    child: Text("MS"),
                    value: 12,
                  ),
                  PopupMenuItem(
                    child: Text("MG"),
                    value: 13,
                  ),
                  PopupMenuItem(
                    child: Text("PA"),
                    value: 14,
                  ),
                  PopupMenuItem(
                    child: Text("PB"),
                    value: 15,
                  ),
                  PopupMenuItem(
                    child: Text("PR"),
                    value: 16,
                  ),
                  PopupMenuItem(
                    child: Text("PE"),
                    value: 17,
                  ),
                  PopupMenuItem(
                    child: Text("PI"),
                    value: 18,
                  ),
                  PopupMenuItem(
                    child: Text("RJ"),
                    value: 19,
                  ),
                  PopupMenuItem(
                    child: Text("RN"),
                    value: 20,
                  ),
                  PopupMenuItem(
                    child: Text("RS"),
                    value: 21,
                  ),
                  PopupMenuItem(
                    child: Text("RO"),
                    value: 22,
                  ),
                  PopupMenuItem(
                    child: Text("RR"),
                    value: 23,
                  ),
                  PopupMenuItem(
                    child: Text("SC"),
                    value: 24,
                  ),
                  PopupMenuItem(
                    child: Text("SP"),
                    value: 25,
                  ),
                  PopupMenuItem(
                    child: Text("SE"),
                    value: 26,
                  ),
                  PopupMenuItem(
                    child: Text("TO"),
                    value: 27,
                  ),
                ],
                onSelected: (int menu) {
                  if (menu == 1) {
                    UFController.profissionalUF = 'AC';
                    setState(() {
                      selecionado = 'AC';
                    });
                  } else if (menu == 2) {
                    UFController.profissionalUF = 'AL';
                    setState(() {
                      selecionado = 'AL';
                    });
                  } else if (menu == 3) {
                    UFController.profissionalUF = 'AP';
                    setState(() {
                      selecionado = 'AP';
                    });
                  } else if (menu == 4) {
                    UFController.profissionalUF = 'AM';
                    setState(() {
                      selecionado = 'AM';
                    });
                  } else if (menu == 5) {
                    setState(() {
                      selecionado = 'BA';
                    });
                    UFController.profissionalUF = 'BA';
                  } else if (menu == 6) {
                    UFController.profissionalUF = 'CE';
                    setState(() {
                      selecionado = 'CE';
                    });
                  } else if (menu == 7) {
                    UFController.profissionalUF = 'DF';
                    setState(() {
                      selecionado = 'DF';
                    });
                  } else if (menu == 8) {
                    UFController.profissionalUF = 'ES';
                    setState(() {
                      selecionado = 'ES';
                    });
                  } else if (menu == 9) {
                    UFController.profissionalUF = 'GO';
                    setState(() {
                      selecionado = 'GO';
                    });
                  } else if (menu == 10) {
                    UFController.profissionalUF = 'MA';
                    setState(() {
                      selecionado = 'MA';
                    });
                  } else if (menu == 11) {
                    UFController.profissionalUF = 'MT';
                    setState(() {
                      selecionado = 'MT';
                    });
                  } else if (menu == 12) {
                    UFController.profissionalUF = 'MS';
                    setState(() {
                      selecionado = 'MS';
                    });
                  } else if (menu == 13) {
                    UFController.profissionalUF = 'MG';
                    setState(() {
                      selecionado = 'MG';
                    });
                  } else if (menu == 14) {
                    UFController.profissionalUF = 'PA';
                    setState(() {
                      selecionado = 'PA';
                    });
                  } else if (menu == 15) {
                    UFController.profissionalUF = 'PB';
                    setState(() {
                      selecionado = 'PB';
                    });
                  } else if (menu == 16) {
                    UFController.profissionalUF = 'PR';
                    setState(() {
                      selecionado = 'PR';
                    });
                  } else if (menu == 17) {
                    UFController.profissionalUF = 'PE';
                    setState(() {
                      selecionado = 'PE';
                    });
                  } else if (menu == 18) {
                    UFController.profissionalUF = 'PI';
                    setState(() {
                      selecionado = 'PI';
                    });
                  } else if (menu == 19) {
                    UFController.profissionalUF = 'RJ';
                    setState(() {
                      selecionado = 'RJ';
                    });
                  } else if (menu == 20) {
                    UFController.profissionalUF = 'RN';
                    setState(() {
                      selecionado = 'RN';
                    });
                  } else if (menu == 21) {
                    UFController.profissionalUF = 'RS';
                    setState(() {
                      selecionado = 'RS';
                    });
                  } else if (menu == 22) {
                    UFController.profissionalUF = 'RO';
                    setState(() {
                      selecionado = 'RO';
                    });
                  } else if (menu == 23) {
                    UFController.profissionalUF = 'RR';
                    setState(() {
                      selecionado = 'RR';
                    });
                  } else if (menu == 24) {
                    UFController.profissionalUF = 'SC';
                    setState(() {
                      selecionado = 'SC';
                    });
                  } else if (menu == 25) {
                    UFController.profissionalUF = 'SP';
                    setState(() {
                      selecionado = 'SP';
                    });
                  } else if (menu == 26) {
                    UFController.profissionalUF = 'SE';
                    setState(() {
                      selecionado = 'SE';
                    });
                  } else {
                    UFController.profissionalUF = 'TO';
                    setState(() {
                      selecionado = 'TO';
                    });
                  }
                },
              ),
            ),
          )
        ],
      ),
    );
  }
}
