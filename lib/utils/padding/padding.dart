import "package:flutter/material.dart";

class CustomPadding extends StatelessWidget {
  final double height; 
  final double width;
  const CustomPadding({super.key, required this.height, this.width = 0});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
    );
  }
}