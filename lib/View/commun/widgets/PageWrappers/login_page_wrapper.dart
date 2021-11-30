import 'package:flutter/material.dart';
import '../../../LoginScreens/desktop_login_screen.dart';
import '../../../LoginScreens/large_desktop_login_screen.dart';
import '../../../LoginScreens/mobile_login_screen.dart';
import '../../../LoginScreens/tablet_login_screen.dart';

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
