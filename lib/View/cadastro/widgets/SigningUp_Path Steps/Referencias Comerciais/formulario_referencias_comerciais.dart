import 'package:flutter/material.dart';
import 'package:rio_das_pedras_front_end/View/commun/routes/routes_name.dart';
import 'package:rio_das_pedras_front_end/View/commun/widgets/Defaults/default_button.dart';
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
    Size screenSize = MediaQuery.of(context).size;
    return Form(
      key: widget._formKey,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              PrimeiraColunaReferenciasComerciais(),
              SegundaColunaReferenciasComerciais(),
            ],
          ),
          SizedBox(
            height: screenSize.height / 12,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Column(
                children: [
                  DefaultButton(
                      btnContent: Text('Concluir Cadastro'),
                      onPressed: () {
                        Navigator.pushNamed(context, RoutesName.cartaoPage);
                      },
                      buttonWidth: null,
                      buttonHeight: screenSize.height / 16),
                ],
              ),
              SizedBox(
                width: screenSize.width / 7,
              ),
            ],
          )
        ],
      ),
    );
  }
}
