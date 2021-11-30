import 'package:flutter/material.dart';
import '../../utils/pallete_color.dart';

class ChangePasswordPageTitle extends StatelessWidget {
  final double topTitlePadding;
  final double bottomTitlePadding;

  const ChangePasswordPageTitle({
    Key? key,
    required this.topTitlePadding,
    required this.bottomTitlePadding,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        SizedBox(height: topTitlePadding),
        Text('Alterar senha',
            style: TextStyle(
                color: Palette.projectCollors[200],
                fontSize: 25,
                fontWeight: FontWeight.bold)),
        SizedBox(height: bottomTitlePadding),
        Text(
            'Ao efetuar a troca de senha, não será possivel acessar o ' +
                'sitema com a \n senha anterior. Digite corretamente a sua ' +
                'senha atual, depois a nova senha.',
            style: TextStyle(),
            textAlign: TextAlign.center),
      ],
    );
  }
}
