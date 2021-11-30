// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:wsda/wsda.dart';

import 'View/LoginScreens/desktop_login_screen.dart';
import 'View/LoginScreens/large_desktop_login_screen.dart';
import 'View/LoginScreens/mobile_login_screen.dart';
import 'View/LoginScreens/tablet_login_screen.dart';
import 'View/commun/responsive_controller.dart';
import 'View/commun/routes/pages_constructor.dart';
import 'View/commun/routes/route_generator.dart';
import 'View/commun/routes/routes_name.dart';
import 'View/commun/widgets/PageWrappers/singingup_page_wrapper.dart';

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
      builder: (context, child) => LoginPage(child: child),
      onGenerateRoute: RouteGenerator.generateRoute,
      initialRoute: RoutesName.loginPage,
    );
  }
}
