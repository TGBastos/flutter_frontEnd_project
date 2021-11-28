import 'package:flutter/material.dart';
import 'package:rio_das_pedras_front_end/Screens/commun/widgets/Defaults/default_button.dart';

class ChangePasswordForm extends StatefulWidget {
  final double formsWidth;
  final double formsHeight;
  final double buttonWidth;
  final double buttonHeight;
  final double spaceBetweenButtons;
  const ChangePasswordForm({
    Key? key,
    required this.formsWidth,
    required this.formsHeight,
    required this.buttonWidth,
    required this.buttonHeight,
    required this.spaceBetweenButtons,
  }) : super(key: key);

  @override
  _ChangePasswordFormState createState() => _ChangePasswordFormState();
}

class _ChangePasswordFormState extends State<ChangePasswordForm> {
  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      SizedBox(
        height: widget.formsHeight,
        width: widget.formsWidth,
        child: TextFormField(
          obscureText: true,
          validator: (val) => val!.isEmpty ? 'Senha atual' : null,
          onSaved: (val) => (null),
          style: TextStyle(),
          decoration: InputDecoration(
            floatingLabelBehavior: FloatingLabelBehavior.always,
            labelText: 'Senha atual',
            constraints: BoxConstraints(maxHeight: 66),
            labelStyle: TextStyle(fontSize: 20),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(36.0),
            ),
          ),
        ),
      ),
      SizedBox(
        height: widget.formsHeight,
        width: widget.formsWidth,
        child: TextFormField(
          obscureText: true,
          validator: (val) => val!.isEmpty ? 'Nova senha' : null,
          onSaved: (val) => (null),
          style: TextStyle(),
          decoration: InputDecoration(
            floatingLabelBehavior: FloatingLabelBehavior.always,
            labelText: 'Nova senha',
            constraints: BoxConstraints(maxHeight: 66),
            labelStyle: TextStyle(fontSize: 20),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(36.0),
            ),
          ),
        ),
      ),
      SizedBox(
        height: widget.formsHeight,
        width: widget.formsWidth,
        child: TextFormField(
          obscureText: true,
          validator: (val) => val!.isEmpty ? 'Confirmar senha' : null,
          onSaved: (val) => (null),
          style: TextStyle(),
          decoration: InputDecoration(
            floatingLabelBehavior: FloatingLabelBehavior.always,
            labelText: 'Confirmar senha',
            constraints: BoxConstraints(maxHeight: 66),
            labelStyle: TextStyle(fontSize: 20),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(36.0),
            ),
          ),
        ),
      ),
      Row(
        children: <Widget>[
          DefaultButton(
            onPressed: () {},
            btnContent: Text('Voltar'),
            buttonHeight: widget.buttonHeight,
            buttonWidth: widget.buttonWidth,
          ),
          SizedBox(width: widget.spaceBetweenButtons),
          DefaultButton(
            onPressed: () {},
            btnContent: Text('Confirmar'),
            buttonHeight: widget.buttonHeight,
            buttonWidth: widget.buttonWidth * 1.4,
          ),
        ],
      ),
    ]);
  }
}
