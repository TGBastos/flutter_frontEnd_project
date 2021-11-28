import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:rio_das_pedras_front_end/Screens/MensagesScreens/descktop_mensage_screen.dart';
import 'package:rio_das_pedras_front_end/Screens/commun/routes/routes_name.dart';
import 'package:rio_das_pedras_front_end/Screens/commun/widgets/Defaults/side_navigation_bar.dart';
import 'package:rio_das_pedras_front_end/core/entities/uf_list.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../utils/pallete_color.dart';
import '../Defaults/main_app_bar.dart';

class LogedClientAppBar extends StatefulWidget {
  final AppBarConfigs appBarConfigs;
  const LogedClientAppBar({
    required this.appBarConfigs,
  });

  @override
  _LogedClientAppBarState createState() => _LogedClientAppBarState();

  Size get preferredSize => throw UnimplementedError();
}

class _LogedClientAppBarState extends State<LogedClientAppBar> {
  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    UF? selectedUF;
    return screenSize.width >= 768
        ? Stack(
            children: <Widget>[
              Column(children: <Widget>[
                //Header
                Container(
                  //UpHeader
                  color: Palette.projectCollors[200],
                  width: widget.appBarConfigs.greenContainerWidth,
                  height: widget.appBarConfigs.greenContainerHeight,
                  child: Align(
                    alignment: Alignment.topRight,
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(
                        0,
                        0,
                        widget.appBarConfigs.greenContainerWidth / 10,
                        0,
                      ),
                      child: Container(
                        width:
                            widget.appBarConfigs.greenContainerWidth / 10 >= 120
                                ? 140
                                : 140,
                        height: widget.appBarConfigs.greenContainerHeight,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Container(
                              width: widget.appBarConfigs.deviceWidth <= 40
                                  ? widget.appBarConfigs.deviceWidth / 40
                                  : 40,
                              alignment: Alignment.center,
                              height: 40,
                              decoration: BoxDecoration(
                                color: Palette.projectCollors[100],
                                borderRadius: BorderRadius.circular(
                                  20,
                                ),
                              ),
                              child: IconButton(
                                color: Colors.white,
                                onPressed: _launchFacebookURL,
                                icon: FaIcon(
                                  FontAwesomeIcons.facebook,
                                ),
                              ),
                            ),
                            Container(
                              width: widget.appBarConfigs.deviceWidth <= 40
                                  ? widget.appBarConfigs.deviceWidth / 40
                                  : 40,
                              alignment: Alignment.center,
                              height: 40,
                              decoration: BoxDecoration(
                                color: Palette.projectCollors[100],
                                borderRadius: BorderRadius.circular(
                                  20,
                                ),
                              ),
                              child: IconButton(
                                color: Colors.white,
                                onPressed: _launchInstagramURL,
                                icon: FaIcon(
                                  FontAwesomeIcons.instagram,
                                ),
                              ),
                            ),
                            Container(
                              width: widget.appBarConfigs.deviceWidth <= 40
                                  ? widget.appBarConfigs.deviceWidth / 40
                                  : 40,
                              alignment: Alignment.center,
                              height: 40,
                              decoration: BoxDecoration(
                                color: Palette.projectCollors[100],
                                borderRadius: BorderRadius.circular(
                                  20,
                                ),
                              ),
                              child: IconButton(
                                color: Colors.white,
                                onPressed: () => {},
                                icon: FaIcon(
                                  FontAwesomeIcons.whatsapp,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  //OrangeBox
                  color: Palette.projectCollors[100],
                  width: widget.appBarConfigs.orangeContainerWidth,
                  height: widget.appBarConfigs.orangeContainerHeight,
                  child: Align(
                    alignment: Alignment.center,
                    child: Container(
                      width: widget.appBarConfigs.greenContainerWidth / 2.2,
                      height: widget.appBarConfigs.orangeContainerHeight,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          TextButton(
                            onPressed: () => {
                              Navigator.pushNamed(
                                  context, RoutesName.logedPage),
                            },
                            child: Text(
                              "Inicio",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          TextButton(
                            onPressed: () => {},
                            child: Text(
                              "Meus dados",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          //ButtonMeusDados(buttonWidth: 115, buttonHeight: 40),
                          TextButton(
                            onPressed: () => {},
                            child: Text(
                              "Cartão",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          TextButton(
                            onPressed: () => Navigator.pushNamed(
                                context, RoutesName.mensagesPage),
                            child: Text(
                              "Mensagem",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          TextButton(
                            onPressed: () => DesktopMensageScreen(),
                            child: Text(
                              "Sair",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ]),
              Row(
                //Caixa da logo Rio das pedras
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.fromLTRB(
                      widget.appBarConfigs.deviceWidth / 12,
                      0,
                      0,
                      0,
                    ),
                    child: Container(
                      height: widget.appBarConfigs.witheImageBackgroundHeight,
                      width: widget.appBarConfigs.witheImageBackgroundWidth,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(
                              43,
                            ),
                            bottomRight: Radius.circular(
                              43,
                            ),
                          ),
                          color: Colors.white),
                      child: Padding(
                        padding: EdgeInsets.fromLTRB(
                          widget.appBarConfigs.deviceWidth / 50,
                          0,
                          widget.appBarConfigs.deviceWidth / 50,
                          0,
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(
                            20,
                          ),
                          child: Image.asset(
                            "assets/images/LogoRioDasPedras.png",
                            fit: BoxFit.fill,
                            alignment: Alignment.center,
                            width: widget.appBarConfigs.deviceWidth,
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ],
          )
        : Stack(
            children: <Widget>[
              Column(children: <Widget>[
                //Header
                Container(
                  //UpHeader
                  color: Palette.projectCollors[200],
                  width: widget.appBarConfigs.greenContainerWidth,
                  height: widget.appBarConfigs.greenContainerHeight,
                  child: Align(
                    alignment: Alignment.topRight,
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(
                        0,
                        0,
                        widget.appBarConfigs.greenContainerWidth / 20,
                        0,
                      ),
                      child: Container(
                        width:
                            widget.appBarConfigs.greenContainerWidth / 10 >= 120
                                ? 140
                                : 140,
                        height: widget.appBarConfigs.greenContainerHeight,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Container(
                              width: widget.appBarConfigs.deviceWidth <= 40
                                  ? widget.appBarConfigs.deviceWidth / 40
                                  : 40,
                              alignment: Alignment.center,
                              height: 40,
                              decoration: BoxDecoration(
                                color: Palette.projectCollors[100],
                                borderRadius: BorderRadius.circular(
                                  20,
                                ),
                              ),
                              child: IconButton(
                                color: Colors.white,
                                onPressed: _launchFacebookURL,
                                icon: FaIcon(
                                  FontAwesomeIcons.facebook,
                                ),
                              ),
                            ),
                            Container(
                              width: widget.appBarConfigs.deviceWidth <= 40
                                  ? widget.appBarConfigs.deviceWidth / 40
                                  : 40,
                              alignment: Alignment.center,
                              height: 40,
                              decoration: BoxDecoration(
                                color: Palette.projectCollors[100],
                                borderRadius: BorderRadius.circular(
                                  20,
                                ),
                              ),
                              child: IconButton(
                                color: Colors.white,
                                onPressed: _launchInstagramURL,
                                icon: FaIcon(
                                  FontAwesomeIcons.instagram,
                                ),
                              ),
                            ),
                            Container(
                              width: widget.appBarConfigs.deviceWidth <= 40
                                  ? widget.appBarConfigs.deviceWidth / 40
                                  : 40,
                              alignment: Alignment.center,
                              height: 40,
                              decoration: BoxDecoration(
                                color: Palette.projectCollors[100],
                                borderRadius: BorderRadius.circular(
                                  20,
                                ),
                              ),
                              child: IconButton(
                                color: Colors.white,
                                onPressed: () => {},
                                icon: FaIcon(
                                  FontAwesomeIcons.whatsapp,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  //OrangeBox
                  color: Palette.projectCollors[100],
                  width: widget.appBarConfigs.orangeContainerWidth,
                  height: widget.appBarConfigs.orangeContainerHeight,
                  child: Align(
                    alignment: Alignment.center,
                    child: Container(
                      width: widget.appBarConfigs.greenContainerWidth / 2.2,
                      height: widget.appBarConfigs.orangeContainerHeight,
                    ),
                  ),
                ),
              ]),
              Row(
                //Caixa da logo Rio das pedras
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.fromLTRB(
                      0,
                      0,
                      widget.appBarConfigs.deviceWidth / 5,
                      0,
                    ),
                    child: Container(
                      height: widget.appBarConfigs.witheImageBackgroundHeight,
                      width: widget.appBarConfigs.witheImageBackgroundWidth,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(
                              43,
                            ),
                            bottomRight: Radius.circular(
                              43,
                            ),
                          ),
                          color: Colors.white),
                      child: Padding(
                        padding: EdgeInsets.fromLTRB(
                          widget.appBarConfigs.deviceWidth / 50,
                          0,
                          widget.appBarConfigs.deviceWidth / 50,
                          0,
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(
                            20,
                          ),
                          child: Image.asset(
                            "assets/images/LogoRioDasPedras.png",
                            fit: BoxFit.fill,
                            alignment: Alignment.center,
                            width: widget.appBarConfigs.deviceWidth,
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ],
          );
  }

  void _launchInstagramURL() async {
    const url = 'https://www.instagram.com/superriodaspedras/';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Página não encontrada';
    }
  }

  void _launchFacebookURL() async {
    const url = 'https://www.facebook.com/supermercadoriodaspedras/';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Página não encontrada';
    }
  }
}
