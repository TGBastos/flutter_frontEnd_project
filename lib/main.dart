import 'package:flutter/material.dart';
import 'package:rio_das_pedras_front_end/Screens/commun/widgets/PageWrappers/SingingUpPageWrapper.dart';
import 'package:wsda/wsda.dart';
import '../Screens/LoginScreens/LargeDesktopLoginScreen.dart';
import '../Screens/commun/responsiveController.dart';

import 'Screens/LoginScreens/desktopLoginScreen.dart';
import 'Screens/LoginScreens/mobileLoginScreen.dart';
import 'Screens/LoginScreens/tabletLoginScreen.dart';

void main() {
  WSDA.init(
    apiAccessTokenVersion: 1,
    apiKey: 'SU5URUxMSVNZUzEyMzQ1Njc4OTA6ZTEyMzQ1Njc4OTBm',
    baseUrl: 'https://crm.intellisys.com.br/',
    apiHost: 'https://crm.intellisys.com.br',
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:
          // SingingUpPageWrapper());
          responsiveController(
              mobile: mobileLoginScreen(),
              largeDesktop: largeDesktopLoginScreen(),
              desktop: desktopLoginScreen(),
              tablet: tabletLoginScreen()),
    );
  }
}
