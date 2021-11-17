import 'package:flutter/material.dart';

class RowMensagens extends StatelessWidget {
  const RowMensagens({Key? key}) : super(key: key);

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
                Icons.mail,
              ),
            ),
            SizedBox(
              width: screenSize.width / 96,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Mensagens',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                Text(
                  'Atráves da aba mensagens fique atualizado(a)'
                  ' sobre nossas \n ofertas, promoções e benefícios que'
                  ' reservamos para você',
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
