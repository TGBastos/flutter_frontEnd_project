import 'package:flutter/material.dart';

class Etapa extends StatelessWidget {
  final int stepNumber;
  final String stepName;
  final int textFlexNumber;

  const Etapa(
      {Key? key,
      required this.stepNumber,
      required this.stepName,
      required this.textFlexNumber})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
      Flexible(
          //flex: 1,
          child: Container(
        padding: EdgeInsets.only(left: 4, right: 4),
        decoration: BoxDecoration(
            border: Border.all(width: 3, color: Colors.green),
            borderRadius: BorderRadius.circular(40)),
        child: Text(
          stepNumber.toString(),
          textAlign: TextAlign.center,
          style: TextStyle(color: Colors.black),
        ),
      )),
      SizedBox(
        width: 2,
      ),
      Flexible(
          flex: textFlexNumber,
          child: Padding(
            padding: const EdgeInsets.only(left: 4),
            child: Text(
              stepName,
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.black),
            ),
          )),
    ]);
  }
}
