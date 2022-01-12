import 'package:flutter/material.dart';
import 'primeira_coluna.dart';
import 'segunda_coluna.dart';

class FormularioReferenciasComerciais extends StatefulWidget {
  final GlobalKey<FormState> _formKey;
  const FormularioReferenciasComerciais({
    Key? key,
    required GlobalKey<FormState> formKey,
  })  : _formKey = formKey,
        super(key: key);

  @override
  _FormularioReferenciasComerciaisState createState() =>
      _FormularioReferenciasComerciaisState();
}

class _FormularioReferenciasComerciaisState
    extends State<FormularioReferenciasComerciais> {
  @override
  Widget build(BuildContext context) {
    return Form(
      key: widget._formKey,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          PrimeiraColunaReferenciasComerciais(),
          SegundaColunaReferenciasComerciais(),
        ],
      ),
    );
  }
}
