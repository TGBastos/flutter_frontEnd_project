import 'package:flutter/material.dart';
import 'package:rio_das_pedras_front_end/View/commun/widgets/Defaults/bottom_brand_line.dart';
import 'package:rio_das_pedras_front_end/View/commun/widgets/Defaults/main_app_bar.dart';
import 'package:rio_das_pedras_front_end/View/commun/widgets/Defaults/unloged_client_app_bar.dart';

class TelaConcluirCadastro extends StatefulWidget {
  const TelaConcluirCadastro({Key? key}) : super(key: key);

  @override
  _TelaConcluirCadastroState createState() => _TelaConcluirCadastroState();
}

class _TelaConcluirCadastroState extends State<TelaConcluirCadastro>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

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
        isLoged: false,
      ),
      bottomSheet: BottomBrandLine(),
    );
  }
}
