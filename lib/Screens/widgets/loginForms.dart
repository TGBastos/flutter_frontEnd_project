import 'package:flutter/material.dart';

class LoginForms extends StatefulWidget {
  const LoginForms({ Key? key }) : super(key: key);

  @override
  _LoginFormsState createState() => _LoginFormsState();
}

class _LoginFormsState extends State<LoginForms> {
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Container(
     child: TextFormField(
            
            decoration: InputDecoration(

              constraints: BoxConstraints(maxWidth: screenSize.width/2.5)   ,
              hintText: "Email",
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.0), ),),
            
          )
      
    );
  }
}