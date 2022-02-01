import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../commun/routes/routes_name.dart';
import '../commun/widgets/Defaults/default_button.dart';
import '../commun/widgets/Defaults/inicial_app_bar.dart';
import '../utils/text_style.dart';
import 'widgets/login_forms.dart';

class DesktopLoginScreen extends StatefulWidget {
  @override
  _DesktopLoginScreenState createState() => _DesktopLoginScreenState();
}

class _DesktopLoginScreenState extends State<DesktopLoginScreen> {
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
        appBar: InicialAppBar(
            DeviceHeight: screenSize.height / 3, DeviceWidth: screenSize.width),
        body:
            Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
          Column(
              //coluna de login
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SizedBox(
                    height: screenSize.height / 1.5,
                    child: Padding(
                      padding:
                          EdgeInsets.fromLTRB(0, 0, screenSize.width / 10, 0),
                      child: Column(
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.fromLTRB(
                                0,
                                screenSize.width / 120,
                                0,
                                screenSize.width / 40),
                            child: Text(
                              "Login",
                              style: myTextStyle.desktopLoginHeader,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(0, 0, 0, 30),
                            child: Text("Acesse seu cadastro com CPF e senha",
                                style: myTextStyle.loginBody),
                          ),
                          ConstrainedBox(
                              constraints: BoxConstraints(
                                  maxWidth: screenSize.width / 4),
                              child: LoginForms(
                                null,
                                25,
                                400,
                              )),
                        ],
                      ),
                    )),
              ]),
          Align(
            alignment: Alignment.topCenter,
            child: SizedBox(
                height: screenSize.height / 1.5,
                child: VerticalDivider(thickness: 1, color: Colors.black)),
          ),
          Column(
              //coluna de login
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                    height: screenSize.height / 1.5,
                    child: Padding(
                      padding:
                          EdgeInsets.fromLTRB(screenSize.width / 20, 0, 0, 0),
                      child: Column(
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.fromLTRB(
                                0,
                                screenSize.width / 120,
                                0,
                                screenSize.width / 40),
                            child: Text(
                              "Cadastre-se!",
                              style: myTextStyle.desktopLoginHeader,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(0, 0, 0, 30),
                            child: SizedBox(
                              width: screenSize.width / 4,
                              child: Text(
                                "Registre-se para continuar o acesso e recebe informações exclusivas, além de outras possibilidades",
                                style: myTextStyle.loginBody,
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(
                                0, screenSize.height / 20, 0, 0),
                            child: new DefaultButton(
                              btnContent: Text('Cadastrar'),
                              onPressed: () {
                                Navigator.pushNamed(
                                    context, RoutesName.singupPage);
                              },
                              buttonHeight: 54,
                              buttonWidth: 155,
                            ),
                          ),
                        ],
                      ),
                    )),
              ]),
        ]),
      ),
    );
  }
}
