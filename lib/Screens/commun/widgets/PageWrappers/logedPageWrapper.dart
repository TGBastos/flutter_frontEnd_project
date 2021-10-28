import 'package:flutter/material.dart';
import 'package:rio_das_pedras_front_end/Screens/LogedScreens/DesktoLogedScreen.dart';
import 'package:rio_das_pedras_front_end/Screens/LogedScreens/LargeDesktopScreen.dart';
import 'package:rio_das_pedras_front_end/Screens/LogedScreens/MobileLogedScreen.dart';
import 'package:rio_das_pedras_front_end/Screens/LogedScreens/TabletLogedScreen.dart';

import '../../responsiveController.dart';

class logedPageWrapper extends StatefulWidget {
  const logedPageWrapper({Key? key}) : super(key: key);

  @override
  _logedPageWrapperState createState() => _logedPageWrapperState();
}

class _logedPageWrapperState extends State<logedPageWrapper> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: responsiveController(
          mobile: MobileLogedScreen(),
          largeDesktop: LargeDesktopLogedScreen(),
          desktop: DesktopLogedScreen(),
          tablet: TabletLogedScreen()),
    );
  }
}
