import 'package:flutter/material.dart';

class TextCustom extends StatelessWidget {
  final String content;
  final TextStyle textStyle;
  const TextCustom({super.key, required this.content, required this.textStyle});

  @override
  Widget build(BuildContext context) {
    return Text(
      "$content",
      style: textStyle,
    );
  }
}