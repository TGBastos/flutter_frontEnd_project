import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:rio_das_pedras_front_end/Screens/utils/colorPalette.dart';

class RowMeusDadosCongif {
  final double mainSizedBoxWidth;
  final double mainSizedBoxHeight;
  final double contentSizedBoxWidth;
  final double contentSizedBoxHeight;
  final double rightFirstTextPadding;
  final double topFirstTextPadding;
  final double leftFirstTextPadding;
  final double bottomFirstTextPadding;

  RowMeusDadosCongif({
    required this.mainSizedBoxWidth,
    required this.mainSizedBoxHeight,
    required this.contentSizedBoxWidth,
    required this.contentSizedBoxHeight,
    required this.rightFirstTextPadding,
    required this.topFirstTextPadding,
    required this.leftFirstTextPadding,
    required this.bottomFirstTextPadding,
  });
}

class RowMeusDados extends StatefulWidget {
  final RowMeusDadosCongif rowMeusDadosCongif;
  const RowMeusDados({Key? key, required this.rowMeusDadosCongif})
      : super(key: key);

  @override
  _RowMeusDadosState createState() => _RowMeusDadosState();
}

class _RowMeusDadosState extends State<RowMeusDados> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      //Main SizedBox
      width: widget.rowMeusDadosCongif.mainSizedBoxWidth,
      height: widget.rowMeusDadosCongif.mainSizedBoxHeight,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: Text(
              "Meus Dados",
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                  color: Palette.projectCollors[200]),
            ),
          ),
          Flexible(
            flex: 1,
            child: Padding(
              padding: EdgeInsets.fromLTRB(0, 0, 30, 0),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: SizedBox(
              height: widget.rowMeusDadosCongif.contentSizedBoxHeight,
              width: widget.rowMeusDadosCongif.contentSizedBoxWidth,
              child: Column(children: [
                Align(
                  alignment:
                      widget.rowMeusDadosCongif.contentSizedBoxHeight <= 654
                          ? Alignment.topCenter
                          : Alignment.bottomCenter,
                  child: Container(
                    width: widget.rowMeusDadosCongif.contentSizedBoxWidth,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(2),
                      color: Palette.projectCollors[200],
                    ),
                    height: 3,
                  ),
                ),
                Flexible(
                  child: Padding(
                    padding: EdgeInsets.only(
                        bottom: widget
                                    .rowMeusDadosCongif.contentSizedBoxHeight <=
                                654
                            ? widget.rowMeusDadosCongif.contentSizedBoxHeight /
                                4
                            : widget.rowMeusDadosCongif.contentSizedBoxHeight /
                                6),
                  ),
                ),
                RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                      text: 'Preencha corretamente os seus dados, assim ' +
                          'você poderá acessar a sua conta sem complicações \n' +
                          'Os campos que possuem "',
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        color: Colors.black,
                        fontSize: 15,
                      ),
                      children: <TextSpan>[
                        TextSpan(
                            text: '*',
                            style: TextStyle(
                                color: Colors.red,
                                fontWeight: FontWeight.w500,
                                fontSize: 18)),
                        TextSpan(
                          text: '" devem ser preenchidos ' + 'obrigatoriamente',
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            color: Colors.black,
                            fontSize: 15,
                          ),
                        ),
                      ]),
                )
              ]),
            ),
          ),
        ],
      ),
    );
  }
}
