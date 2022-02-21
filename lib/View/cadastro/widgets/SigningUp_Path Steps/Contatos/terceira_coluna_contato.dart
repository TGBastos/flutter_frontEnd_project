import 'package:flutter/material.dart';
import 'package:rio_das_pedras_front_end/models/permissoes.dart';

class TerceiraColunaContato extends StatefulWidget {
  const TerceiraColunaContato({Key? key}) : super(key: key);

  @override
  _TerceiraColunaContatoState createState() => _TerceiraColunaContatoState();
}

class _TerceiraColunaContatoState extends State<TerceiraColunaContato> {
  bool enviarSMS = Permissoes().envioSMS;
  bool enviarOfertas = Permissoes().envioOfertas;

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return Column(
      children: [
        Text(
          'Permite envio de SMS?',
        ),
        Switch(
          value: enviarSMS,
          onChanged: (value) {
            setState(() {
              enviarSMS = value;
            });
          },
          activeColor: Colors.green,
          activeTrackColor: Colors.lightGreen,
        ),
        SizedBox(
          height: screenSize.height / 20,
        ),
        Text(
          'Permite envio de ofertas?',
        ),
        Switch(
          value: enviarOfertas,
          onChanged: (value) {
            setState(() {
              enviarSMS = value;
            });
          },
          activeColor: Colors.green,
          activeTrackColor: Colors.lightGreen,
        ),
      ],
    );
  }
}
