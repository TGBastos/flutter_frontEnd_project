import 'package:flutter/material.dart';
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
                color: Colors.grey,
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
                            color: Colors.grey,
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
                    child: Text(
                      "AL",
                    ),
                    value: 2,
                  ),
                  PopupMenuItem(
                    child: Text(
                      "AP",
                    ),
                    value: 2,
                  ),
                  PopupMenuItem(
                    child: Text("AM"),
                    value: 1,
                  ),
                  PopupMenuItem(
                    child: Text(
                      "BA",
                    ),
                    value: 2,
                  ),
                  PopupMenuItem(
                    child: Text(
                      "CE",
                    ),
                    value: 2,
                  ),
                  PopupMenuItem(
                    child: Text("DF"),
                    value: 1,
                  ),
                  PopupMenuItem(
                    child: Text(
                      "ES",
                    ),
                    value: 2,
                  ),
                  PopupMenuItem(
                    child: Text(
                      "GO",
                    ),
                    value: 2,
                  ),
                  PopupMenuItem(
                    child: Text("MA"),
                    value: 1,
                  ),
                  PopupMenuItem(
                    child: Text(
                      "MT",
                    ),
                    value: 2,
                  ),
                  PopupMenuItem(
                    child: Text(
                      "MS",
                    ),
                    value: 2,
                  ),
                  PopupMenuItem(
                    child: Text("MG"),
                    value: 1,
                  ),
                  PopupMenuItem(
                    child: Text(
                      "PA",
                    ),
                    value: 2,
                  ),
                  PopupMenuItem(
                    child: Text(
                      "PB",
                    ),
                    value: 2,
                  ),
                  PopupMenuItem(
                    child: Text("PR"),
                    value: 1,
                  ),
                  PopupMenuItem(
                    child: Text(
                      "PE",
                    ),
                    value: 2,
                  ),
                  PopupMenuItem(
                    child: Text(
                      "PI",
                    ),
                    value: 2,
                  ),
                  PopupMenuItem(
                    child: Text("RJ"),
                    value: 1,
                  ),
                  PopupMenuItem(
                    child: Text(
                      "RN",
                    ),
                    value: 2,
                  ),
                  PopupMenuItem(
                    child: Text(
                      "RS",
                    ),
                    value: 2,
                  ),
                  PopupMenuItem(
                    child: Text("RO"),
                    value: 1,
                  ),
                  PopupMenuItem(
                    child: Text(
                      "RR",
                    ),
                    value: 2,
                  ),
                  PopupMenuItem(
                    child: Text(
                      "SC",
                    ),
                    value: 2,
                  ),
                  PopupMenuItem(
                    child: Text("SP"),
                    value: 1,
                  ),
                  PopupMenuItem(
                    child: Text(
                      "SE",
                    ),
                    value: 2,
                  ),
                  PopupMenuItem(
                    child: Text(
                      "TO",
                    ),
                    value: 2,
                  ),
                ],
                onSelected: (int menu) {
                  if (menu == 1) {
                    DadosPessoaisController().dadosPessoais.ufDeNascimento =
                        'AC';
                  } else if (menu == 2) {
                    DadosPessoaisController().dadosPessoais.ufDeNascimento =
                        'AL';
                  } else if (menu == 3) {
                    DadosPessoaisController().dadosPessoais.ufDeNascimento =
                        'AP';
                  } else if (menu == 4) {
                    DadosPessoaisController().dadosPessoais.ufDeNascimento =
                        'AM';
                  } else if (menu == 5) {
                    setState(() {
                      selecionado = 'BA';
                    });
                    DadosPessoaisController().dadosPessoais.ufDeNascimento =
                        'BA';
                  } else if (menu == 6) {
                    DadosPessoaisController().dadosPessoais.ufDeNascimento =
                        'CE';
                  } else if (menu == 7) {
                    DadosPessoaisController().dadosPessoais.ufDeNascimento =
                        'DF';
                  } else if (menu == 8) {
                    DadosPessoaisController().dadosPessoais.ufDeNascimento =
                        'ES';
                  } else if (menu == 9) {
                    DadosPessoaisController().dadosPessoais.ufDeNascimento =
                        'GO';
                  } else if (menu == 10) {
                    DadosPessoaisController().dadosPessoais.ufDeNascimento =
                        'MA';
                  } else if (menu == 11) {
                    DadosPessoaisController().dadosPessoais.ufDeNascimento =
                        'MT';
                  } else if (menu == 12) {
                    DadosPessoaisController().dadosPessoais.ufDeNascimento =
                        'MS';
                  } else if (menu == 13) {
                    DadosPessoaisController().dadosPessoais.ufDeNascimento =
                        'MG';
                  } else if (menu == 14) {
                    DadosPessoaisController().dadosPessoais.ufDeNascimento =
                        'PA';
                  } else if (menu == 15) {
                    DadosPessoaisController().dadosPessoais.ufDeNascimento =
                        'PB';
                  } else if (menu == 16) {
                    DadosPessoaisController().dadosPessoais.ufDeNascimento =
                        'PR';
                  } else if (menu == 17) {
                    DadosPessoaisController().dadosPessoais.ufDeNascimento =
                        'PE';
                  } else if (menu == 18) {
                    DadosPessoaisController().dadosPessoais.ufDeNascimento =
                        'PI';
                  } else if (menu == 19) {
                    DadosPessoaisController().dadosPessoais.ufDeNascimento =
                        'RJ';
                  } else if (menu == 20) {
                    DadosPessoaisController().dadosPessoais.ufDeNascimento =
                        'RN';
                  } else if (menu == 21) {
                    DadosPessoaisController().dadosPessoais.ufDeNascimento =
                        'RS';
                  } else if (menu == 22) {
                    DadosPessoaisController().dadosPessoais.ufDeNascimento =
                        'RO';
                  } else if (menu == 23) {
                    DadosPessoaisController().dadosPessoais.ufDeNascimento =
                        'RR';
                  } else if (menu == 24) {
                    DadosPessoaisController().dadosPessoais.ufDeNascimento =
                        'SC';
                  } else if (menu == 25) {
                    DadosPessoaisController().dadosPessoais.ufDeNascimento =
                        'SP';
                  } else if (menu == 26) {
                    DadosPessoaisController().dadosPessoais.ufDeNascimento =
                        'SE';
                  } else {
                    DadosPessoaisController().dadosPessoais.ufDeNascimento =
                        'TO';
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
