import 'package:flutter/material.dart';
import 'package:rio_das_pedras_front_end/Screens/LoginScreens/desktopLoginScreen.dart';
import 'package:rio_das_pedras_front_end/utils/colorPalette.dart';

class defaultButton extends StatelessWidget {
  final String btnText;
  final void Function() onPressed;
  final double? buttonWidth;
  final double? buttonHeight;
  const defaultButton({
    Key? key,
    required String this.btnText,
    required this.onPressed,
    required this.buttonWidth,
    required this.buttonHeight,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: buttonWidth,
      height: buttonHeight,
      child: ElevatedButton(
          onPressed: () => onPressed(),
          child: Text(btnText),
          style: ButtonStyle(
            textStyle: MaterialStateProperty.all<TextStyle>(TextStyle(fontSize: 20)),
              backgroundColor: MaterialStateProperty.all<Color?>(
                  Palette.projectCollors[300]),
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(18.0),
              )))),
    );
  }

  test() {
    print("Ola");
  }
}
