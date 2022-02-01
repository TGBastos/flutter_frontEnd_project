import 'package:flutter/material.dart';
import 'package:rio_das_pedras_front_end/View/cartao/desktop_cartao.dart';
import 'package:rio_das_pedras_front_end/View/commun/responsive_controller.dart';

class CartaoPageWrapper extends StatefulWidget {
  const CartaoPageWrapper({Key? key}) : super(key: key);

  @override
  _CartaoPageWrapperState createState() => _CartaoPageWrapperState();
}

class _CartaoPageWrapperState extends State<CartaoPageWrapper> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ResponsiveController(
        desktop: DesktopCartaoScreen(),
        tablet: Scaffold(),
        mobile: Scaffold(),
        largeDesktop: Scaffold(),
      ),
    );
  }
}
