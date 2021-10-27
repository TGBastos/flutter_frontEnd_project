import 'package:flutter/material.dart';

class CampoClienteRG extends StatefulWidget {
  const CampoClienteRG({Key? key}) : super(key: key);

  @override
  _CampoClienteRGState createState() => _CampoClienteRGState();
}

class _CampoClienteRGState extends State<CampoClienteRG> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0),
      child: SizedBox(
        height: 40,
        width: 480,
        child: TextFormField(
          validator: (value) => value!.isEmpty ? 'Coloque seu RG' : null,
          decoration: InputDecoration(
            constraints: BoxConstraints(
              maxHeight: 33,
            ),
            floatingLabelBehavior: FloatingLabelBehavior.always,
            labelText: "RG",
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
