import 'package:flutter/material.dart';

class loginButton extends StatefulWidget {
  const loginButton({ Key? key }) : super(key: key);

  @override
  _loginButtonState createState() => _loginButtonState();
}

class _loginButtonState extends State<loginButton> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        ElevatedButton(onPressed: null, child: Text('Entrar'))
      ],
    );
    
  }
}