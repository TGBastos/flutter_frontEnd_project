import 'package:flutter/material.dart';
import 'package:rio_das_pedras_front_end/Screens/utils/colorPalette.dart';

class BottomBrandLine extends StatelessWidget {
  const BottomBrandLine({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return ClipRRect(
      borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20), topRight: Radius.circular(20)),
      child: SizedBox(
        height: screenSize.height / 18,
        width: screenSize.width,
        child: Stack(
          children: <Widget>[
            Container(
              color: Palette.projectCollors[100],
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: screenSize.height / 36,
                color: Palette.projectCollors[200],
              ),
            ),
            Align(
              alignment: Alignment.topRight,
              child: Padding(
                padding: EdgeInsets.only(right: screenSize.width / 12),
                child: Text(
                  'copyright 2021 - todos os direitos reservados'.toUpperCase(),
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: Padding(
                padding: EdgeInsets.only(right: screenSize.width / 12),
                child: Text(
                  'Desenvolvido por Intellisys',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
