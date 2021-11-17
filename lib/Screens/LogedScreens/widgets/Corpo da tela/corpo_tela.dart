import 'package:flutter/material.dart';
import 'package:rio_das_pedras_front_end/Screens/LogedScreens/widgets/Corpo%20da%20tela/row_cart%C3%B5es.dart';
import 'package:rio_das_pedras_front_end/Screens/LogedScreens/widgets/Corpo%20da%20tela/row_faturas.dart';
import 'package:rio_das_pedras_front_end/Screens/LogedScreens/widgets/Corpo%20da%20tela/row_mensagens.dart';

class CorpoDaTela extends StatelessWidget {
  const CorpoDaTela({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return Column(
      children: [
        SizedBox(
          height: screenSize.height / 16,
        ),
        RowCartoes(),
        SizedBox(
          height: screenSize.height / 32,
        ),
        RowFaturas(),
        SizedBox(
          height: screenSize.height / 32,
        ),
        RowMensagens(),
      ],
    );
  }
}
