import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_simple_roll_dice/styled_text.dart';

final Random random = Random(); //global variable

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() => _DiceRollerState();
}

class _DiceRollerState extends State<DiceRoller> {
  var activeDiceImage = "assets/images/dice-2.png";

  void rollDice() {
    setState(() {
      var nextImage = random.nextInt(6) + 1;
      activeDiceImage = "assets/images/dice-$nextImage.png";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          activeDiceImage,
          width: 200,
        ),
        const SizedBox(height: 20),
        TextButton(
          onPressed: rollDice,
          child: const StyledText("Roll Dice"),
        )
      ],
    );
  }
}
