import 'package:flutter/material.dart';

class CampoClienteEscolaridade extends StatefulWidget {
  const CampoClienteEscolaridade({Key? key}) : super(key: key);

  @override
  _CampoClienteEscolaridadeState createState() =>
      _CampoClienteEscolaridadeState();
}

class _CampoClienteEscolaridadeState extends State<CampoClienteEscolaridade> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0),
      child: SizedBox(
        height: 40,
        width: 480,
        child: TextFormField(
          validator: (value) =>
              value!.isEmpty ? 'Coloque sua escolaridade' : null,
          decoration: InputDecoration(
            constraints: BoxConstraints(
              maxHeight: 33,
            ),
            floatingLabelBehavior: FloatingLabelBehavior.always,
            labelText: "Escolaridade",
            labelStyle: TextStyle(
              fontSize: 20,
            ),
            border: OutlineInputBorder(
              borderSide: BorderSide(
                color: Colors.blue,
              ),
              borderRadius: BorderRadius.circular(
                36.0,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
