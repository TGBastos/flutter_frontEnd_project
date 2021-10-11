import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import '../../Screens/LoginScreens/widgets/loginForms.dart';
import '../commun/buttonFuctions.dart';
import '../commun/widgets/Defaults/defaultAppBar.dart';
import '../commun/widgets/Defaults/defaultButton.dart';
import '../commun/widgets/Defaults/defaultCheckBox.dart';
import '../utils/TextStyle.dart';

class mobileLoginScreen extends StatefulWidget {
  const mobileLoginScreen({Key? key}) : super(key: key);

  @override
  _mobileLoginScreenState createState() => _mobileLoginScreenState();
}

class _mobileLoginScreenState extends State<mobileLoginScreen> {
  @override
  Widget build(BuildContext context) {
    buttonFuctions bttnFuctions = buttonFuctions(context);
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: DefaultAppBar(
          DeviceHeight: screenSize.height / 5, DeviceWidth: screenSize.width),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                "Login",
                style: myTextStyle.desktopLoginHeader,
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
                        screenSize.width / 5, 10, screenSize.width / 5, 10),
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
                        screenSize.width / 8, 10, 0, screenSize.height / 40),
                    child: defaultCheckBox(
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
            ]),
      ),
    );
  }
}
