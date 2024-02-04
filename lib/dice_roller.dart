// Third party import modules should be register in the pubspec.yaml
import 'package:flutter/material.dart';
import 'dart:math';

final randomizer = Random();

class DiceRoller extends StatefulWidget {
  // constructor
  const DiceRoller({super.key});

  // The method createState() will be override for the StatefulWidget
  // It returns a State with Generic of Class DiceRoller.
  // But How we will return this value State<DiceRoller>, for this
  // we have to create another class. Note: StatefulWidget k saath
  // hamesha two classes k saath work kiya jaata hai.
  // Second class start with leading underscore which means this
  // class is private and it will be used here, cant access via import
  // on another place then name of the class with keyword State
  @override
  State<DiceRoller> createState() {
    // Executes the constructor function of Class _DiceRollerState
    // automatically created by Dart.
    return _DiceRollerState();
  }
}

// This class is private only used internally by DiceRoller Stateful widget class
// extends State<DiceRoller>
class _DiceRollerState extends State<DiceRoller> {
  var currentDiceRoll = 1;

  void rollDice() {
    // We have to use setState method from State<DiceRoller> class,
    // which take anonymous function and you can change attribute value
    // and this setState will rerun the bottom Widget build() function
    setState(() {
      // Random() is constructor in dart:math class
      currentDiceRoll = randomizer.nextInt(6) + 1; // 1 <> 6
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset('assets/images/dice-$currentDiceRoll.png', width: 200),
        const SizedBox(height: 20),
        TextButton(
            onPressed: rollDice,
            style: TextButton.styleFrom(
              // padding: const EdgeInsets.only(top: 20),
              foregroundColor: Colors.white,
              textStyle: const TextStyle(fontSize: 28),
            ),
            child: const Text('Roll Dice'))
      ],
    );
  }
}
