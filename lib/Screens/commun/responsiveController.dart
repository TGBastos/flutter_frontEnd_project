import 'package:flutter/material.dart';

class responsiveController extends StatelessWidget {
  final Widget largeDesktop;
  final Widget desktop;
  final Widget tablet;
  final Widget mobile;

  const responsiveController(
      {Key? key,
      required this.desktop,
      required this.tablet,
      required this.mobile,
      required this.largeDesktop})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth >= 1024 && constraints.maxWidth <= 1800) {
          return desktop;
        } else if (constraints.maxWidth >= 1800) {
          return largeDesktop;
        } else if (constraints.maxWidth <= 1024 &&
            constraints.maxWidth >= 768) {
          return tablet;
        } else {
          return mobile;
        }
      },
    );
  }
}
