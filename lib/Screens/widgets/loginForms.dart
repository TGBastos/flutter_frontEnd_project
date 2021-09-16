import 'package:flutter/material.dart';
import 'package:rio_das_pedras_front_end/Screens/commun/responsiveController.dart';

class LoginForms extends StatefulWidget {
  const LoginForms({Key? key}) : super(key: key);

  @override
  _LoginFormsState createState() => _LoginFormsState();
}

class _LoginFormsState extends State<LoginForms> {
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Container(
        child: SizedBox(
            width: screenSize.width <= 1024 ||
                    screenSize.width <= 1024 && screenSize.width >= 768
                ? screenSize.width / 2
                : screenSize.width / 4,
            
            child: Column(children: <Widget>[
              Padding(
                  padding: EdgeInsets.fromLTRB(0, 0, 0, 5),
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText: "Email",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(36.0),
                      ),
                    ),
                  )),
              TextFormField(
                decoration: InputDecoration(
                  // constraints: BoxConstraints(maxWidth: screenSize.width/2.5)   ,
                  hintText: "Senha",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(36.0),
                  ),
                ),
              )
            ])));
  }
}
