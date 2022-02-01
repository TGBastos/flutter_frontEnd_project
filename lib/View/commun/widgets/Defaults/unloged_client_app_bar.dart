import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:rio_das_pedras_front_end/View/commun/routes/routes_name.dart';

import '../../../utils/pallete_color.dart';
import '../.././widgets/Defaults/main_app_bar.dart';

class UnlogedClientAppBar extends StatefulWidget {
  final AppBarConfigs appBarConfigs;
  UnlogedClientAppBar({Key? key, required this.appBarConfigs})
      : super(key: key);

  @override
  _unlogedClientAppBarState createState() => _unlogedClientAppBarState();
}

class _unlogedClientAppBarState extends State<UnlogedClientAppBar> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Column(
          children: <Widget>[
            //Caixas Verde e Laranja
            Container(
              //GreenBox
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
                    width: widget.appBarConfigs.greenContainerWidth / 10 >= 120
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
                            onPressed: () => {},
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
                            onPressed: () => {},
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
                            context,
                            RoutesName.loginPage,
                          )
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
                          "Sobre nós",
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
                          "Trabalhe Conosco",
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
                          "Promoções",
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
          ],
        ),
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
                      0),
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
}
