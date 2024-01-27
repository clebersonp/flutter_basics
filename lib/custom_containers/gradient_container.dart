import 'package:flutter/material.dart';
import 'package:flutter_basics/stateful/dice_roller.dart';

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
  const GradientContainer(this.colors, {super.key});

  // another constructor function with default values
  // like the Image.asset('') constructor
  const GradientContainer.purple({super.key})
      : colors = const <Color>[
          Color.fromARGB(255, 71, 29, 152),
          Color.fromARGB(255, 150, 115, 248)
        ];

  final List<Color> colors;

  @override
  Widget build(BuildContext context) {
    // Container widget is useful for configuring and styling layouts
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: colors,
          begin: startAlignment,
          end: endAlignment,
        ),
      ),
      child: const Center(
        child: DiceRoller(),
      ),
    );
  }
}
