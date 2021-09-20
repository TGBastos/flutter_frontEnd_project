import 'package:flutter/material.dart';
import 'package:rio_das_pedras_front_end/Screens/LoginScreens/desktopLoginScreen.dart';
import 'package:rio_das_pedras_front_end/utils/colorPalette.dart';

class defaultCheckBox extends StatefulWidget {
  const defaultCheckBox({Key? key}) : super(key: key);

  @override
  _defaultCheckBoxState createState() => _defaultCheckBoxState();
}

class _defaultCheckBoxState extends State<defaultCheckBox> {
  bool Checked = false;
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.fromLTRB(0, 10, 220, 30),
        child: Row(children: <Widget>[
          Checkbox(value: Checked, onChanged: null),
          Text("Manter-me conectado")
        ]));
  }
}
