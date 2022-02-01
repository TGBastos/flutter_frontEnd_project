import 'package:flutter/material.dart';
import 'package:rio_das_pedras_front_end/View/usuario_logado/desktop_loged_screen.dart';
import 'package:rio_das_pedras_front_end/View/usuario_logado/large_desktop_loged_screen.dart';
import 'package:rio_das_pedras_front_end/View/usuario_logado/mobile_loged_screen.dart';
import 'package:rio_das_pedras_front_end/View/usuario_logado/tablet_loged_screen.dart';

import '../../responsive_controller.dart';

class LogedPageWrapper extends StatefulWidget {
  const LogedPageWrapper({Key? key}) : super(key: key);

  @override
  _LogedPageWrapperState createState() => _LogedPageWrapperState();
}

class _LogedPageWrapperState extends State<LogedPageWrapper> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ResponsiveController(
          desktop: DesktopLogedScreen(),
          mobile: MobileLogedScreen(),
          largeDesktop: LargeDesktopLogedScreen(),
          tablet: TabletLogedScreen()),
    );
  }
}
