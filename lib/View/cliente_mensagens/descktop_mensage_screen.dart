import 'package:flutter/material.dart';
import 'package:rio_das_pedras_front_end/View/cliente_mensagens/widgets/titulo_tela.dart';
import 'package:rio_das_pedras_front_end/View/commun/widgets/Defaults/titulo_da_tela.dart';

import '../commun/widgets/Defaults/bottom_brand_line.dart';
import '../commun/widgets/Defaults/main_app_bar.dart';
import 'widgets/mensages_list.dart';

class DesktopMensageScreen extends StatefulWidget {
  const DesktopMensageScreen({Key? key}) : super(key: key);

  @override
  _DesktopMensageScreenState createState() => _DesktopMensageScreenState();
}

class _DesktopMensageScreenState extends State<DesktopMensageScreen> {
  GlobalKey<ScaffoldState> _key = GlobalKey();
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return WillPopScope(
      onWillPop: () async => true,
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
          isLoged: true,
        ),
        body: Column(
          children: <Widget>[
            TituloDaTela(
              tituloDaTelaConfig: TituloDaTelaConfig(
                mainSizedBoxWidth: screenSize.width / 4,
                mainSizedBoxHeight: screenSize.width / 4,
                contentSizedBoxWidth: screenSize.width / 4,
                contentSizedBoxHeight: screenSize.height / 160,
                rightFirstTextPadding: screenSize.width / 8,
                topFirstTextPadding: screenSize.height,
                leftFirstTextPadding: 0,
                bottomFirstTextPadding: screenSize.height,
                titulo: 'Mensagens',
              ),
            ),
            SizedBox(
              height: screenSize.height / 16,
            ),
            MensagesList()
          ],
        ),
        bottomSheet: BottomBrandLine(),
      ),
    );
  }
}
