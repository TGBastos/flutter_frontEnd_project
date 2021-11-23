import 'package:flutter/material.dart';
import 'package:rio_das_pedras_front_end/Screens/LoginScreens/desktop_login_screen.dart';
import 'package:rio_das_pedras_front_end/Screens/commun/widgets/PageWrappers/loged_page_wrapper.dart';
import 'package:rio_das_pedras_front_end/Screens/commun/widgets/PageWrappers/login_page_wrapper.dart';
import 'package:rio_das_pedras_front_end/Screens/commun/widgets/PageWrappers/singingup_page_wrapper.dart';

import './routes_name.dart';
import '../../MensagesScreens/descktop_mensage_screen.dart';

class _GeneratePageRoute extends PageRouteBuilder {
  final Widget widget;
  final String? routeName;
  _GeneratePageRoute({required this.widget, required this.routeName})
      : super(
            settings: RouteSettings(name: routeName),
            pageBuilder: (BuildContext context, Animation<double> animation,
                Animation<double> secondaryAnimation) {
              return widget;
            },
            transitionDuration: Duration(milliseconds: 200),
            transitionsBuilder: (BuildContext context,
                Animation<double> animation,
                Animation<double> secondaryAnimation,
                Widget child) {
              return SlideTransition(
                textDirection: TextDirection.rtl,
                position: Tween<Offset>(
                  begin: Offset(1.0, 0.0),
                  end: Offset.zero,
                ).animate(animation),
                child: child,
              );
            });
}

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RoutesName.loginPage:
        return _GeneratePageRoute(
            widget: LoginPageWrapper(), routeName: settings.name);
      case RoutesName.logedPage:
        return _GeneratePageRoute(
            widget: LogedPageWrapper(), routeName: settings.name);
      case RoutesName.mensagesPage:
        return _GeneratePageRoute(
            widget: DesktopMensageScreen(), routeName: settings.name);
      case RoutesName.singupPage:
        return _GeneratePageRoute(
            widget: SingingUpPageWrapper(), routeName: settings.name);
      default:
        return _GeneratePageRoute(
            widget: LoginPageWrapper(), routeName: settings.name);
    }
  }
}
