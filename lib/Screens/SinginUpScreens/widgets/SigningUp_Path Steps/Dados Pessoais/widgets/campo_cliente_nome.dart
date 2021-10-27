import 'package:flutter/material.dart';

class CampoClienteNome extends StatefulWidget {
  const CampoClienteNome({Key? key}) : super(key: key);

  @override
  _CampoClienteNomeState createState() => _CampoClienteNomeState();
}

class _CampoClienteNomeState extends State<CampoClienteNome> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0),
      child: SizedBox(
        height: 40,
        width: 480,
        child: TextFormField(
          validator: (value) => value!.isEmpty ? 'Coloque seu nome' : null,
          decoration: InputDecoration(
            constraints: BoxConstraints(
              maxHeight: 33,
            ),
            floatingLabelBehavior: FloatingLabelBehavior.always,
            labelText: "Nome",
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
