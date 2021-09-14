import 'package:flutter/material.dart';

class resAppBar extends StatefulWidget {
  const resAppBar({Key? key}) : super(key: key);

  @override
  _resAppBarState createState() => _resAppBarState();
}

class _resAppBarState extends State<resAppBar> {
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return PreferredSize(
      preferredSize: Size(screenSize.width, screenSize.height),
      child: Scaffold(),
    );
  }
}
