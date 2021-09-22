import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rio_das_pedras_front_end/Screens/LoginScreens/widgets/loginForms.dart';
import 'package:rio_das_pedras_front_end/commun/buttonFuctions.dart';
import 'package:rio_das_pedras_front_end/commun/widgets/defaultAppBar.dart';
import 'package:rio_das_pedras_front_end/commun/widgets/defaultButton.dart';
import 'package:rio_das_pedras_front_end/commun/widgets/defaultCheckBox.dart';

import 'package:rio_das_pedras_front_end/utils/TextStyle.dart';

class desktopLoginScreen extends StatefulWidget {
  @override
  _desktopLoginScreenState createState() => _desktopLoginScreenState();
}

class _desktopLoginScreenState extends State<desktopLoginScreen> {
  @override
  Widget build(BuildContext context) {
    buttonFuctions bttnFuctions = buttonFuctions();
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: DefaultAppBar(
          DeviceHeight: screenSize.height / 3, DeviceWidth: screenSize.width),
      body: Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
        Column(
            //coluna de login
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                  height: screenSize.height / 1.5,
                  child: Padding(
                    padding:
                        EdgeInsets.fromLTRB(0, 0, screenSize.width / 10, 0),
                    child: Column(
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.fromLTRB(0,
                              screenSize.width / 120, 0, screenSize.width / 40),
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
                            constraints:
                                BoxConstraints(maxWidth: screenSize.width / 4),
                            child: LoginForms(
                              formFontSize: 16.5,
                              formWidth: 400,
                            )),
                        Padding(
                          padding: EdgeInsets.fromLTRB(
                              screenSize.width / 7, 10, 0, 10),
                          child: SizedBox(
                              height: 20,
                              child: TextButton(
                                style: ButtonStyle(),
                                onPressed: bttnFuctions.forgotPassword,
                                child: Text(
                                  "Esqueceu sua senha?",
                                  style: myTextStyle.loginBody,
                                ),
                              )),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(
                              0, 0, screenSize.width / 10, 0),
                          child: defaultCheckBox(
                            fontSize: 18,
                          ),
                        ),
                        Padding(
                            padding: EdgeInsets.fromLTRB(
                                0, screenSize.height / 20, 0, 0),
                            child: new defaultButton(
                              btnText: 'Entrar',
                              onPressed: bttnFuctions.entrar,
                              buttonHeight: 54,
                              buttonWidth: 155,
                            ))
                      ],
                    ),
                  )),
            ]),
        SizedBox(child: VerticalDivider(thickness: 1, color: Colors.black)),
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
                          padding: EdgeInsets.fromLTRB(0,
                              screenSize.width / 120, 0, screenSize.width / 40),
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
                            child: new defaultButton(
                              btnText: 'Cadastrar',
                              onPressed: bttnFuctions.entrar,
                              buttonHeight: 54,
                              buttonWidth: 155,
                            ))
                      ],
                    ),
                  )),
            ]),
      ]),
    );
  }
}
