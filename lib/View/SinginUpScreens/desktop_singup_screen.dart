import 'package:flutter/material.dart';
import '.././SinginUpScreens/widgets/row_meusDados.dart';
import '.././SinginUpScreens/widgets/signingUp_path.dart';
import '.././commun/widgets/Defaults/main_app_bar.dart';

class DesktopSingUpScreen extends StatefulWidget {
  const DesktopSingUpScreen({Key? key}) : super(key: key);

  @override
  _DesktopSingUpScreenState createState() => _DesktopSingUpScreenState();
}

class _DesktopSingUpScreenState extends State<DesktopSingUpScreen>
    with SingleTickerProviderStateMixin {
  GlobalKey<ScaffoldState> _key = GlobalKey();
  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;

    return WillPopScope(
      onWillPop: () async {
        return true;
      },
      child: Scaffold(
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
            key: _key,
          ),
          isLoged: false,
        ),
        body: Column(children: <Widget>[
          Padding(
            padding: EdgeInsets.only(top: screenSize.height / 15),
            child: RowMeusDados(
              fieldsConfig: new FieldsConfig(
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
      ),
    );
  }
}
