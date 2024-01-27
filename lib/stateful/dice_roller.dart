import 'dart:math';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

// random is from dart math
final randomizer = Random(DateTime.timestamp().millisecond);

// every widget that has they value changed must be a 'stateful widget'
class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  // @override
  // State<DiceRoller> createState() {
  //   return _DiceRollerState();
  // }

  // or using a lambda expression
  @override
  State<DiceRoller> createState() => _DiceRollerState();
}

// every 'stateful widget' must implement a private class do build de widget
// that will be they variables changed to update the UI widget if the new value
class _DiceRollerState extends State<DiceRoller> {
  // variable for changing the assets value and change dice number
  var currentDiceNumber = 1;

  // this method will be executed, but to update the UI widget we must call a
  // especial function called 'setState((){})' that will be responsible to
  // call the build(BuildContext context) at the end of the process
  void rollDice() {
    setState(() {
      currentDiceNumber = randomizer.nextInt(6) + 1; // from 1 to 6
      if (kDebugMode) {
        print('Inside setState() -> Changing image...');
      }
    });
  }

  // after setState() of 'StatefulWidget' class executed, build function will
  // be executed as well
  @override
  Widget build(BuildContext context) {
    if (kDebugMode) {
      print('Building the DiceRoller widget to update the Dice');
    }
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset('assets/images/dice-$currentDiceNumber.png', width: 200),
        const SizedBox(height: 20),
        TextButton(
          onPressed: rollDice,
          style: TextButton.styleFrom(
              foregroundColor: Colors.white,
              textStyle: const TextStyle(fontSize: 28.0)),
          child: const Text('Roll Dice'),
        ),
      ],
    );
  }
}
