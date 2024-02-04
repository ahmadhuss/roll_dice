import 'package:flutter/material.dart';

import 'package:roll_dice/styled_text.dart';
import 'package:roll_dice/dice_roller.dart';

const startAlignment = Alignment.topLeft;
const endAlignment = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {
  final List<Color> colors;

  // Primary constructor
  const GradientContainer({super.key, required this.colors});

  // Named constructor 'purple' with hardcoded purple gradient colors
  // Remove `required this.colors` because you're setting `colors` within the constructor
  // Note: When defining a const constructor and initializing
  // final fields with constant values, all the values and invoked methods
  // must be compile-time constants.
  const GradientContainer.red({Key? key})
      : colors = const [
          Color.fromARGB(225, 250, 53, 45),
          Color.fromARGB(225, 197, 11, 54)
        ],
        super(key: key);

  // When Flutter finds your Widget, it will call the build method
  // This is a function that returns a Widget.
  // The context parameter will be used to contain metadata of our Widget.
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
            colors: colors, begin: startAlignment, end: endAlignment),
      ),
      child: const Center(child: DiceRoller()),
    );
  }
}
