
import 'package:flutter/material.dart';


class desktopLoginScreen extends StatefulWidget {

  @override
  _desktopLoginScreenState createState() => _desktopLoginScreenState();
}

class _desktopLoginScreenState extends State<desktopLoginScreen> {

final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return PreferredSize(
      preferredSize: Size(screenSize.width, screenSize.height),
   child: Scaffold(
      body: Form(
        key: _formKey,
        child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(5),
          child: TextFormField(
            
            decoration: InputDecoration(

              constraints: BoxConstraints(maxWidth: screenSize.width/4)   ,
              hintText: "Email",
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.0), ),),
            
          ))
          
            
          
         ])),
      
    )), );
  }
}