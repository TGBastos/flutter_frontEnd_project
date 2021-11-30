import 'package:flutter/material.dart';

import '.././MensagesScreens/widgets/mensages_list.dart';
import '.././MensagesScreens/widgets/titulo_tela.dart';
import '../commun/widgets/Defaults/bottom_brand_line.dart';
import '../commun/widgets/Defaults/main_app_bar.dart';

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
            MensageHeader(
              mensageHeaderConfig: new MensageHeaderConfig(
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
