import 'package:flutter/material.dart';
import 'package:rio_das_pedras_front_end/Screens/SinginUpScreens/widgets/SigningUp_Path%20Steps/campos_size_configs.dart';

class CamposFormModel extends StatefulWidget {
  final CamposSizeConfigs camposSizeConfigs;
  final String valueIsEmpty;
  final String fieldName;
  CamposFormModel({
    required this.camposSizeConfigs,
    required this.valueIsEmpty,
    required this.fieldName,
  });

  @override
  _CamposFormModelState createState() => _CamposFormModelState();
}

class _CamposFormModelState extends State<CamposFormModel> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0),
      child: SizedBox(
        height: widget.camposSizeConfigs.campoHeight,
        width: widget.camposSizeConfigs.campoWidth,
        child: TextFormField(
          validator: (value) => value!.isEmpty ? widget.valueIsEmpty : null,
          decoration: InputDecoration(
            constraints: BoxConstraints(
              maxHeight: 33,
            ),
            floatingLabelBehavior: FloatingLabelBehavior.always,
            labelText: widget.fieldName,
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
