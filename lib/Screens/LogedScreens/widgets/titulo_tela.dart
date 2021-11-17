import 'package:flutter/material.dart';
import 'package:rio_das_pedras_front_end/Screens/utils/colorPalette.dart';

class TituloDaTelaConfig {
  final double mainSizedBoxWidth;
  final double mainSizedBoxHeight;
  final double contentSizedBoxWidth;
  final double contentSizedBoxHeight;
  final double rightFirstTextPadding;
  final double topFirstTextPadding;
  final double leftFirstTextPadding;
  final double bottomFirstTextPadding;

  TituloDaTelaConfig({
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

class TituloDaTela extends StatefulWidget {
  final TituloDaTelaConfig tituloDaTelaConfig;
  const TituloDaTela({required this.tituloDaTelaConfig});

  @override
  _TituloDaTelaState createState() => _TituloDaTelaState();
}

class _TituloDaTelaState extends State<TituloDaTela> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: widget.tituloDaTelaConfig.contentSizedBoxWidth / 16,
          width: widget.tituloDaTelaConfig.contentSizedBoxWidth * 2.4,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Align(
              alignment: Alignment.topCenter,
              child: Text(
                "o que reservamos para você".toUpperCase(),
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
            Container(
              height: 3,
              width: widget.tituloDaTelaConfig.contentSizedBoxWidth * 2.3,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(2),
                color: Palette.projectCollors[200],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
