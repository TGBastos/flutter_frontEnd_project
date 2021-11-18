import 'package:flutter/material.dart';
import '../../.././SigningUp_Path%20Steps/campos_size_configs.dart';

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
  Data? selectedData;
  List<Data> datas = <Data>[
    Data('10'),
    Data('15'),
    Data('18'),
    Data('20'),
    Data('22'),
    Data('28'),
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
              padding: EdgeInsets.only(left: 20),
              height: widget.camposSizeConfigs.campoHeight,
              width: widget.camposSizeConfigs.campoWidth,
              decoration: BoxDecoration(
                  border: Border.all(
                    width: 1,
                    color: Colors.grey,
                  ),
                  borderRadius: BorderRadius.circular(
                      widget.camposSizeConfigs.borderRadius)),
              child: Align(
                alignment: Alignment.center,
                child: SizedBox(
                  height: widget.camposSizeConfigs.campoHeight,
                  width: widget.camposSizeConfigs.campoWidth,
                  child: DropdownButtonHideUnderline(
                    child: DropdownButton<Data>(
                      borderRadius: BorderRadius.circular(20),
                      alignment: AlignmentDirectional.centerEnd,
                      hint: Text(
                        "Selecionar",
                        style: TextStyle(),
                      ),
                      isExpanded: true,
                      icon: Icon(
                        Icons.arrow_drop_down,
                      ),
                      value: selectedData,
                      onChanged: (Data? Value) {
                        setState(() {
                          selectedData = Value;
                        });
                      },
                      items: datas.map((Data data) {
                        return DropdownMenuItem<Data>(
                          value: data,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Text(
                                data.data,
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
            ),
          ]),
    );
  }
}
