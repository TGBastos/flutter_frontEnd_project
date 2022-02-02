import 'package:flutter/material.dart';
import 'package:rio_das_pedras_front_end/View/commun/widgets/Defaults/bottom_brand_line.dart';
import 'package:rio_das_pedras_front_end/View/commun/widgets/Defaults/main_app_bar.dart';
import 'package:rio_das_pedras_front_end/View/commun/widgets/Defaults/titulo_da_tela.dart';
import 'package:rio_das_pedras_front_end/View/utils/pallete_color.dart';

class DesktopCartaoScreen extends StatefulWidget {
  const DesktopCartaoScreen({Key? key}) : super(key: key);

  @override
  _DesktopCartaoScreenState createState() => _DesktopCartaoScreenState();
}

class _DesktopCartaoScreenState extends State<DesktopCartaoScreen> {
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
          witheImageBackgroundWidth: screenSize.width / 6,
          key: _key,
        ),
        isLoged: true,
      ),
      body: Column(
        children: [
          SizedBox(
            height: screenSize.height / 12,
          ),
          TituloDaTela(
            tituloDaTelaConfig: TituloDaTelaConfig(
                mainSizedBoxWidth: screenSize.width / 4,
                mainSizedBoxHeight: screenSize.width / 4,
                contentSizedBoxWidth: screenSize.width / 4,
                contentSizedBoxHeight: screenSize.width / 8,
                rightFirstTextPadding: screenSize.height / 160,
                topFirstTextPadding: screenSize.height,
                leftFirstTextPadding: 0,
                bottomFirstTextPadding: screenSize.height,
                titulo: 'Cartões'),
          ),
          SizedBox(
            height: screenSize.height / 8,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                children: [
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.red,
                      shadowColor: Colors.blue,
                      animationDuration: Duration(milliseconds: 300),
                    ),
                    onPressed: () {},
                    child: Container(
                      width: screenSize.width / 6,
                      height: screenSize.height / 4,
                    ),
                  ),
                  SizedBox(
                    height: screenSize.height / 32,
                  ),
                  Text(
                    'Cartão 1',
                  ),
                ],
              ),
              SizedBox(
                width: screenSize.width / 8,
              ),
              Column(
                children: [
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.green,
                      shadowColor: Colors.blue,
                      animationDuration: Duration(milliseconds: 300),
                    ),
                    onPressed: () {},
                    child: Container(
                      width: screenSize.width / 6,
                      height: screenSize.height / 4,
                    ),
                  ),
                  SizedBox(
                    height: screenSize.height / 32,
                  ),
                  Text(
                    'Cartão 2',
                  ),
                ],
              ),
              SizedBox(
                width: screenSize.width / 8,
              ),
              Column(
                children: [
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.orange,
                      shadowColor: Colors.blue,
                      animationDuration: Duration(milliseconds: 300),
                    ),
                    onPressed: () {},
                    child: Container(
                      width: screenSize.width / 6,
                      height: screenSize.height / 4,
                    ),
                  ),
                  SizedBox(
                    height: screenSize.height / 32,
                  ),
                  Text(
                    'Cartão 3',
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
      bottomSheet: BottomBrandLine(),
    );
  }
}
