import 'package:flutter/material.dart';
import 'package:rio_das_pedras_front_end/controllers/dados_pessoais_controller.dart';

import '../../.././SigningUp_Path%20Steps/campos_size_configs.dart';
import 'campo_cliente_cpf.dart';

class Tratamentos {
  String tratamento;
  Tratamentos(this.tratamento);
}

class CampoClienteTratamento extends StatefulWidget {
  final CamposSizeConfigs camposSizeConfigs;
  CampoClienteTratamento({required this.camposSizeConfigs});

  @override
  _CampoClienteTratamentoState createState() => _CampoClienteTratamentoState();
}

class _CampoClienteTratamentoState extends State<CampoClienteTratamento> {
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
              child: PopupMenuButton(
                child: Align(
                  alignment: Alignment.center,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 5),
                        child: Text(
                          dadosPessoais.tratamento != ''
                              ? dadosPessoais.tratamento
                              : 'selecionar',
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
                    child: Text("Nenhum"),
                    value: 1,
                  ),
                  PopupMenuItem(
                    child: Text(
                      "Sr.",
                    ),
                    value: 2,
                  ),
                  PopupMenuItem(
                    child: Text(
                      "Sra.",
                    ),
                    value: 2,
                  ),
                  PopupMenuItem(
                    child: Text("Srta."),
                    value: 1,
                  ),
                  PopupMenuItem(
                    child: Text("V.exa."),
                    value: 1,
                  ),
                ],
                onSelected: (int menu) {
                  if (menu == 1) {
                    DadosPessoaisController().dadosPessoais.tratamento =
                        'Nenhum';
                  } else if (menu == 2) {
                    DadosPessoaisController().dadosPessoais.tratamento = 'Sr.';
                  } else if (menu == 3) {
                    DadosPessoaisController().dadosPessoais.tratamento = 'Sra';
                  } else if (menu == 4) {
                    DadosPessoaisController().dadosPessoais.tratamento =
                        'Srta.';
                  } else if (menu == 5) {
                    DadosPessoaisController().dadosPessoais.tratamento =
                        'V.exa.';
                  }
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
