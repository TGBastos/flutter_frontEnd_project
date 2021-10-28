import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:rio_das_pedras_front_end/Screens/commun/widgets/Defaults/unlogedClientAppBar.dart';

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
        : Container();
  }

  @override
  // ignore: todo
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(appBarConfigs.deviceHeight);
}
