import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../core/button_fuctions.dart';
import '../commun/widgets/Defaults/default_button.dart';
import '../commun/widgets/Defaults/inicial_app_bar.dart';
import '../utils/text_style.dart';
import 'widgets/login_forms.dart';

class LargeDesktopLoginScreen extends StatefulWidget {
  @override
  _LargeDesktopLoginScreenState createState() =>
      _LargeDesktopLoginScreenState();
}

class _LargeDesktopLoginScreenState extends State<LargeDesktopLoginScreen> {
  @override
  Widget build(BuildContext context) {
    ButtonFuctions bttnFuctions = ButtonFuctions();
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: InicialAppBar(
          DeviceHeight: screenSize.height / 4, DeviceWidth: screenSize.width),
      body: SizedBox(
        height: screenSize.height / 2,
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
                        style: myTextStyle.largeDesktopLoginHeader,
                      ),
                    ),
                    Padding(
                        padding: const EdgeInsets.fromLTRB(5, 5, 5, 20),
                        child: ConstrainedBox(
                            constraints:
                                BoxConstraints(maxWidth: screenSize.width / 4),
                            child: LoginForms(
                              null,
                              20,
                              20,
                            ))),
                  ]),

              Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.all(10),
                      child: Text("Cadastro",
                          style: myTextStyle.largeDesktopLoginHeader),
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
                        child: DefaultButton(
                          btnContent: Text('cadastrar'),
                          onPressed: bttnFuctions.cadastrar,
                          buttonHeight: 72,
                          buttonWidth: 206,
                        ))
                  ])
            ]),
      ),
    );
  }
}
