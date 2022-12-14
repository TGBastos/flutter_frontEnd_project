import 'package:flutter/material.dart';
import 'package:rio_das_pedras_front_end/View/cadastro/widgets/SigningUp_Path%20Steps/controllers.dart';

import '../../.././SigningUp_Path%20Steps/campos_size_configs.dart';
import '../../repositories.dart';

class CampoEmail extends StatefulWidget {
  final CamposSizeConfigs camposSizeConfigs;
  const CampoEmail({required this.camposSizeConfigs});

  @override
  _CampoEmailState createState() => _CampoEmailState();
}

class _CampoEmailState extends State<CampoEmail> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
          top: widget.camposSizeConfigs.spaceBetweenFieldsInTop),
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text('Email'),
            SizedBox(
              height: widget.camposSizeConfigs.campoHeight,
              width: widget.camposSizeConfigs.campoWidth,
              child: TextFormField(
                initialValue: Repositories.contatosRepository.email != ''
                    ? Repositories.contatosRepository.email
                    : '',
                validator: (value) =>
                    value!.isEmpty ? 'Coloque seu Email' : null,
                onSaved: (valor) =>
                    Controllers.contatosController.contatosEmail = valor,
                decoration: InputDecoration(
                  constraints: BoxConstraints(
                    maxHeight: 33,
                  ),
                  floatingLabelBehavior: FloatingLabelBehavior.always,
                  //labelText: "",
                  labelStyle: TextStyle(
                    fontSize: 20,
                  ),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.blue,
                    ),
                    borderRadius: BorderRadius.circular(
                      widget.camposSizeConfigs.borderRadius,
                    ),
                  ),
                ),
              ),
            ),
          ]),
    );
  }
}

class CampoEmailComfirmacao extends StatefulWidget {
  final CamposSizeConfigs camposSizeConfigs;
  const CampoEmailComfirmacao({required this.camposSizeConfigs});

  @override
  _CampoEmailComfirmacaoState createState() => _CampoEmailComfirmacaoState();
}

class _CampoEmailComfirmacaoState extends State<CampoEmailComfirmacao> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
          top: widget.camposSizeConfigs.spaceBetweenFieldsInTop),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: <
          Widget>[
        Text('Confirmar E-mail'),
        SizedBox(
          height: widget.camposSizeConfigs.campoHeight,
          width: widget.camposSizeConfigs.campoWidth,
          child: TextFormField(
            initialValue: Repositories.contatosRepository.confirmaEmail != ''
                ? Repositories.contatosRepository.confirmaEmail
                : '',
            validator: (value) => value!.isEmpty ? 'Confirme seu email' : null,
            onSaved: (valor) =>
                Controllers.contatosController.contatosConfirmaEmail = valor,
            decoration: InputDecoration(
              constraints: BoxConstraints(
                maxHeight: 33,
              ),
              floatingLabelBehavior: FloatingLabelBehavior.always,
              //labelText: "CPF",
              labelStyle: TextStyle(
                fontSize: 20,
              ),
              border: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.blue,
                ),
                borderRadius: BorderRadius.circular(
                  widget.camposSizeConfigs.borderRadius,
                ),
              ),
            ),
          ),
        ),
      ]),
    );
  }
}
