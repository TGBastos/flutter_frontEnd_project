import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rio_das_pedras_front_end/Screens/LoginScreens/widgets/loginForms.dart';
import '../../core/common/utils/buttonFuctions.dart';
import '../commun/widgets/Defaults/inicialAppBar.dart';
import '../commun/widgets/Defaults/defaultButton.dart';

import '../utils/TextStyle.dart';

class desktopLoginScreen extends StatefulWidget {
  @override
  _desktopLoginScreenState createState() => _desktopLoginScreenState();
}

class _desktopLoginScreenState extends State<desktopLoginScreen> {
  @override
  Widget build(BuildContext context) {
    buttonFuctions bttnFuctions = buttonFuctions(context);
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
                              child: new defaultButton(
                                btnText: 'Cadastrar',
                                onPressed: bttnFuctions.cadastrar,
                                buttonHeight: 54,
                                buttonWidth: 155,
                              ))
                        ],
                      ),
                    )),
              ]),
        ]),
      ),
    );
  }
}
