import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:rio_das_pedras_front_end/Screens/commun/widgets/Defaults/inicialSliverAppBar.dart';
import '../../Screens/LoginScreens/widgets/loginForms.dart';
import '../../core/common/utils/buttonFuctions.dart';
import '../commun/widgets/Defaults/inicialAppBar.dart';
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
      body: CustomScrollView(slivers: <Widget>[
        InicialSliverAppBar(
          DeviceHeight: screenSize.height,
          DeviceWidth: screenSize.width,
        ),
        SliverList(
            delegate: SliverChildBuilderDelegate((BuildContext context, int t) {
          return Padding(
            padding: EdgeInsets.fromLTRB(0, screenSize.height / 30, 0, 0),
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
                        padding: EdgeInsets.fromLTRB(
                            0, 10, 0, screenSize.height / 25),
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
                              0, screenSize.height / 40, 0, 20),
                          child: new defaultButton(
                            btnText: 'Cadastrar',
                            onPressed: bttnFuctions.cadastrar,
                            buttonHeight: 54,
                            buttonWidth: 155,
                          )),
                    ],
                  ),
                ]),
          );
        }, childCount: 1)),
      ]),
    );
  }
}
