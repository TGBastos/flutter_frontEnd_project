import 'package:flutter/material.dart';
import 'package:rio_das_pedras_front_end/Screens/LogedScreens/widgets/Corpo%20da%20tela/information_row.dart';
import 'package:rio_das_pedras_front_end/Screens/LogedScreens/widgets/Corpo%20da%20tela/icons_column.dart';
import 'package:rio_das_pedras_front_end/Screens/LogedScreens/widgets/Corpo%20da%20tela/text_column.dart';
import '.././LogedScreens/widgets/titulo_tela.dart';
import '.././commun/widgets/Defaults/bottom_brand_line.dart';
import '.././commun/widgets/Defaults/carousel_slider.dart';
import '.././commun/widgets/Defaults/main_app_bar.dart';

class DesktopLogedScreen extends StatefulWidget {
  const DesktopLogedScreen({Key? key}) : super(key: key);

  @override
  _DesktopLogedScreenState createState() => _DesktopLogedScreenState();
}

class _DesktopLogedScreenState extends State<DesktopLogedScreen> {
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
              ),
            ),
            SizedBox(height: screenSize.height / 32),
            Row(
              children: <Widget>[
                SizedBox(width: screenSize.width / 9),
                IconsColumn(),
                SizedBox(width: screenSize.width / 32),
                TextColumn(),
                SizedBox(width: screenSize.width / 8),
                InformationIcons(),
              ],
            ),
          ],
        ),
        bottomSheet: BottomBrandLine(),
      ),
    );
  }
}
