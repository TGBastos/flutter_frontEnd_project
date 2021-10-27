import 'package:flutter/material.dart';

class CampoClienteNacionalidade extends StatefulWidget {
  const CampoClienteNacionalidade({Key? key}) : super(key: key);

  @override
  _CampoClienteNacionalidadeState createState() =>
      _CampoClienteNacionalidadeState();
}

class _CampoClienteNacionalidadeState extends State<CampoClienteNacionalidade> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0),
      child: SizedBox(
        height: 40,
        width: 480,
        child: TextFormField(
          validator: (value) =>
              value!.isEmpty ? 'Coloque sua nacionalidade' : null,
          decoration: InputDecoration(
            constraints: BoxConstraints(
              maxHeight: 33,
            ),
            floatingLabelBehavior: FloatingLabelBehavior.always,
            labelText: "Nacionalidade",
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
