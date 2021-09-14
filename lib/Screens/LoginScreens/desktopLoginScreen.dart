import 'package:flutter/material.dart';
import 'package:rio_das_pedras_front_end/Screens/commun/responsiveAppBar.dart';
import 'package:rio_das_pedras_front_end/utils/defaultButton.dart';
import 'package:rio_das_pedras_front_end/Screens/widgets/loginForms.dart';

class desktopLoginScreen extends StatefulWidget {
  @override
  _desktopLoginScreenState createState() => _desktopLoginScreenState();
}

class _desktopLoginScreenState extends State<desktopLoginScreen> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return PreferredSize(
      preferredSize: Size(screenSize.width, screenSize.height),
      child: Scaffold(
        appBar: AppBar(),
        body: Center(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
              Padding(
                  padding: const EdgeInsets.fromLTRB(5, 5, 5, 20),
                  child: ConstrainedBox(
                      constraints:
                          BoxConstraints(maxWidth: screenSize.width / 6),
                      child: LoginForms())),
              Padding(
                padding: const EdgeInsets.all(5),
                child: defaultButton(
                  btnText: 'Entrar',
                  callback: testEntrar,
                ),
              ),
              defaultButton(
                btnText: 'cadastrar',
                callback: testCadastro,
              )
            ])),
      ),
    );
  }

  testEntrar() {
    print("Ola");
  }

  testCadastro() {
    print("Cadastrado");
  }
}
