import 'dart:ui';

import 'package:flutter/material.dart';
import '../Defaults/loged_client_app_bar.dart';
import '../Defaults/unloged_client_app_bar.dart';

class AppBarConfigs {
  double deviceHeight;
  final double deviceWidth;
  final double orangeContainerWidth;
  final double orangeContainerHeight;
  final double greenContainerWidth;
  final double greenContainerHeight;
  final double witheImageBackgroundWidth;
  final double witheImageBackgroundHeight;
  final double imageWidth;
  final double imageHeight;

  AppBarConfigs(
      {required this.deviceHeight,
      required this.deviceWidth,
      required this.orangeContainerWidth,
      required this.orangeContainerHeight,
      required this.greenContainerWidth,
      required this.greenContainerHeight,
      required this.witheImageBackgroundWidth,
      required this.witheImageBackgroundHeight,
      required this.imageWidth,
      required this.imageHeight});
}

class MainAppBar extends StatelessWidget implements PreferredSizeWidget {
  final AppBarConfigs appBarConfigs;
  final bool isLoged;

  MainAppBar({
    Key? key,
    required this.appBarConfigs,
    required this.isLoged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return isLoged == false
        ? UnlogedClientAppBar(appBarConfigs: appBarConfigs)
        : LogedClientAppBar(appBarConfigs: appBarConfigs);
  }

  @override
  // ignore: todo
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(appBarConfigs.deviceHeight);
}
