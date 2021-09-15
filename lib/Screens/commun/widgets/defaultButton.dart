import 'package:flutter/material.dart';
import 'package:rio_das_pedras_front_end/Screens/LoginScreens/desktopLoginScreen.dart';
import 'package:rio_das_pedras_front_end/utils/colorPalette.dart';

class defaultButton extends StatelessWidget {
  final String btnText;
  final void Function() onPressed;
  const defaultButton(
      {Key? key, required String this.btnText, required this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ElevatedButton(
          onPressed: () => onPressed(),
          child: Text(btnText),
          style: ElevatedButton.styleFrom(
            primary: Palette.projectCollors[300],
          )),
    );
  }

  test() {
    print("Ola");
  }
}
