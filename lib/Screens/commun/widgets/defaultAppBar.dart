import 'dart:ui';

import 'package:flutter/material.dart';
import '../../utils/colorPalette.dart';

class DefaultAppBar extends StatelessWidget implements PreferredSizeWidget {
  final double DeviceHeight;
  final double DeviceWidth;
  const DefaultAppBar(
      {Key? key, required this.DeviceHeight, required this.DeviceWidth})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(children: <Widget>[
      Column(children: <Widget>[
        //Caixas Verde e Laranja
        Container(
          color: Palette.projectCollors[200],
          width: DeviceWidth,
          height: DeviceHeight / 1.6,
        ),
        Container(
          color: Palette.projectCollors[100],
          width: DeviceWidth,
          height: DeviceHeight / 6,
        ),
      ]),
      Row(
        //Caixa da logo Rio das pedras
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
            child: Container(
              height: DeviceHeight / 1.4,
              width: DeviceWidth <= 768 || DeviceWidth >= 768
                  ? DeviceWidth / 2
                  : DeviceWidth / 2,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(10),
                      bottomRight: Radius.circular(10)),
                  color: Colors.white),
              child: Padding(
                padding: EdgeInsets.fromLTRB(
                    DeviceWidth / 50, 0, DeviceWidth / 50, 0),
                child: Image.asset(
                  "assets/images/LogoRioDasPedras.png",
                  fit: BoxFit.fill,
                  alignment: Alignment.centerLeft,
                  width: DeviceWidth,
                ),
              ),
            ),
          )
        ],
      ),
    ]);
  }

  @override
  // ignore: todo
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(DeviceHeight);
}
