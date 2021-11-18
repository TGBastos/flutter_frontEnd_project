import 'package:flutter/material.dart';

import '../../../SinginUpScreens/desktop_singup_screen.dart';
import '../../../SinginUpScreens/large_desktop_singup_screen.dart';
import '../../../SinginUpScreens/mobile_singup_screen.dart';
import '../../../SinginUpScreens/tablet_singup_screen.dart';
import '../../responsive_controller.dart';

class SingingUpPageWrapper extends StatefulWidget {
  const SingingUpPageWrapper({Key? key}) : super(key: key);

  @override
  _SingingUpPageWrapperState createState() => _SingingUpPageWrapperState();
}

class _SingingUpPageWrapperState extends State<SingingUpPageWrapper> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ResponsiveController(
          desktop: DesktopSingUpScreen(),
          tablet: TabletSingUpScreen(),
          mobile: MobileSingUpScreen(),
          largeDesktop: LargeDesktopSingUpScreen()),
    );
  }
}
