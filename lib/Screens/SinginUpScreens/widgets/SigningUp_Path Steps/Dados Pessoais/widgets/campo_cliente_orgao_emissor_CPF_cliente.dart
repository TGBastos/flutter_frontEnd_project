import 'package:flutter/material.dart';

class CampoClienteOragaoEmissorCPF extends StatefulWidget {
  const CampoClienteOragaoEmissorCPF({Key? key}) : super(key: key);

  @override
  _CampoClienteOragaoEmissorCPFState createState() =>
      _CampoClienteOragaoEmissorCPFState();
}

class _CampoClienteOragaoEmissorCPFState
    extends State<CampoClienteOragaoEmissorCPF> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0),
      child: SizedBox(
        height: 40,
        width: 480,
        child: TextFormField(
          validator: (value) =>
              value!.isEmpty ? 'coloque o Orgão missor' : null,
          decoration: InputDecoration(
            constraints: BoxConstraints(
              maxHeight: 33,
            ),
            floatingLabelBehavior: FloatingLabelBehavior.always,
            labelText: "Org.Emissor",
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
