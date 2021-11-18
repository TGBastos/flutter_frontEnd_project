import 'package:flutter/material.dart';

import '../../../LogedScreens/desktop_loged_screen.dart';
import '../../../LogedScreens/large_desktop_loged_screen.dart';
import '../../../LogedScreens/mobile_loged_screen.dart';
import '../../../LogedScreens/tablet_loged_screen.dart';
import '../../responsive_controller.dart';

class LogedPageWrapper extends StatefulWidget {
  const LogedPageWrapper({Key? key}) : super(key: key);

  @override
  _LogedPageWrapperState createState() => _LogedPageWrapperState();
}

class _LogedPageWrapperState extends State<LogedPageWrapper> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ResponsiveController(
          mobile: MobileLogedScreen(),
          largeDesktop: LargeDesktopLogedScreen(),
          desktop: DesktopLogedScreen(),
          tablet: TabletLogedScreen()),
    );
  }
}
