import 'package:flutter/material.dart';

class StyledText extends StatelessWidget {
  // there are two kind of parameters in dart, positional parameter and named
  // parameter. Positional parameters are required, named parameters are
  // optional but they can be required (just put the keyword required in
  // front of parameter).
  // And we can define default values for parameters.
  const StyledText(
    this.text, {
    super.key,
    this.color = Colors.white,
    this.fontSize = 28.0,
    this.fontWeight = FontWeight.w400,
  });

  // those are instance variables and they use the keyword 'final' instead of
  // 'const' because they can change only once at runtime when dart will
  // create it
  final String text;
  final Color color;
  final double fontSize;
  final FontWeight fontWeight;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: color,
        fontSize: fontSize,
        fontWeight: fontWeight,
      ),
    );
  }
}
