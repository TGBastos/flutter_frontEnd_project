import 'package:flutter/material.dart';
import 'package:rio_das_pedras_front_end/Screens/SinginUpScreens/widgets/SigningUp_Path%20Steps/Contatos/formulario_contatos.dart';
import 'package:rio_das_pedras_front_end/Screens/SinginUpScreens/widgets/SigningUp_Path%20Steps/Endere%C3%A7o/formulario_endere%C3%A7o.dart';
import 'package:rio_das_pedras_front_end/Screens/SinginUpScreens/widgets/SigningUp_Path%20Steps/Profissional%20e%20financeira/formulario_profissional_financeira.dart';
import 'package:rio_das_pedras_front_end/Screens/SinginUpScreens/widgets/SigningUp_Path%20Steps/Referencias%20Comerciais/formulario_referencias_comerciais.dart';

import 'SigningUp_Path Steps/Dados Pessoais/formulario_dados_pessoais.dart';

import 'SigningUp_Path Steps/Etapa_signinUp_path.dart';
import 'SigningUp_Path Steps/Referencias Pessoais/formulario_referencias_pessoais.dart';

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
                ListView(children: <Widget>[
                  FormularioDadosPessoais(),
                ]),
                ListView(
                  children: <Widget>[
                    FormularioEndereco(),
                  ],
                ),
                ListView(
                  children: <Widget>[
                    FormularioContatos(),
                  ],
                ),
                ListView(
                  children: <Widget>[
                    FormularioProfissionalFinanceira(),
                  ],
                ),
                ListView(
                  children: <Widget>[
                    FormularioReferenciasPessoais(),
                  ],
                ),
                ListView(
                  children: <Widget>[
                    FormularioReferenciasComerciais(),
                  ],
                )
              ]),
            ),
          ],
        ),
      ),
    );
  }
}
