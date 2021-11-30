import 'package:extended_masked_text/extended_masked_text.dart';
import 'package:flutter/material.dart';
import 'package:rio_das_pedras_front_end/core/provider/login_controller.dart';
import 'package:rio_das_pedras_front_end/core/repositories/login_repository.dart';

import '../../../core/common/utils/button_fuctions.dart';
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
  var _formKey = GlobalKey<FormState>();
  final cpfController = MaskedTextController(mask: '000.000.000-00');
  bool clickInProgress = false;

  _loginSucces() {
    Navigator.pushNamed(context, RoutesName.logedPage);
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
                  )),
              TextFormField(
                obscureText: true,
                validator: (val) => val!.isEmpty ? 'Coloque sua senha' : null,
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
                          setState(() => clickInProgress = false);
                          return _loginSucces();
                        } else {}
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
