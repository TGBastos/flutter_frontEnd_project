import 'package:flutter/material.dart';
import '../../.././SigningUp_Path%20Steps/campos_size_configs.dart';
import 'campo_cliente_cpf.dart';

class Lojas {
  String loja;
  Lojas(this.loja);
}

class CampoLojaRetiradaCartao extends StatefulWidget {
  final CamposSizeConfigs camposSizeConfigs;
  CampoLojaRetiradaCartao({required this.camposSizeConfigs});

  @override
  _CampoLojaRetiradaCartaoState createState() =>
      _CampoLojaRetiradaCartaoState();
}

class _CampoLojaRetiradaCartaoState extends State<CampoLojaRetiradaCartao> {
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
            'Escolha a loja para retirada do cartão:',
          ),
          Container(
            decoration: BoxDecoration(
              border: Border.all(
                width: 1,
                color: dadosPessoais.lojaRetiradaCartao == ''
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
                          dadosPessoais.lojaRetiradaCartao != ''
                              ? dadosPessoais.lojaRetiradaCartao
                              : selecionado,
                          style: TextStyle(
                            color: dadosPessoais.lojaRetiradaCartao != ''
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
                    child: Text("M"),
                    value: 1,
                  ),
                  PopupMenuItem(
                    child: Text(
                      "F",
                    ),
                    value: 2,
                  ),
                  PopupMenuItem(
                    child: Text(
                      "Outro",
                    ),
                    value: 3,
                  ),
                ],
                onSelected: (int menu) {
                  if (menu == 1) {
                    dadosPessoaisController.lojaRetiradaCartao = 'M';
                    setState(() {
                      selecionado = 'M';
                    });
                  } else if (menu == 2) {
                    dadosPessoaisController.lojaRetiradaCartao = 'F';
                    setState(() {
                      selecionado = 'F';
                    });
                  } else {
                    dadosPessoaisController.lojaRetiradaCartao = 'Outro';
                    setState(() {
                      selecionado = 'Outro';
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
