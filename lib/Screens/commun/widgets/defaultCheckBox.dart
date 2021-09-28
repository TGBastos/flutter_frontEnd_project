import 'package:flutter/material.dart';

class defaultCheckBox extends StatefulWidget {
  final double fontSize;
  const defaultCheckBox({Key? key, required this.fontSize}) : super(key: key);

  @override
  _defaultCheckBoxState createState() => _defaultCheckBoxState();
}

class _defaultCheckBoxState extends State<defaultCheckBox> {
  bool Checked = false;
  @override
  Widget build(BuildContext context) {
    var fontSize = this.widget.fontSize;
    return Row(children: <Widget>[
      Checkbox(value: Checked, onChanged: null),
      TextButton(
        onPressed: () {
          setState(() {
            Checked = !Checked;
          });
        },
        child: Text(
          "Manter-me conectado",
          style: TextStyle(color: Colors.black, fontSize: fontSize),
        ),
      ),
    ]);
  }
}
