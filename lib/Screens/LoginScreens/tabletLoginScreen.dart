import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:rio_das_pedras_front_end/Screens/widgets/loginButton.dart';
import 'package:rio_das_pedras_front_end/Screens/widgets/loginForms.dart';

class tabletLoginScreen extends StatefulWidget {
  @override
  _tabletLoginScreenState createState() => _tabletLoginScreenState();
}

class _tabletLoginScreenState extends State<tabletLoginScreen> {
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
                          BoxConstraints(maxWidth: screenSize.width / 2.5),
                      child: LoginForms())),
              loginButton()
            ])),
      ),
    );
  }
}
