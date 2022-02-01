import 'package:flutter/material.dart';
import 'package:rio_das_pedras_front_end/View/cadastro/desktop_singup_screen.dart';
import 'package:rio_das_pedras_front_end/View/cadastro/large_desktop_singup_screen.dart';
import 'package:rio_das_pedras_front_end/View/cadastro/mobile_singup_screen.dart';
import 'package:rio_das_pedras_front_end/View/cadastro/tablet_singup_screen.dart';

import '../../responsive_controller.dart';

class SingingUpPageWrapper extends StatefulWidget {
  const SingingUpPageWrapper({Key? key}) : super(key: key);

  @override
  _SingingUpPageWrapperState createState() => _SingingUpPageWrapperState();
}

class _SingingUpPageWrapperState extends State<SingingUpPageWrapper> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ResponsiveController(
          desktop: DesktopSingUpScreen(),
          tablet: TabletSingUpScreen(),
          mobile: MobileSingUpScreen(),
          largeDesktop: LargeDesktopSingUpScreen()),
    );
  }
}
