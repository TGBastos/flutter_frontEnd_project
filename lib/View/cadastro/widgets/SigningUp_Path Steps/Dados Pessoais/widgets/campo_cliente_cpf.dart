import 'package:extended_masked_text/extended_masked_text.dart';
import 'package:flutter/material.dart';
import 'package:rio_das_pedras_front_end/View/cadastro/widgets/SigningUp_Path%20Steps/controllers.dart';
import 'package:rio_das_pedras_front_end/View/cadastro/widgets/SigningUp_Path%20Steps/repositories.dart';
import 'package:rio_das_pedras_front_end/controllers/dados_pessoais_controller.dart';
import 'package:rio_das_pedras_front_end/models/dados_pessoais_model.dart';
import '../../.././SigningUp_Path%20Steps/campos_size_configs.dart';

class CampoClienteCPF extends StatefulWidget {
  final CamposSizeConfigs camposSizeConfigs;
  CampoClienteCPF({required this.camposSizeConfigs});

  @override
  _CampoClienteCPFState createState() => _CampoClienteCPFState();
}

DadosPessoaisController dadosPessoaisController =
    Controllers.dadosPessoaisController;
DadosPessoaisModel dadosPessoais =
    Controllers.dadosPessoaisController.dadosPessoais;

class _CampoClienteCPFState extends State<CampoClienteCPF> {
  final controladorCPFCadastro = MaskedTextController(
      mask: '000.000.000-00',
      text: dadosPessoais.CPF.toString() != '0'
          ? dadosPessoais.CPF.toString()
          : '');
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
          top: widget.camposSizeConfigs.spaceBetweenFieldsInTop),
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text('CPF'),
            SizedBox(
              height: widget.camposSizeConfigs.campoHeight,
              width: widget.camposSizeConfigs.campoWidth,
              child: TextFormField(
                controller: controladorCPFCadastro,
                validator: (value) => value!.isEmpty ? 'Coloque seu CPF' : null,
                onSaved: (valor) {
                  dadosPessoaisController.clienteCPF =
                      controladorCPFCadastro.unmasked;
                },
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
