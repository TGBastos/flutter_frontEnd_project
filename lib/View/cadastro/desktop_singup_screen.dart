import 'package:flutter/material.dart';

import 'package:rio_das_pedras_front_end/View/commun/routes/routes_name.dart';
import 'package:rio_das_pedras_front_end/controllers/dados_pessoais_controller.dart';

import '.././commun/widgets/Defaults/main_app_bar.dart';
import 'widgets/row_meusDados.dart';
import 'widgets/signingUp_path.dart';

class DesktopSingUpScreen extends StatefulWidget {
  const DesktopSingUpScreen({Key? key}) : super(key: key);

  @override
  DesktopSingUpScreenState createState() => DesktopSingUpScreenState();
}

class DesktopSingUpScreenState extends State<DesktopSingUpScreen>
    with SingleTickerProviderStateMixin {
  GlobalKey<ScaffoldState> _key = GlobalKey();
  GlobalKey<SingUpPathState> _signUpPath = GlobalKey();

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    bool t = false;

    if (t == false) {
      return WillPopScope(
        onWillPop: () async {
          return true;
        },
        child: Scaffold(
          appBar: MainAppBar(
            appBarConfigs: new AppBarConfigs(
              deviceWidth: screenSize.width,
              deviceHeight: screenSize.height / 8,
              greenContainerHeight: screenSize.height / 12,
              greenContainerWidth: screenSize.width,
              imageHeight: screenSize.height / 12,
              imageWidth: screenSize.width / 8,
              orangeContainerHeight: screenSize.height / 24,
              orangeContainerWidth: screenSize.width,
              witheImageBackgroundHeight: screenSize.height / 9.5,
              witheImageBackgroundWidth: screenSize.width / 6,
              key: _key,
            ),
            isLoged: false,
          ),
          body: Column(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(top: screenSize.height / 15),
                child: RowMeusDados(
                  fieldsConfig: new FieldsConfig(
                    mainSizedBoxWidth: screenSize.width,
                    mainSizedBoxHeight: screenSize.height / 8,
                    contentSizedBoxWidth: screenSize.width / 2,
                    contentSizedBoxHeight: screenSize.height / 10,
                    rightFirstTextPadding: screenSize.width / 40,
                    topFirstTextPadding: 0,
                    leftFirstTextPadding: 0,
                    bottomFirstTextPadding: screenSize.height / 12,
                  ),
                ),
              ),
              SizedBox(
                //space between widgets
                //this widget swap the paddign, because it doesnt cause a overflow
                height: screenSize.height / 20,
                width: screenSize.width,
              ),
              Expanded(
                child: SingUpPath(
                  key: _signUpPath,
                ),
              ),
              Align(
                alignment: Alignment.bottomRight,
                child: SizedBox(
                  width: screenSize.width / 4,
                  child: Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.orange,
                            borderRadius: BorderRadius.circular(20)),
                        child: IconButton(
                          onPressed: () {
                            if (_signUpPath.currentState != null) {
                              _signUpPath.currentState!
                                  .retrocederPassoCadastro();
                            }
                          },
                          icon: Icon(
                            Icons.arrow_back,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: screenSize.width / 64,
                      ),
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.orange,
                            borderRadius: BorderRadius.circular(20)),
                        child: IconButton(
                          onPressed: () {
                            if (_signUpPath.currentState != null) {
                              _signUpPath.currentState!.proximoPassoCadastro();
                            }
                            print(DadosPessoaisController()
                                .dadosPessoais
                                .ufDeNascimento);
                          },
                          icon: Icon(
                            Icons.arrow_forward,
                          ),
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.pushNamed(
                              context, RoutesName.concluirCadastroPage);
                        },
                        child: Text(
                          'Finalizar',
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      );
    } else {
      return Container();
    }
  }
}
