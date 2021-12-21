import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import '../../core/button_fuctions.dart';
import '../commun/widgets/Defaults/default_button.dart';
import '../commun/widgets/Defaults/default_check_box.dart';
import '../commun/widgets/Defaults/inicial_app_bar.dart';
import '../utils/text_style.dart';
import 'widgets/login_forms.dart';

class TabletLoginScreen extends StatefulWidget {
  @override
  _TabletLoginScreenState createState() => _TabletLoginScreenState();
}

class _TabletLoginScreenState extends State<TabletLoginScreen> {
  @override
  Widget build(BuildContext context) {
    ButtonFuctions bttnFuctions = ButtonFuctions();

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
                    child: DefaultCheckBox(
                      fontSize: 20,
                    ),
                  ),
                  Padding(
                      padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                      child: new DefaultButton(
                        btnContent: Text('Cadastre-se'),
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
