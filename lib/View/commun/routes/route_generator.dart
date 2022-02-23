import 'package:flutter/material.dart';
import 'package:rio_das_pedras_front_end/View/cadastro/widgets/concluir_cadastro.dart';
import 'package:rio_das_pedras_front_end/View/cartao/desktop_cartao.dart';
import 'package:rio_das_pedras_front_end/View/cliente_mensagens/descktop_mensage_screen.dart';
import 'package:rio_das_pedras_front_end/View/commun/widgets/PageWrappers/cartao_page_wrapper.dart';
import 'package:rio_das_pedras_front_end/View/mudar_senha/change_password_desktop_screen.dart';

import './routes_name.dart';
import '../../commun/widgets/PageWrappers/loged_page_wrapper.dart';
import '../../commun/widgets/PageWrappers/login_page_wrapper.dart';
import '../../commun/widgets/PageWrappers/singingup_page_wrapper.dart';

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
      case RoutesName.changePasswordPage:
        return _GeneratePageRoute(
            widget: ChangePasswordDesktopScreen(), routeName: settings.name);
      case RoutesName.cartaoPage:
        return _GeneratePageRoute(
            widget: CartaoPageWrapper(), routeName: settings.name);
      case RoutesName.concluirCadastroPage:
        return _GeneratePageRoute(
            widget: ConcluirCadastro(), routeName: settings.name);
      default:
        return _GeneratePageRoute(
            widget: LoginPageWrapper(), routeName: settings.name);
    }
  }
}
