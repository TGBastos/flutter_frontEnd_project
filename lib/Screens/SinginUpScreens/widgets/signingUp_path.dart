import 'package:flutter/material.dart';
import 'package:rio_das_pedras_front_end/Screens/LoginScreens/widgets/loginForms.dart';
import 'package:rio_das_pedras_front_end/Screens/SinginUpScreens/widgets/signingUp_path.dart';
import 'package:rio_das_pedras_front_end/Screens/utils/colorPalette.dart';

import 'SigningUp_Path Steps/Dados Pessoais/formulario_dados_pessoais.dart';

import 'SigningUp_Path Steps/Etapa_signinUp_path.dart';

class SingUpPath extends StatefulWidget {
  const SingUpPath({Key? key}) : super(key: key);

  @override
  _SingUpPathState createState() => _SingUpPathState();
}

class _SingUpPathState extends State<SingUpPath> {
  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return DefaultTabController(
      length: 6,
      child: Scaffold(
        body: Column(
          children: <Widget>[
            Container(
              width: screenSize.width / 1.1,
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(color: Colors.orange, width: 2),
                ),
              ),
            ),
            Container(
              width: screenSize.width / 1.1,
              //height: screenSize.height / 10,
              decoration: BoxDecoration(
                  // color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(2))),
              // color: Colors.red,
              child: TabBar(
                unselectedLabelStyle:
                    TextStyle(fontWeight: FontWeight.w500, fontSize: 15),
                labelStyle:
                    TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                indicatorPadding: EdgeInsets.only(bottom: 40),
                indicatorSize: TabBarIndicatorSize.tab,
                indicatorWeight: 1,
                indicator: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Colors.orange),
                tabs: [
                  Tab(
                      child: new Etapa(
                          stepNumber: 1,
                          stepName: 'Dados Pessoais',
                          textFlexNumber: 2)),
                  Tab(
                      child: new Etapa(
                          stepNumber: 2,
                          stepName: 'Endereço',
                          textFlexNumber: 2)),
                  Tab(
                      child: new Etapa(
                          stepNumber: 3,
                          stepName: 'Contatos',
                          textFlexNumber: 2)),
                  Tab(
                      child: new Etapa(
                          stepNumber: 4,
                          stepName: 'Profissional e Financeira',
                          textFlexNumber: 3)),
                  Tab(
                      child: new Etapa(
                          stepNumber: 5,
                          stepName: 'Referências Pessoais',
                          textFlexNumber: 3)),
                  Tab(
                      child: new Etapa(
                          stepNumber: 6,
                          stepName: 'Referências Comerciais',
                          textFlexNumber: 3)),
                ],
              ),
            ),
            Expanded(
              child: TabBarView(children: [
                ListView(children: <Widget>[FormularioDadosPessoais()]),
                Container(
                  //Contatos
                  child: Text("User Body"),
                ),
                Container(
                  //Contatos
                  child: Text("User Body"),
                ),
                Container(
                  //Profissional e financeira
                  child: Text("Home Body"),
                ),
                Container(
                  //Referencias pessoais
                  child: Text("Articles Body"),
                ),
                Container(
                  //Referencias comerciais
                  child: Text("User Body"),
                ),
              ]),
            ),
          ],
        ),
      ),
    );
  }
}
