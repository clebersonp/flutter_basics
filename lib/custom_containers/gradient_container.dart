import 'package:flutter/material.dart';

// Creating a class for a custom widget
class GradientContainer extends StatelessWidget {
  // class's constructor and passing the key argument forwards to parents class
  // const GradientContainer({key}) : super(key: key);

  // short way to define a constructor and passing the argument forward
  const GradientContainer({super.key});

  @override
  Widget build(BuildContext context) {
    // Container widget is useful for configuring and styling layouts
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: <Color>[Colors.deepOrange, Colors.orangeAccent],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: const Center(
        child: Text(
          'Hello World! ;)',
          style: TextStyle(
            color: Colors.white,
            fontSize: 28.0,
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
    );
  }
}
