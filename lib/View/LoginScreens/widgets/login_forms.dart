import 'package:extended_masked_text/extended_masked_text.dart';
import 'package:flutter/material.dart';
import '../../../controllers/login_controller.dart';

import '../../../core/button_fuctions.dart';
import '../../commun/routes/routes_name.dart';
import '../../commun/widgets/Defaults/default_button.dart';
import '../../commun/widgets/Defaults/default_check_box.dart';

class LoginForms extends StatefulWidget {
  final double formFontSize;
  final double formWidth;
  const LoginForms(Key? key, this.formFontSize, this.formWidth)
      : super(key: key);

  @override
  _LoginFormsState createState() => _LoginFormsState();
}

class _LoginFormsState extends State<LoginForms> {
  LoginController controller = LoginController();

  final cpfController = MaskedTextController(mask: '000.000.000-00');
  bool clickInProgress = false;

  _loginSucces() {
    Navigator.pushNamed(context, RoutesName.logedPage);
    setState(() {
      clickInProgress = false;
    });
  }

  Future<void> _loginFailed() async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('CPF ou senha incorreto'),
          content: SingleChildScrollView(
            child: ListBody(
              children: const <Widget>[
                Text('Falha em logar com CPF ou senha inseridos.'),
                Text('Por favor, verifique as credenciais e tente novamente.'),
              ],
            ),
          ),
          actions: <Widget>[
            TextButton(
              child: const Text('Ok'),
              onPressed: () {
                setState(() {
                  clickInProgress = false;
                });
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    ButtonFuctions bttnFuctions = ButtonFuctions();
    var formWidth = this.widget.formWidth;
    var formFontSize = this.widget.formFontSize;
    return Container(
      child: Form(
        key: controller.formKey,
        child: SizedBox(
          width: formWidth,
          child: Column(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.fromLTRB(0, 0, 0, 10),
                child: TextFormField(
                  controller: cpfController,
                  validator: (val) => val!.isEmpty ? 'Coloque seu CPF' : null,
                  onSaved: (value) =>
                      controller.userCPF(cpfController.unmasked),
                  style: TextStyle(),
                  decoration: InputDecoration(
                    floatingLabelBehavior: FloatingLabelBehavior.always,
                    alignLabelWithHint: false,
                    labelText: "CPF",
                    constraints: BoxConstraints(maxHeight: 66),
                    labelStyle: TextStyle(fontSize: formFontSize),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.blue),
                      borderRadius: BorderRadius.circular(36.0),
                    ),
                  ),
                ),
              ),
              TextFormField(
                obscureText: true,
                validator: (value) =>
                    value!.isEmpty ? 'Coloque sua senha' : null,
                onSaved: (value) => controller.userSenha(value!),
                style: TextStyle(),
                decoration: InputDecoration(
                  floatingLabelBehavior: FloatingLabelBehavior.always,
                  labelText: 'Senha',
                  constraints: BoxConstraints(maxHeight: 66),
                  labelStyle: TextStyle(fontSize: formFontSize),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(36.0),
                  ),
                ),
              ),
              Container(
                alignment: Alignment.bottomRight,
                child: TextButton(
                  style: ButtonStyle(),
                  onPressed: bttnFuctions.forgotPassword,
                  child: Text(
                    "Esqueceu sua senha?",
                    style: TextStyle(fontSize: formFontSize - 3),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
                child: DefaultCheckBox(
                  fontSize: 20,
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(0, screenSize.height / 20, 0, 0),
                child: IgnorePointer(
                  ignoring: clickInProgress,
                  child: IgnorePointer(
                    ignoring: clickInProgress,
                    child: new DefaultButton(
                      btnContent: clickInProgress == false
                          ? Text('Entrar')
                          : Center(
                              child: CircularProgressIndicator(
                                color: Colors.white,
                              ),
                            ),
                      onPressed: () async {
                        setState(() => clickInProgress = true);
                        if (await controller.doLogin() == true) {
                          return _loginSucces();
                        } else {
                          setState(() => clickInProgress = true);
                          return _loginFailed();
                        }
                      },
                      buttonHeight: 54,
                      buttonWidth: 155,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
