import 'package:flutter/material.dart';
import 'package:rio_das_pedras_front_end/utils/colorPalette.dart';

class defaultButton extends StatelessWidget {
  final String btnText;
  final Function() callback;
  const defaultButton(
      {Key? key, required String this.btnText, required this.callback})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ElevatedButton(
          onPressed: test,
          child: Text(btnText),
          style: ElevatedButton.styleFrom(
            primary: Palette.kToDark[100],
          )),
    );
  }

  test() {
    print("Ola");
  }
}
