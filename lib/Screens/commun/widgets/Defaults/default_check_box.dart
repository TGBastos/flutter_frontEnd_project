import 'package:flutter/material.dart';

class DefaultCheckBox extends StatefulWidget {
  final double fontSize;
  const DefaultCheckBox({Key? key, required this.fontSize}) : super(key: key);

  @override
  _DefaultCheckBoxState createState() => _DefaultCheckBoxState();
}

class _DefaultCheckBoxState extends State<DefaultCheckBox> {
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
