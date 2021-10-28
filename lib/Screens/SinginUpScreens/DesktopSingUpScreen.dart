import 'package:flutter/material.dart';

import 'package:rio_das_pedras_front_end/Screens/SinginUpScreens/widgets/row_meusDados.dart';
import 'package:rio_das_pedras_front_end/Screens/SinginUpScreens/widgets/signingUp_path.dart';
import 'package:rio_das_pedras_front_end/Screens/commun/widgets/Defaults/mainAppBar.dart';

class DesktopSingUpScreen extends StatefulWidget {
  const DesktopSingUpScreen({Key? key}) : super(key: key);

  @override
  _DesktopSingUpScreenState createState() => _DesktopSingUpScreenState();
}

class _DesktopSingUpScreenState extends State<DesktopSingUpScreen>
    with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;

    return Scaffold(
      appBar: MainAppBar(
        appBarConfigs: new AppBarConfigs(
          deviceWidth: screenSize.width,
          deviceHeight: screenSize.height / 8,
          greenContainerHeight: screenSize.height / 12,
          greenContainerWidth: screenSize.width,
          imageHeight: screenSize.height / 12,
          imageWidth: screenSize.width / 8,
          orangeContainerHeight: screenSize.height / 24,
          orangeContainerWidth: screenSize.width,
          witheImageBackgroundHeight: screenSize.height / 9.5,
          witheImageBackgroundWidth: screenSize.width / 6,
        ),
        isLoged: false,
      ),
      body: Column(children: <Widget>[
        Padding(
          padding: EdgeInsets.only(top: screenSize.height / 15),
          child: RowMeusDados(
            rowMeusDadosCongif: new RowMeusDadosCongif(
              mainSizedBoxWidth: screenSize.width,
              mainSizedBoxHeight: screenSize.height / 8,
              contentSizedBoxWidth: screenSize.width / 2,
              contentSizedBoxHeight: screenSize.height / 10,
              rightFirstTextPadding: screenSize.width / 40,
              topFirstTextPadding: 0,
              leftFirstTextPadding: 0,
              bottomFirstTextPadding: screenSize.height / 12,
            ),
          ),
        ),
        SizedBox(
          //space between widgets
          //this widget swap the paddign, because it doesnt cause a overflow
          height: screenSize.height / 20,
          width: screenSize.width,
        ),
        Expanded(child: SingUpPath()),
      ]),
      bottomNavigationBar: SizedBox(
        height: 30,
        width: screenSize.width,
        child: Row(
          children: <Widget>[
            IconButton(
              onPressed: () => {},
              icon: Icon(Icons.arrow_forward),
            )
          ],
        ),
      ),
    );
  }
}
