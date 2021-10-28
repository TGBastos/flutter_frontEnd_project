import 'package:flutter/material.dart';
import 'package:rio_das_pedras_front_end/Screens/SinginUpScreens/widgets/SigningUp_Path%20Steps/campos_size_configs.dart';

class Data {
  const Data(this.data);
  final String data;
}

class CampoDataVencimentoFatura extends StatefulWidget {
  CamposSizeConfigs camposSizeConfigs;
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
    Data('20'),
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
                  child: DropdownButton<Data>(
                    borderRadius: BorderRadius.circular(20),
                    hint: Text("Selecionar"),
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
          ]),
    );
  }
}
