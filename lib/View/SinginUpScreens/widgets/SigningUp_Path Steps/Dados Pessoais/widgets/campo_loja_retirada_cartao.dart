import 'package:flutter/material.dart';
import '../../.././SigningUp_Path%20Steps/campos_size_configs.dart';

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
  Lojas? selectedLoja;
  List<Lojas> lojas = <Lojas>[
    Lojas(
      'loja',
    ),
    Lojas(
      'loja',
    )
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
            Text('Escolha a data de vencimento da fatura:'),
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
                  child: DropdownButton<Lojas>(
                    borderRadius: BorderRadius.circular(20),
                    hint: Text("Selecionar"),
                    isExpanded: true,
                    icon: Icon(
                      Icons.arrow_drop_down,
                    ),
                    value: selectedLoja,
                    onChanged: (Lojas? Value) {
                      setState(() {
                        selectedLoja = Value;
                      });
                    },
                    items: lojas.map((Lojas lojas) {
                      return DropdownMenuItem<Lojas>(
                        value: lojas,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              lojas.loja,
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
