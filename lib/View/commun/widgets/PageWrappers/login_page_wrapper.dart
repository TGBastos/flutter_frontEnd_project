import 'package:flutter/material.dart';
import 'package:rio_das_pedras_front_end/View/login/desktop_login_screen.dart';
import 'package:rio_das_pedras_front_end/View/login/large_desktop_login_screen.dart';
import 'package:rio_das_pedras_front_end/View/login/mobile_login_screen.dart';
import 'package:rio_das_pedras_front_end/View/login/tablet_login_screen.dart';

import '../../responsive_controller.dart';

class LoginPageWrapper extends StatefulWidget {
  const LoginPageWrapper({Key? key}) : super(key: key);

  @override
  _LoginPageWrapperState createState() => _LoginPageWrapperState();
}

class _LoginPageWrapperState extends State<LoginPageWrapper> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ResponsiveController(
          desktop: DesktopLoginScreen(),
          tablet: TabletLoginScreen(),
          mobile: MobileLoginScreen(),
          largeDesktop: LargeDesktopLoginScreen()),
    );
  }
}
