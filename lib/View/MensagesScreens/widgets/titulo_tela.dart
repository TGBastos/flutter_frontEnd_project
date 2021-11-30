import 'package:flutter/material.dart';
import '../../utils/pallete_color.dart';

class MensageHeaderConfig {
  final double mainSizedBoxWidth;
  final double mainSizedBoxHeight;
  final double contentSizedBoxWidth;
  final double contentSizedBoxHeight;
  final double rightFirstTextPadding;
  final double topFirstTextPadding;
  final double leftFirstTextPadding;
  final double bottomFirstTextPadding;

  MensageHeaderConfig({
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

class MensageHeader extends StatefulWidget {
  final MensageHeaderConfig mensageHeaderConfig;
  const MensageHeader({required this.mensageHeaderConfig});

  @override
  _MensageHeaderState createState() => _MensageHeaderState();
}

class _MensageHeaderState extends State<MensageHeader> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: widget.mensageHeaderConfig.contentSizedBoxWidth / 16,
          width: widget.mensageHeaderConfig.contentSizedBoxWidth * 2.4,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Align(
              alignment: Alignment.topCenter,
              child: Text(
                "mensagens".toUpperCase(),
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
              width: widget.mensageHeaderConfig.contentSizedBoxWidth * 2.3,
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
