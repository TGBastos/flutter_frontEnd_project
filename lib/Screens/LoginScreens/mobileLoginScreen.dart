import 'package:flutter/material.dart';
import 'package:rio_das_pedras_front_end/Screens/widgets/loginButton.dart';
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
    final screenSize = MediaQuery.of(context).size;
    return PreferredSize(
      preferredSize: Size(screenSize.width, screenSize.height),
      child: Scaffold(
        body: Center(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
              Padding(
                  padding: const EdgeInsets.fromLTRB(5, 5, 5, 20),
                  child: ConstrainedBox(
                      constraints:
                          BoxConstraints(maxWidth: screenSize.width / 1.5),
                      child: LoginForms())),
              loginButton()
            ])),
      ),
    );
  }
}
