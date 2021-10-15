import 'package:flutter/material.dart';
import 'package:rio_das_pedras_front_end/Screens/LoginScreens/widgets/loginForms.dart';
import 'package:rio_das_pedras_front_end/Screens/commun/widgets/Defaults/inicialAppBar.dart';
import 'package:rio_das_pedras_front_end/Screens/commun/widgets/Defaults/mainAppBar.dart';

class DesktopSingUpScreen extends StatefulWidget {
  const DesktopSingUpScreen({Key? key}) : super(key: key);

  @override
  _DesktopSingUpScreenState createState() => _DesktopSingUpScreenState();
}

class _DesktopSingUpScreenState extends State<DesktopSingUpScreen> {
  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
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
        isLoged: false,
      ),
      body: Container(),
    );
  }
}
