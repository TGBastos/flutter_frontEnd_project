import 'package:flutter/material.dart';
import 'package:rio_das_pedras_front_end/Screens/commun/widgets/Defaults/inicialAppBar.dart';
import 'package:rio_das_pedras_front_end/core/common/utils/buttonFuctions.dart';

class DesktopLogedScreen extends StatefulWidget {
  const DesktopLogedScreen({Key? key}) : super(key: key);

  @override
  _DesktopLogedScreenState createState() => _DesktopLogedScreenState();
}

class _DesktopLogedScreenState extends State<DesktopLogedScreen> {
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: InicialAppBar(
          DeviceHeight: screenSize.height / 3, DeviceWidth: screenSize.width),
      body: Text(buttonFuctions.clienteInfos.clienteNome),
    );
  }
}
