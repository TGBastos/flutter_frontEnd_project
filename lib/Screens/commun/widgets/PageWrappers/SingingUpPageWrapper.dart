import 'package:flutter/material.dart';
import 'package:rio_das_pedras_front_end/Screens/LoginScreens/LargeDesktopLoginScreen.dart';
import 'package:rio_das_pedras_front_end/Screens/SinginUpScreens/DesktopSingUpScreen.dart';
import 'package:rio_das_pedras_front_end/Screens/SinginUpScreens/TabletSingUp.dart';
import 'package:rio_das_pedras_front_end/Screens/SinginUpScreens/mobileSingUpScreen.dart';
import 'package:rio_das_pedras_front_end/Screens/commun/responsiveController.dart';

class SingingUpPageWrapper extends StatefulWidget {
  const SingingUpPageWrapper({Key? key}) : super(key: key);

  @override
  _SingingUpPageWrapperState createState() => _SingingUpPageWrapperState();
}

class _SingingUpPageWrapperState extends State<SingingUpPageWrapper> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: responsiveController(
          desktop: DesktopSingUpScreen(),
          tablet: TabletSingUpScreen(),
          mobile: MobileSingUpScreen(),
          largeDesktop: largeDesktopLoginScreen()),
    );
  }
}
