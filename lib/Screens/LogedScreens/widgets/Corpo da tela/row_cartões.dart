import 'package:flutter/material.dart';

class RowCartoes extends StatelessWidget {
  const RowCartoes({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return Row(
      children: [
        SizedBox(
          width: screenSize.width / 10,
        ),
        Row(
          children: [
            IconButton(
              onPressed: () => {},
              icon: Icon(
                Icons.credit_card,
              ),
            ),
            SizedBox(
              width: screenSize.width / 96,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Cartões',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                Text(
                  'Na aba de cartão você pode verificar'
                  ' todos os seus cartões ativos, conferir seu\n'
                  'limite disponível, limite utilizado, data de'
                  'vencimento e melhor dia para compra.',
                  textAlign: TextAlign.justify,
                ),
              ],
            )
          ],
        ),
      ],
    );
  }
}
