import 'package:flutter/material.dart';

import '../ChangePasswordScreens/widgets/change_password_form.dart';
import '../ChangePasswordScreens/widgets/change_password_image.dart';
import '../ChangePasswordScreens/widgets/change_password_page_title.dart';
import '../commun/widgets/Defaults/bottom_brand_line.dart';
import '../commun/widgets/Defaults/main_app_bar.dart';

class ChangePasswordDesktopScreen extends StatefulWidget {
  const ChangePasswordDesktopScreen({Key? key}) : super(key: key);

  @override
  _ChangePasswordDesktopScreenState createState() =>
      _ChangePasswordDesktopScreenState();
}

class _ChangePasswordDesktopScreenState
    extends State<ChangePasswordDesktopScreen> {
      GlobalKey<ScaffoldState> _key = GlobalKey();
  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
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
          witheImageBackgroundWidth: screenSize.width / 6, key: _key,
        ),
        isLoged: true,
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          Form(
            child: Row(
              children: <Widget>[
                ChangePasswordPageImage(
                    imageHeight: screenSize.height / 4,
                    imageWidth: screenSize.width / 8,
                    imagePadding: screenSize.height / 12),
                SizedBox(width: screenSize.width / 4),
                Column(
                  // mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    ChangePasswordPageTitle(
                        topTitlePadding: screenSize.height / 10,
                        bottomTitlePadding: screenSize.height / 24),
                    SizedBox(height: screenSize.height / 16),
                    ChangePasswordForm(
                      formsWidth: screenSize.width / 5,
                      formsHeight: screenSize.height / 8,
                      buttonHeight: screenSize.height / 28,
                      buttonWidth: screenSize.width / 14,
                      spaceBetweenButtons: screenSize.width / 64,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
      bottomSheet: BottomBrandLine(),
    );
  }
}
