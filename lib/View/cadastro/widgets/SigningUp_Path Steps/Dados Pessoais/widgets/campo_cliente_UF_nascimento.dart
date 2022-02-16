import 'package:flutter/material.dart';
import 'package:rio_das_pedras_front_end/View/cadastro/widgets/SigningUp_Path%20Steps/controllers.dart';
import 'package:rio_das_pedras_front_end/controllers/dados_pessoais_controller.dart';

import '../../.././SigningUp_Path%20Steps/campos_size_configs.dart';
import 'campo_cliente_cpf.dart';

class CampoClienteUFNascimento extends StatefulWidget {
  final CamposSizeConfigs camposSizeConfigs;
  CampoClienteUFNascimento({required this.camposSizeConfigs});

  @override
  _CampoClienteUFNascimentoState createState() =>
      _CampoClienteUFNascimentoState();
}

class _CampoClienteUFNascimentoState extends State<CampoClienteUFNascimento> {
  DadosPessoaisController UFController = Controllers.dadosPessoaisController;
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
                color: dadosPessoais.ufDeNascimento == ''
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
                          dadosPessoais.ufDeNascimento != ''
                              ? dadosPessoais.ufDeNascimento
                              : selecionado,
                          style: TextStyle(
                            color: dadosPessoais.ufDeNascimento != ''
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
                    UFController.ufDeNascimento = 'AC';
                    setState(() {
                      selecionado = 'AC';
                    });
                  } else if (menu == 2) {
                    UFController.ufDeNascimento = 'AL';
                    setState(() {
                      selecionado = 'AL';
                    });
                  } else if (menu == 3) {
                    UFController.ufDeNascimento = 'AP';
                    setState(() {
                      selecionado = 'AP';
                    });
                  } else if (menu == 4) {
                    UFController.ufDeNascimento = 'AM';
                    setState(() {
                      selecionado = 'AM';
                    });
                  } else if (menu == 5) {
                    setState(() {
                      selecionado = 'BA';
                    });
                    UFController.ufDeNascimento = 'BA';
                  } else if (menu == 6) {
                    UFController.ufDeNascimento = 'CE';
                    setState(() {
                      selecionado = 'CE';
                    });
                  } else if (menu == 7) {
                    UFController.ufDeNascimento = 'DF';
                    setState(() {
                      selecionado = 'DF';
                    });
                  } else if (menu == 8) {
                    UFController.ufDeNascimento = 'ES';
                    setState(() {
                      selecionado = 'ES';
                    });
                  } else if (menu == 9) {
                    UFController.ufDeNascimento = 'GO';
                    setState(() {
                      selecionado = 'GO';
                    });
                  } else if (menu == 10) {
                    UFController.ufDeNascimento = 'MA';
                    setState(() {
                      selecionado = 'MA';
                    });
                  } else if (menu == 11) {
                    UFController.ufDeNascimento = 'MT';
                    setState(() {
                      selecionado = 'MT';
                    });
                  } else if (menu == 12) {
                    UFController.ufDeNascimento = 'MS';
                    setState(() {
                      selecionado = 'MS';
                    });
                  } else if (menu == 13) {
                    UFController.ufDeNascimento = 'MG';
                    setState(() {
                      selecionado = 'MG';
                    });
                  } else if (menu == 14) {
                    UFController.ufDeNascimento = 'PA';
                    setState(() {
                      selecionado = 'PA';
                    });
                  } else if (menu == 15) {
                    UFController.ufDeNascimento = 'PB';
                    setState(() {
                      selecionado = 'PB';
                    });
                  } else if (menu == 16) {
                    UFController.ufDeNascimento = 'PR';
                    setState(() {
                      selecionado = 'PR';
                    });
                  } else if (menu == 17) {
                    UFController.ufDeNascimento = 'PE';
                    setState(() {
                      selecionado = 'PE';
                    });
                  } else if (menu == 18) {
                    UFController.ufDeNascimento = 'PI';
                    setState(() {
                      selecionado = 'PI';
                    });
                  } else if (menu == 19) {
                    UFController.ufDeNascimento = 'RJ';
                    setState(() {
                      selecionado = 'RJ';
                    });
                  } else if (menu == 20) {
                    UFController.ufDeNascimento = 'RN';
                    setState(() {
                      selecionado = 'RN';
                    });
                  } else if (menu == 21) {
                    UFController.ufDeNascimento = 'RS';
                    setState(() {
                      selecionado = 'RS';
                    });
                  } else if (menu == 22) {
                    UFController.ufDeNascimento = 'RO';
                    setState(() {
                      selecionado = 'RO';
                    });
                  } else if (menu == 23) {
                    UFController.ufDeNascimento = 'RR';
                    setState(() {
                      selecionado = 'RR';
                    });
                  } else if (menu == 24) {
                    UFController.ufDeNascimento = 'SC';
                    setState(() {
                      selecionado = 'SC';
                    });
                  } else if (menu == 25) {
                    UFController.ufDeNascimento = 'SP';
                    setState(() {
                      selecionado = 'SP';
                    });
                  } else if (menu == 26) {
                    UFController.ufDeNascimento = 'SE';
                    setState(() {
                      selecionado = 'SE';
                    });
                  } else {
                    UFController.ufDeNascimento = 'TO';
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
