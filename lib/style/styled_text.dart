import 'package:flutter/material.dart';

class StyledText extends StatelessWidget {
  const StyledText({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text(
      'Hello World! ;)',
      style: TextStyle(
        color: Colors.white,
        fontSize: 28.0,
        fontWeight: FontWeight.w400,
      ),
    );
  }
}
