import 'package:flutter/material.dart';

class CampoClienteCPF extends StatefulWidget {
  const CampoClienteCPF({Key? key}) : super(key: key);

  @override
  _CampoClienteCPFState createState() => _CampoClienteCPFState();
}

class _CampoClienteCPFState extends State<CampoClienteCPF> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0),
      child: SizedBox(
        height: 40,
        width: 480,
        child: TextFormField(
          validator: (value) => value!.isEmpty ? 'Coloque seu CPF' : null,
          decoration: InputDecoration(
            constraints: BoxConstraints(
              maxHeight: 33,
            ),
            floatingLabelBehavior: FloatingLabelBehavior.always,
            labelText: "CPF",
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
