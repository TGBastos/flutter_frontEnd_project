import 'package:flutter/material.dart';

class mobileLoginScreen extends StatefulWidget {
  const mobileLoginScreen({ Key? key }) : super(key: key);

  @override
  _mobileLoginScreenState createState() => _mobileLoginScreenState();
}

class _mobileLoginScreenState extends State<mobileLoginScreen> {
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
              constraints:  BoxConstraints(maxWidth: screenSize.width/1.5)  ,
              hintText: "Email",
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.0), ),),
            
          ))
          
            
          
         ])),
      
    )), );
  }
}