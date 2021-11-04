import 'package:flutter/material.dart';
import 'primeira_coluna.dart';
import 'segunda_coluna.dart';

class FormularioReferenciasComerciais extends StatelessWidget {
  const FormularioReferenciasComerciais({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
        PrimeiraColunaReferenciasComerciais(),
        SegundaColunaReferenciasComerciais(),
      ],
    );
  }
}
