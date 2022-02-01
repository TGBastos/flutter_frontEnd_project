import 'package:flutter/material.dart';
import 'package:rio_das_pedras_front_end/View/commun/widgets/Defaults/titulo_da_tela.dart';

import '.././commun/widgets/Defaults/bottom_brand_line.dart';
import '.././commun/widgets/Defaults/carousel_slider.dart';
import '.././commun/widgets/Defaults/main_app_bar.dart';
import 'widgets/Corpo da tela/icons_column.dart';
import 'widgets/Corpo da tela/information_row.dart';
import 'widgets/Corpo da tela/text_column.dart';

class DesktopLogedScreen extends StatefulWidget {
  const DesktopLogedScreen({Key? key}) : super(key: key);

  @override
  _DesktopLogedScreenState createState() => _DesktopLogedScreenState();
}

class _DesktopLogedScreenState extends State<DesktopLogedScreen> {
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
          children: [
            //Text(Cliente.instance.clienteNome),
            ImageCarousel(),
            TituloDaTela(
              tituloDaTelaConfig: new TituloDaTelaConfig(
                mainSizedBoxWidth: screenSize.width / 4,
                mainSizedBoxHeight: screenSize.height / 4,
                contentSizedBoxWidth: screenSize.width / 4,
                contentSizedBoxHeight: screenSize.height / 160,
                rightFirstTextPadding: screenSize.width / 8,
                topFirstTextPadding: screenSize.height,
                leftFirstTextPadding: 0,
                bottomFirstTextPadding: screenSize.height,
                titulo: 'O que reservamos para você',
              ),
            ),
            SizedBox(height: screenSize.height / 16),
            Flex(
              direction: Axis.horizontal,
              children: <Widget>[
                SizedBox(width: screenSize.width / 9),
                IconsColumn(),
                SizedBox(width: screenSize.width / 64),
                TextColumn(),
                Flexible(
                  child: SizedBox(width: screenSize.width / 8),
                ),
                InformationIcons(
                  informationIconsConfig: new InformationIconsConfig(
                    iconBoxHeight: 20,
                    iconBoxWidth: 20,
                    textBoxHeight: 80,
                    textBoxWidth: 80,
                  ),
                )
              ],
            ),
          ],
        ),
        bottomSheet: BottomBrandLine(),
      ),
    );
  }
}
