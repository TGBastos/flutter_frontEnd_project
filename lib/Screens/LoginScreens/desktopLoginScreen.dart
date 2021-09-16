import 'dart:html';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rio_das_pedras_front_end/Screens/commun/buttonFuctions.dart';
import 'package:rio_das_pedras_front_end/Screens/commun/responsiveAppBar.dart';
import 'package:rio_das_pedras_front_end/Screens/commun/widgets/defaultAppBar.dart';
import 'package:rio_das_pedras_front_end/utils/TextStyle.dart';
import 'package:rio_das_pedras_front_end/Screens/commun/widgets/defaultButton.dart';
import 'package:rio_das_pedras_front_end/Screens/widgets/loginForms.dart';
import 'package:test_api/expect.dart';

class desktopLoginScreen extends StatefulWidget {
  @override
  _desktopLoginScreenState createState() => _desktopLoginScreenState();
}

class _desktopLoginScreenState extends State<desktopLoginScreen> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    buttonFuctions bttnFuctions = buttonFuctions();
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: DefaultAppBar(
          DeviceHeight: screenSize.height / 6, DeviceWidth: screenSize.width),
      body: SizedBox(
        height: screenSize.height/2,
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              //left Side row
              Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Flexible(
                      flex: 2,
                      child: Text(
                        "Login",
                        style: myTextStyle.loginHeader,
                      ),
                    ),
                    Padding(
                        padding: const EdgeInsets.fromLTRB(5, 5, 5, 20),
                        child: ConstrainedBox(
                            constraints: BoxConstraints(
                                maxWidth: screenSize.width / 4),
                            child: LoginForms())),
                    Padding(
                        padding: const EdgeInsets.all(5),
                        child: defaultButton(
                          btnText: 'Entrar',
                          onPressed: bttnFuctions.entrar,
                        ))
                  ]),

              Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.all(10),
                      child: Text("Cadastro", style: myTextStyle.loginHeader),
                    ),
                    Container(
                      padding: EdgeInsets.all(10),
                      child: Text(
                        "Registre-se para continuar o acesso e recebe informações" +
                            "\nexclusivas, além de outras possibilidades",
                        textAlign: TextAlign.justify,
                        style: myTextStyle.loginBody,
                      ),
                    ),
                    Padding(
                        padding: const EdgeInsets.all(5),
                        child: defaultButton(
                          btnText: 'cadastrar',
                          onPressed: bttnFuctions.cadastrar,
                        ))
                  ])
            ]),
      ),
    );
  }
}
