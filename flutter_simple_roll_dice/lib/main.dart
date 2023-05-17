import 'package:flutter/material.dart';
import 'package:flutter_simple_roll_dice/gradient_container.dart';
import 'package:flutter_simple_roll_dice/styled_text.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.amber[700],
          title: const StyledText(
            "Dice Roller",
          ),
          centerTitle: true,
        ),
        body: const GradientContainer(),
      ),
    ),
  );
}
