import 'package:flutter/material.dart';
// importing my custom widget
import 'package:flutter_basics/style/styled_text.dart';

// creating variables with keyword 'const'
// const is dynamic typed and can't be override
// const is a final variable that dart use in compile time
// final is a final variable that can be assigned dynamic in runtime
const startAlignment = Alignment.topLeft;
const endAlignment = Alignment.bottomRight;

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
          begin: startAlignment,
          end: endAlignment,
        ),
      ),
      child: const Center(
        child: StyledText(),
      ),
    );
  }
}
