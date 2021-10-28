import 'package:flutter/material.dart';
import 'package:rio_das_pedras_front_end/Screens/SinginUpScreens/widgets/SigningUp_Path%20Steps/campos_size_configs.dart';
import '../../../../../commun/widgets/UFList.dart';

class CampoClienteUFNascimento extends StatefulWidget {
  CamposSizeConfigs camposSizeConfigs;
  CampoClienteUFNascimento({required this.camposSizeConfigs});

  @override
  _CampoClienteUFNascimentoState createState() =>
      _CampoClienteUFNascimentoState();
}

class _CampoClienteUFNascimentoState extends State<CampoClienteUFNascimento> {
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
              child: DropdownButtonHideUnderline(
                child: DropdownButton<UF>(
                  style: TextStyle(),
                  borderRadius: BorderRadius.circular(20),
                  hint: Text('Selecionar'),
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
