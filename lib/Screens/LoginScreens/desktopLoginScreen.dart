import 'dart:html';
import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rio_das_pedras_front_end/Screens/commun/buttonFuctions.dart';
import 'package:rio_das_pedras_front_end/Screens/commun/widgets/defaultAppBar.dart';
import 'package:rio_das_pedras_front_end/Screens/commun/widgets/defaultCheckBox.dart';
import 'package:rio_das_pedras_front_end/utils/TextStyle.dart';
import 'package:rio_das_pedras_front_end/Screens/commun/widgets/defaultButton.dart';
import 'package:rio_das_pedras_front_end/Screens/widgets/loginForms.dart';

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
          DeviceHeight: screenSize.height / 4, DeviceWidth: screenSize.width),
      body: Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
        Column(
            //coluna de login
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: EdgeInsets.fromLTRB(0, 40, 0, 0),
                child: Text(
                  "Login",
                  style: myTextStyle.desktopLoginHeader,
                ),
              ),
              SizedBox(
                  height: screenSize.height / 2 + 100,
                  child: Column(
                    children: <Widget>[
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
                        padding: const EdgeInsets.fromLTRB(250, 10, 0, 10),
                        child: SizedBox(
                            height: 20,
                            child: TextButton(
                              style: ButtonStyle(),
                              onPressed: bttnFuctions.forgotPassword,
                              child: Text("Esqueceu sua senha?"),
                            )),
                      ),
                      defaultCheckBox(),
                      Padding(
                          padding: const EdgeInsets.all(5),
                          child: new defaultButton(
                            btnText: 'Entrar',
                            onPressed: bttnFuctions.entrar,
                            buttonHeight: 54,
                            buttonWidth: 155,
                          ))
                    ],
                  )),
            ]),
        Container(
          //Detalhe de divisão das colunas
          margin: EdgeInsets.fromLTRB(200, 0, 200, 20),
          width: 1,
          height: 400,
          color: Colors.black,
        ),
        Column(
            //Coluna de cadastro
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Flexible(
                  flex: 2,
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(0, 40, 0, 0),
                    child: Column(children: <Widget>[
                      Text(
                        "Cadastro",
                        style: myTextStyle.desktopLoginHeader,
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(0, 30, 0, 60),
                        child: Text(
                          "Registre-se para continuar o acesso e recebe informações" +
                              "\nexclusivas, além de outras possibilidades",
                          textAlign: TextAlign.justify,
                          style: myTextStyle.loginBody,
                        ),
                      ),
                      Padding(
                          padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                          child: new defaultButton(
                            btnText: 'Cadastre-se',
                            onPressed: bttnFuctions.cadastrar,
                            buttonHeight: 54,
                            buttonWidth: 155,
                          ))
                    ]),
                  )),
            ]),
      ]),
    );
  }
}
