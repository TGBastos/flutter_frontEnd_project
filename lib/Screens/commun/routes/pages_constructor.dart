import 'package:flutter/material.dart';

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