import 'package:flutter/material.dart';

class RowFaturas extends StatelessWidget {
  const RowFaturas({Key? key}) : super(key: key);

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
                Icons.file_present,
              ),
            ),
            SizedBox(
              width: screenSize.width / 96,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
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
              ],
            )
          ],
        ),
      ],
    );
  }
}
