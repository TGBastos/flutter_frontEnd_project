import 'package:flutter/material.dart';

class MensagesList extends StatefulWidget {
  const MensagesList({Key? key}) : super(key: key);

  @override
  _MensagesListState createState() => _MensagesListState();
}

class _MensagesListState extends State<MensagesList> {
  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return Column(
      children: <Widget>[
        Container(
          width: screenSize.width / 2,
          height: screenSize.height / 1.7,
          decoration: BoxDecoration(
            //color: Colors.orange,
            border: Border.all(
              color: Colors.orange,
            ),
            borderRadius: BorderRadius.circular(15),
          ),
          child: Column(
            children: <Widget>[
              Container(
                height: screenSize.height / 16,
                decoration: BoxDecoration(
                  color: Colors.orange,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.only(left: screenSize.width / 64),
                    child: Text(
                      'novas mensagens'.toUpperCase(),
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                  ),
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
