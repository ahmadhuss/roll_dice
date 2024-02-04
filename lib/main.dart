import 'package:flutter/material.dart';

import 'package:roll_dice/gradient_container.dart';

void main() {
  runApp(const MaterialApp(
    home: Scaffold(
      body: GradientContainer.red(),
    ),
  ));

  /*
  runApp(const MaterialApp(
    home: Scaffold(
      body: GradientContainer(colors: [
       Colors.deepPurple,
        Colors.indigo,
      ]),
    ),
  ));*/
}
