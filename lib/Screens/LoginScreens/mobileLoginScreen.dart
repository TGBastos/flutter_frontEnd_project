import 'package:flutter/material.dart';
import 'package:rio_das_pedras_front_end/Screens/commun/buttonFuctions.dart';
import 'package:rio_das_pedras_front_end/Screens/commun/widgets/defaultAppBar.dart';
import 'package:rio_das_pedras_front_end/Screens/commun/widgets/defaultButton.dart';
import 'package:rio_das_pedras_front_end/Screens/widgets/loginForms.dart';

class mobileLoginScreen extends StatefulWidget {
  const mobileLoginScreen({Key? key}) : super(key: key);

  @override
  _mobileLoginScreenState createState() => _mobileLoginScreenState();
}

class _mobileLoginScreenState extends State<mobileLoginScreen> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    buttonFuctions bttnFuctions = buttonFuctions();
    final screenSize = MediaQuery.of(context).size;
    return PreferredSize(
      preferredSize: Size(screenSize.width, screenSize.height),
      child: Scaffold(
        appBar: DefaultAppBar(
            DeviceHeight: screenSize.height / 5, DeviceWidth: screenSize.width),
        body: Center(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
              Padding(
                  padding: const EdgeInsets.fromLTRB(5, 5, 5, 20),
                  child: LoginForms(formFontSize: 20, formWidth: 20,)),
              defaultButton(
                btnText: 'Entrar',
                onPressed: bttnFuctions.entrar, buttonHeight: null, buttonWidth: null,
              )
            ])),
      ),
    );
  }
}
