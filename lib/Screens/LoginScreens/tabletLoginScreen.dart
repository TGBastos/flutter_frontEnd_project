import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:rio_das_pedras_front_end/Screens/LoginScreens/widgets/loginForms.dart';

import 'package:rio_das_pedras_front_end/commun/buttonFuctions.dart';
import 'package:rio_das_pedras_front_end/commun/widgets/defaultAppBar.dart';
import 'package:rio_das_pedras_front_end/commun/widgets/defaultButton.dart';
import 'package:rio_das_pedras_front_end/commun/widgets/defaultCheckBox.dart';
import 'package:rio_das_pedras_front_end/utils/TextStyle.dart';

class tabletLoginScreen extends StatefulWidget {
  @override
  _tabletLoginScreenState createState() => _tabletLoginScreenState();
}

class _tabletLoginScreenState extends State<tabletLoginScreen> {
  @override
  Widget build(BuildContext context) {
    buttonFuctions bttnFuctions = buttonFuctions();

    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: DefaultAppBar(
          DeviceHeight: screenSize.height > 702 ? screenSize.width/3 : screenSize.width/4.5, DeviceWidth: screenSize.width),
      body: ListView(children: <Widget>[
        Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.fromLTRB(
                    0, screenSize.height / 25, 0, screenSize.height / 25),
                child: Text(
                  "Login",
                  style: myTextStyle.desktopLoginHeader,
                ),
              ),
              Column(
                children: <Widget>[
                  Padding(
                    padding:
                        EdgeInsets.fromLTRB(0, 0, 0, screenSize.height / 25),
                    child: SizedBox(
                      width: screenSize.width / 2,
                      child: Text(
                        "Acesse seu cadastro com CPF e senha",
                        style: myTextStyle.loginBody,
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  LoginForms(
                    formFontSize: 20,
                    formWidth: 300,
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(
                        screenSize.width / 3, 10, screenSize.width / 5, 10),
                    child: TextButton(
                      style: ButtonStyle(),
                      onPressed: bttnFuctions.forgotPassword,
                      child: Text(
                        "Esqueceu sua senha?",
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(
                        screenSize.width / 3, 10, 0, screenSize.height / 40),
                    child: defaultCheckBox(
                      fontSize: 20,
                    ),
                  ),
                  Padding(
                      padding: EdgeInsets.fromLTRB(
                          0, screenSize.height / 40, 0, screenSize.height / 40),
                      child: new defaultButton(
                        btnText: 'Entrar',
                        onPressed: bttnFuctions.entrar,
                        buttonHeight: 54,
                        buttonWidth: 155,
                      )),
                  Padding(
                      padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                      child: new defaultButton(
                        btnText: 'Cadastre-se',
                        onPressed: bttnFuctions.entrar,
                        buttonHeight: 54,
                        buttonWidth: 155,
                      )),
                ],
              ),
            ]),
      ]),
    );
  }
}
