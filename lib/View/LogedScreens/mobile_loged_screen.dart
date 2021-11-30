import 'package:flutter/material.dart';
import '../commun/widgets/Defaults/main_app_bar.dart';
import '../commun/widgets/Defaults/side_navigation_bar.dart';

class MobileLogedScreen extends StatefulWidget {
  const MobileLogedScreen({Key? key}) : super(key: key);

  @override
  _MobileLogedScreenState createState() => _MobileLogedScreenState();
}

class _MobileLogedScreenState extends State<MobileLogedScreen> {
  GlobalKey<ScaffoldState> _key = GlobalKey();
  @override
  Widget build(BuildContext context) {
    int _selectedIndex = 0;
    Size screenSize = MediaQuery.of(context).size;
    return Scaffold(
      drawer: NavDrawer(),
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
          witheImageBackgroundHeight: screenSize.height / 9,
          witheImageBackgroundWidth: screenSize.width / 2.5,
          key: _key,
        ),
        isLoged: true,
      ),
      body: Container(),
    );
  }
}
