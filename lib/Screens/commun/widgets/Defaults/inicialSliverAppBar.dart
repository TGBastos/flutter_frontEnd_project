import 'package:flutter/material.dart';
import 'package:rio_das_pedras_front_end/Screens/utils/colorPalette.dart';

class InicialSliverAppBar extends StatelessWidget {
  final double DeviceWidth;
  final double DeviceHeight;
  const InicialSliverAppBar(
      {Key? key, required this.DeviceWidth, required this.DeviceHeight})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
        backgroundColor: Palette.projectCollors[100],
        pinned: true,
        floating: true,
        expandedHeight: 160,
        flexibleSpace: Stack(
          children: <Widget>[
            Column(children: <Widget>[
              //Caixas Verde e Laranja
              Container(
                color: Palette.projectCollors[200],
                width: DeviceWidth,
                //height: DeviceHeight / 1.6,
              ),
            ]),
            Container(
              color: Palette.projectCollors[200],
              width: DeviceWidth,
              height:
                  DeviceHeight <= 700 ? DeviceHeight / 5.5 : DeviceHeight / 6.5,
            ),
            Row(
              //Caixa da logo Rio das pedras
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                  child: Container(
                    height: DeviceHeight <= 700
                        ? DeviceHeight / 4.5
                        : DeviceHeight / 6,
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
                ),
              ],
            ),
          ],
        ));
  }
}
