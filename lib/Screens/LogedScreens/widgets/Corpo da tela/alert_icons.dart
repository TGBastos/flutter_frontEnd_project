import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:rio_das_pedras_front_end/Screens/utils/pallete_color.dart';

class InformationIcons extends StatelessWidget {
  const InformationIcons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return Row(
      children: [
        Stack(
          children: [
            Padding(
              padding: EdgeInsets.only(top: screenSize.height / 8),
              child: Container(
                width: screenSize.width <= 50 ? screenSize.width / 40 : 50,
                alignment: Alignment.center,
                height: 50,
                decoration: BoxDecoration(
                  color: Palette.projectCollors[100],
                  borderRadius: BorderRadius.circular(
                    25,
                  ),
                ),
                child: IconButton(
                  color: Colors.white,
                  onPressed: () => {},
                  icon: FaIcon(
                    FontAwesomeIcons.piggyBank,
                  ),
                ),
              ),
            ),
          ],
        ),
        SizedBox(
          width: screenSize.width / 32,
        ),
        Container(
          width: screenSize.width <= 50 ? screenSize.width / 40 : 50,
          alignment: Alignment.center,
          height: 50,
          decoration: BoxDecoration(
            color: Palette.projectCollors[100],
            borderRadius: BorderRadius.circular(
              25,
            ),
          ),
          child: IconButton(
            color: Colors.white,
            onPressed: () => {},
            icon: FaIcon(
              FontAwesomeIcons.calendar,
            ),
          ),
        ),
        SizedBox(
          width: screenSize.width / 32,
        ),
        Container(
          width: screenSize.width <= 50 ? screenSize.width / 40 : 50,
          alignment: Alignment.center,
          height: 50,
          decoration: BoxDecoration(
            color: Palette.projectCollors[100],
            borderRadius: BorderRadius.circular(
              25,
            ),
          ),
          child: IconButton(
            color: Colors.white,
            onPressed: () => {},
            icon: FaIcon(
              FontAwesomeIcons.calendarCheck,
            ),
          ),
        ),
      ],
    );
  }
}
