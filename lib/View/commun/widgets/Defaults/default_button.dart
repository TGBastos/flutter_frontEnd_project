import 'package:flutter/material.dart';
import '../../../utils/pallete_color.dart';

class DefaultButton extends StatelessWidget {
  final Widget btnContent;
  final void Function() onPressed;
  final double? buttonWidth;
  final double? buttonHeight;
  const DefaultButton({
    Key? key,
    required this.btnContent,
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
          child: btnContent,
          style: ButtonStyle(
              textStyle:
                  MaterialStateProperty.all<TextStyle>(TextStyle(fontSize: 20)),
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
