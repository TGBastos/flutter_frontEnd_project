import 'package:flutter/material.dart';

import '../../../../../../core/entities/uf_list.dart';
import '../../campos_size_configs.dart';

class CampoEmpresaUF extends StatefulWidget {
  final CamposSizeConfigs camposSizeConfigs;
  const CampoEmpresaUF({required this.camposSizeConfigs});

  @override
  _CampoEmpresaUFState createState() => _CampoEmpresaUFState();
}

class _CampoEmpresaUFState extends State<CampoEmpresaUF> {
  UF? selectedUF;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: widget.camposSizeConfigs.spaceBetweenFieldsInTop,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text('UF'),
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
              child: DropdownButtonHideUnderline(
                child: DropdownButton<UF>(
                  style: TextStyle(),
                  borderRadius: BorderRadius.circular(20),
                  //hint: Text('Selecionar'),
                  isExpanded: true,
                  value: selectedUF,
                  onChanged: (UF? Value) {
                    setState(() {
                      selectedUF = Value;
                    });
                  },
                  items: ufs.map((UF uf) {
                    return DropdownMenuItem<UF>(
                        value: uf,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              uf.uf,
                              style: TextStyle(
                                color: Colors.black,
                              ),
                            )
                          ],
                        ));
                  }).toList(),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
