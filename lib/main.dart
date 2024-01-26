// import packages and functions from flutter framework or any other
// third-party feature
import 'package:flutter/material.dart';

// method main is the entry point for flutter and it must in the main.dart
// file as well
void main() {
  // runApp is the most important function, because it is responsible for
  // running and create the widget tree and and attach them to mobile screen
  // MaterialApp and Text are just flutter UI Widgets from flutter framework
  // and MaterialApp wrapped Text widget, creating the widget tree.
  // the const keyword is used for dart performance and it's used a lot
  // (singleton pattern)
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: GradientContainer(),
      ),
    ),
  );
}

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
