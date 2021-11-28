import 'package:flutter/material.dart';

class ChangePasswordPageImage extends StatelessWidget {
  final double imageHeight;
  final double imageWidth;
  final double imagePadding;
  const ChangePasswordPageImage({
    Key? key,
    required this.imageHeight,
    required this.imageWidth,
    required this.imagePadding,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: imagePadding),
      child: Container(
          height: imageHeight,
          width: imageWidth,
          decoration: BoxDecoration(
              border: Border.all(
                width: 2,
                color: Colors.black,
              ),
              borderRadius: BorderRadius.circular(100)),
          child: Icon(Icons.computer, size: 100)),
    );
  }
}
