import 'package:flutter/material.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';

class IconsColumn extends StatelessWidget {
  const IconsColumn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return Column(
      children: <Widget>[
        Icon(
          LineAwesomeIcons.credit_card_1,
          size: 40,
        ),
        SizedBox(
          height: screenSize.height / 16,
        ),
        Icon(
          LineAwesomeIcons.file_invoice,
          size: 40,
        ),
        SizedBox(
          height: screenSize.height / 16,
        ),
        Icon(
          LineAwesomeIcons.mail_bulk,
          size: 40,
        ),
      ],
    );
  }
}
