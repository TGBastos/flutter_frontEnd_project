import 'package:flutter/material.dart';

class responsiveController extends StatelessWidget {
  final Widget desktop;
  final Widget tablet;
  final Widget mobile;

  const responsiveController(
      {Key? key,
      required this.desktop,
      required this.tablet,
      required this.mobile})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth >= 800) {
          return desktop;
        } else if (constraints.maxWidth <= 800 && constraints.maxWidth >= 768) {
          return tablet;
        } else {
          return mobile;
        }
      },
    );
  }
}
