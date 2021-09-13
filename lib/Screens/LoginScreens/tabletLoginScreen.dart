import 'package:flutter/material.dart';

class tabletLoginScreen extends StatefulWidget {

  @override
  _tabletLoginScreenState createState() => _tabletLoginScreenState();
}

class _tabletLoginScreenState extends State<tabletLoginScreen> {
  
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

              constraints: BoxConstraints(maxWidth: screenSize.width/2.5)   ,
              hintText: "Email",
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.0), ),),
            
          ))
          
            
          
         ])),
      
    )), );
  }
}