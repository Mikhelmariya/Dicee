import 'package:flutter/material.dart';

void main() {
  runApp(const Dice());
}

class Dice extends StatelessWidget {
  const Dice({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Center(child: Text("Dice")),
          backgroundColor: Colors.black,
        ),
        backgroundColor: Color.fromARGB(255, 203, 212, 21),
        body: DiceChange(),
      ),
    );
  }
}

class DiceChange extends StatelessWidget {
  DiceChange({super.key});

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
