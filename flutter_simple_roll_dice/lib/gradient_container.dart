import 'package:flutter/material.dart';

const startAlignment = Alignment.topLeft;
const endAlignment = Alignment.topRight;

class GradientContainer extends StatelessWidget {
  const GradientContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Colors.red,
            Colors.yellow,
          ],
          begin: startAlignment,
          end: endAlignment,
        ),
      ),
      child: const Center(child: Text("Roll dice")),
    );
  }
}
