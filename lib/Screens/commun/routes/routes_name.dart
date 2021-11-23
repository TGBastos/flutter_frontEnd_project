import 'package:flutter/material.dart';

class RoutesName {
  static const String loginPage = '/loginPage';
  static const String logedPage = '/logedPage';
  static const String mensagesPage = '/mensagesPage';
  static const String singupPage = '/singupPage';
}

class LoginPage extends StatelessWidget {
  final Widget? child;
  const LoginPage({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: child,
    );
  }
}
