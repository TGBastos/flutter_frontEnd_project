import 'package:flutter/material.dart';
import 'package:rio_das_pedras_front_end/core/model/cliente.dart';

class TextColumn extends StatelessWidget {
  const TextColumn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          'Cliente.instance.clienteCelularNumero',
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
        SizedBox(height: screenSize.height / 32),
        Text(
          'Faturas',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
        Text(
          'Confia as suas faturas abertas e fechadas',
          textAlign: TextAlign.justify,
        ),
        SizedBox(height: screenSize.height / 32),
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
    );
  }
}
