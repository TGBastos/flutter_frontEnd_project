import 'package:flutter/material.dart';
import 'package:rio_das_pedras_front_end/View/cadastro/widgets/SigningUp_Path%20Steps/Dados%20Pessoais/widgets/campo_cliente_cpf.dart';
import 'package:rio_das_pedras_front_end/View/cadastro/widgets/SigningUp_Path%20Steps/Endere%C3%A7o/widgets/campo_bairro.dart';
import 'package:rio_das_pedras_front_end/controllers/dados_pessoais_controller.dart';
import 'package:rio_das_pedras_front_end/controllers/endereco_controller.dart';
import 'package:rio_das_pedras_front_end/models/loja_organizadora.dart';

import '../../campos_size_configs.dart';
import '../../controllers.dart';

class CampoUF extends StatefulWidget {
  final CamposSizeConfigs camposSizeConfigs;
  const CampoUF({required this.camposSizeConfigs});

  @override
  _CampoUFState createState() => _CampoUFState();
}

class _CampoUFState extends State<CampoUF> {
  EnderecoController UFController = Controllers.enderecoController;
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
                color: enderecoController.enderecoModel.enderecoUf == ''
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
                          enderecoController.enderecoModel.enderecoUf != ''
                              ? enderecoController.enderecoModel.enderecoUf
                              : selecionado,
                          style: TextStyle(
                            color:
                                enderecoController.enderecoModel.enderecoUf !=
                                        ''
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
                    UFController.enderecoUf = 'AC';
                    setState(() {
                      selecionado = 'AC';
                    });
                  } else if (menu == 2) {
                    UFController.enderecoUf = 'AL';
                    setState(() {
                      selecionado = 'AL';
                    });
                  } else if (menu == 3) {
                    UFController.enderecoUf = 'AP';
                    setState(() {
                      selecionado = 'AP';
                    });
                  } else if (menu == 4) {
                    UFController.enderecoUf = 'AM';
                    setState(() {
                      selecionado = 'AM';
                    });
                  } else if (menu == 5) {
                    setState(() {
                      selecionado = 'BA';
                    });
                    UFController.enderecoUf = 'BA';
                  } else if (menu == 6) {
                    UFController.enderecoUf = 'CE';
                    setState(() {
                      selecionado = 'CE';
                    });
                  } else if (menu == 7) {
                    UFController.enderecoUf = 'DF';
                    setState(() {
                      selecionado = 'DF';
                    });
                  } else if (menu == 8) {
                    UFController.enderecoUf = 'ES';
                    setState(() {
                      selecionado = 'ES';
                    });
                  } else if (menu == 9) {
                    UFController.enderecoUf = 'GO';
                    setState(() {
                      selecionado = 'GO';
                    });
                  } else if (menu == 10) {
                    UFController.enderecoUf = 'MA';
                    setState(() {
                      selecionado = 'MA';
                    });
                  } else if (menu == 11) {
                    UFController.enderecoUf = 'MT';
                    setState(() {
                      selecionado = 'MT';
                    });
                  } else if (menu == 12) {
                    UFController.enderecoUf = 'MS';
                    setState(() {
                      selecionado = 'MS';
                    });
                  } else if (menu == 13) {
                    UFController.enderecoUf = 'MG';
                    setState(() {
                      selecionado = 'MG';
                    });
                  } else if (menu == 14) {
                    UFController.enderecoUf = 'PA';
                    setState(() {
                      selecionado = 'PA';
                    });
                  } else if (menu == 15) {
                    UFController.enderecoUf = 'PB';
                    setState(() {
                      selecionado = 'PB';
                    });
                  } else if (menu == 16) {
                    UFController.enderecoUf = 'PR';
                    setState(() {
                      selecionado = 'PR';
                    });
                  } else if (menu == 17) {
                    UFController.enderecoUf = 'PE';
                    setState(() {
                      selecionado = 'PE';
                    });
                  } else if (menu == 18) {
                    UFController.enderecoUf = 'PI';
                    setState(() {
                      selecionado = 'PI';
                    });
                  } else if (menu == 19) {
                    UFController.enderecoUf = 'RJ';
                    setState(() {
                      selecionado = 'RJ';
                    });
                  } else if (menu == 20) {
                    UFController.enderecoUf = 'RN';
                    setState(() {
                      selecionado = 'RN';
                    });
                  } else if (menu == 21) {
                    UFController.enderecoUf = 'RS';
                    setState(() {
                      selecionado = 'RS';
                    });
                  } else if (menu == 22) {
                    UFController.enderecoUf = 'RO';
                    setState(() {
                      selecionado = 'RO';
                    });
                  } else if (menu == 23) {
                    UFController.enderecoUf = 'RR';
                    setState(() {
                      selecionado = 'RR';
                    });
                  } else if (menu == 24) {
                    UFController.enderecoUf = 'SC';
                    setState(() {
                      selecionado = 'SC';
                    });
                  } else if (menu == 25) {
                    UFController.enderecoUf = 'SP';
                    setState(() {
                      selecionado = 'SP';
                    });
                  } else if (menu == 26) {
                    UFController.enderecoUf = 'SE';
                    setState(() {
                      selecionado = 'SE';
                    });
                  } else {
                    UFController.enderecoUf = 'TO';
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
