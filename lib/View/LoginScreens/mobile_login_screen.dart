import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

import '.././commun/widgets/Defaults/inicial_sliver_app_bar.dart';
import '../commun/widgets/Defaults/default_button.dart';
import '../utils/text_style.dart';
import 'widgets/login_forms.dart';

class MobileLoginScreen extends StatefulWidget {
  const MobileLoginScreen({Key? key}) : super(key: key);

  @override
  _MobileLoginScreenState createState() => _MobileLoginScreenState();
}

class _MobileLoginScreenState extends State<MobileLoginScreen> {
  @override
  Widget build(BuildContext context) {
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
                          child: new DefaultButton(
                            btnContent: Text('Cadastrar'),
                            onPressed: () {},
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
