import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import '../../Screens/LoginScreens/widgets/loginForms.dart';

import '../../core/common/utils/buttonFuctions.dart';
import '../commun/widgets/Defaults/inicialAppBar.dart';
import '../commun/widgets/Defaults/defaultButton.dart';
import '../commun/widgets/Defaults/defaultCheckBox.dart';
import '../utils/TextStyle.dart';

class tabletLoginScreen extends StatefulWidget {
  @override
  _tabletLoginScreenState createState() => _tabletLoginScreenState();
}

class _tabletLoginScreenState extends State<tabletLoginScreen> {
  @override
  Widget build(BuildContext context) {
    buttonFuctions bttnFuctions = buttonFuctions(context);

    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: InicialAppBar(
          DeviceHeight: screenSize.height > 702
              ? screenSize.width / 3
              : screenSize.width / 4.5,
          DeviceWidth: screenSize.width),
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
                    null,
                    20,
                    300,
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
                      padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                      child: new defaultButton(
                        btnText: 'Cadastre-se',
                        onPressed: bttnFuctions.cadastrar,
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
