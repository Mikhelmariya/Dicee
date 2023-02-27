import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(const Dice());
}

String text = "images/image3.png";
int number = 1;
int number2 = 1;
int num = 1;
int changeImage() {
  num = Random().nextInt(6);
  if (num != 0) {
    return num;
  } else {
    return 1;
  }
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

class DiceChange extends StatefulWidget {
  DiceChange({super.key});

  @override
  State<DiceChange> createState() => _DiceChangeState();
}

class _DiceChangeState extends State<DiceChange> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: GestureDetector(
              onTap: () {
                setState(() {
                  number2 = changeImage();
                });
              },
              child: Image.asset("images/image$number2.png"),
            ),
          ),
          Expanded(
            child: GestureDetector(
              onTap: () {
                setState(() {
                  number = changeImage();
                });
              },
              child: Image.asset("images/image$number.png"),
            ),
          )
        ],
      ),
    );
  }
}
