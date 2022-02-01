import 'package:flutter/material.dart';

import 'signingUp_path.dart';

class InheritedPath extends InheritedWidget {
  GlobalKey<SingUpPathState> _signUpPath = GlobalKey();
  int? pathIndex;
  TabController? tabController;
  InheritedPath({required Widget child}) : super(child: child);
  @override
  bool updateShouldNotify(covariant oldWidget) => true;

  static InheritedPath? of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<InheritedPath>();
  }
}
