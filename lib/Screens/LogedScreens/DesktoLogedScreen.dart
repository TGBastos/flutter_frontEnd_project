import 'package:flutter/material.dart';
import 'package:rio_das_pedras_front_end/Screens/commun/widgets/Defaults/inicialAppBar.dart';
import 'package:rio_das_pedras_front_end/Screens/commun/widgets/Defaults/logedClientAppBar.dart';
import 'package:rio_das_pedras_front_end/Screens/commun/widgets/Defaults/mainAppBar.dart';
import 'package:rio_das_pedras_front_end/core/common/utils/buttonFuctions.dart';

class DesktopLogedScreen extends StatefulWidget {
  const DesktopLogedScreen({Key? key}) : super(key: key);

  @override
  _DesktopLogedScreenState createState() => _DesktopLogedScreenState();
}

class _DesktopLogedScreenState extends State<DesktopLogedScreen> {
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
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
      body: Text(buttonFuctions.clienteInfos.clienteNome),
    );
  }
}
