import 'package:flutter/material.dart';


class LoginForms extends StatefulWidget {
  final double formFontSize;
  final double formWidth;
  const LoginForms(
      {Key? key, required this.formFontSize, required this.formWidth})
      : super(key: key);

  @override
  _LoginFormsState createState() => _LoginFormsState();
}

class _LoginFormsState extends State<LoginForms> {
  @override
  Widget build(BuildContext context) {
    var formWidth = this.widget.formWidth;
    var formFontSize = this.widget.formFontSize;
    return Container(
        child: SizedBox(
            width: formWidth,
            child: Column(children: <Widget>[
              Padding(
                  padding: EdgeInsets.fromLTRB(0, 0, 0, 10),
                  child: TextFormField(
                    style: TextStyle(),
                    decoration: InputDecoration(
                      labelText: "Email",
                      labelStyle: TextStyle(fontSize: formFontSize),
                      border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.blue),
                        borderRadius: BorderRadius.circular(36.0),
                      ),
                    ),
                  )),
              TextFormField(
                style: TextStyle(),
                decoration: InputDecoration(
                  labelText: "Senha",
                  labelStyle: TextStyle(fontSize: formFontSize),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(36.0),
                  ),
                ),
              )
            ])));
  }
}
