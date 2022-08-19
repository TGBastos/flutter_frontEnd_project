import 'package:flutter/material.dart';

import 'View/commun/routes/pages_constructor.dart';
import 'View/commun/routes/route_generator.dart';
import 'View/commun/routes/routes_name.dart';

void main() {
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
