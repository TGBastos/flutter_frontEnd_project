import 'package:flutter/material.dart';
import 'package:rio_das_pedras_front_end/models/loja_organizadora.dart';
import '../../.././SigningUp_Path%20Steps/campos_size_configs.dart';
import 'campo_cliente_cpf.dart';

class Data {
  const Data(this.data);
  final String data;
}

class CampoDataVencimentoFatura extends StatefulWidget {
  final CamposSizeConfigs camposSizeConfigs;
  CampoDataVencimentoFatura({required this.camposSizeConfigs});
  @override
  _CampoDataVencimentoFaturaState createState() =>
      _CampoDataVencimentoFaturaState();
}

class _CampoDataVencimentoFaturaState extends State<CampoDataVencimentoFatura> {
  String diaVencimento1 =
      CartaoProprio.instance.grupoFaturamento[0].diaVencimento.toString();
  String diaVencimento2 =
      CartaoProprio.instance.grupoFaturamento[1].diaVencimento.toString();
  String diaVencimento3 =
      CartaoProprio.instance.grupoFaturamento[2].diaVencimento.toString();
  String diaVencimento4 =
      CartaoProprio.instance.grupoFaturamento[3].diaVencimento.toString();
  String diaVencimento5 =
      CartaoProprio.instance.grupoFaturamento[4].diaVencimento.toString();
  String diaVencimento6 =
      CartaoProprio.instance.grupoFaturamento[5].diaVencimento.toString();

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
          Text(
            'Data vencimento da fatura:',
          ),
          Container(
            decoration: BoxDecoration(
              border: Border.all(
                width: 1,
                color: dadosPessoais.vencimentoDaFatura == ''
                    ? Colors.red
                    : Colors.grey,
              ),
              borderRadius: BorderRadius.circular(
                widget.camposSizeConfigs.borderRadius,
              ),
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
                          selecionado,
                          style: TextStyle(
                            color: dadosPessoais.vencimentoDaFatura != ''
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
                    child: Text(diaVencimento6),
                    value: 1,
                  ),
                  PopupMenuItem(
                    child: Text(diaVencimento3),
                    value: 2,
                  ),
                  PopupMenuItem(
                    child: Text(diaVencimento4),
                    value: 3,
                  ),
                  PopupMenuItem(
                    child: Text(diaVencimento5),
                    value: 3,
                  ),
                  PopupMenuItem(
                    child: Text(diaVencimento1),
                    value: 3,
                  ),
                  PopupMenuItem(
                    child: Text(diaVencimento2),
                    value: 3,
                  ),
                ],
                onSelected: (int menu) {
                  if (menu == 1) {
                    dadosPessoaisController.dataVencimentoFatura = '6';
                    setState(() {
                      selecionado = '1';
                      ;
                    });
                  } else if (menu == 2) {
                    dadosPessoaisController.dataVencimentoFatura = '3';
                    setState(() {
                      selecionado = '5';
                      ;
                    });
                  } else if (menu == 3) {
                    dadosPessoaisController.dataVencimentoFatura = '4';
                    setState(() {
                      selecionado = '10';
                      ;
                    });
                  } else if (menu == 4) {
                    dadosPessoaisController.dataVencimentoFatura = '6';
                    setState(() {
                      selecionado = '15';
                      ;
                    });
                  } else if (menu == 5) {
                    dadosPessoaisController.dataVencimentoFatura = '1';
                    setState(() {
                      selecionado = '26';
                      ;
                    });
                  } else {
                    dadosPessoaisController.dataVencimentoFatura = '2';
                    setState(() {
                      selecionado = '30';
                      ;
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
