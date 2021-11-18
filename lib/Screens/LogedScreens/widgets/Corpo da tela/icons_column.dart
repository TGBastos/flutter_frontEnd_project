import 'package:flutter/material.dart';

class IconsColumn extends StatelessWidget {
  const IconsColumn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return Column(
      children: <Widget>[
        Icon(Icons.credit_card),
        SizedBox(
          height: screenSize.height / 16,
        ),
        Icon(Icons.file_copy),
        SizedBox(
          height: screenSize.height / 16,
        ),
        Icon(Icons.mail),
      ],
    );
  }
}
