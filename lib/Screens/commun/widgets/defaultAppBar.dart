import 'package:flutter/material.dart';
import 'package:rio_das_pedras_front_end/Screens/LoginScreens/desktopLoginScreen.dart';
import 'package:rio_das_pedras_front_end/Screens/commun/responsiveController.dart';

class DefaultAppBar extends StatelessWidget implements PreferredSizeWidget {

  final double DeviceHeight;
  final double DeviceWidth;
  const DefaultAppBar({ Key? key, required this.DeviceHeight, required this.DeviceWidth}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    
    return AppBar(
            backgroundColor: Colors.green,
            bottom: PreferredSize(
                child: Container(
                  color: Colors.orange,
                  height: DeviceHeight/4 + 5,
                ),
                preferredSize: Size.fromHeight(0)),
          );
  }


  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(DeviceHeight);
}