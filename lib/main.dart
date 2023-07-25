import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        body: DiceePageState(),
      ),
    ),
  );
}

class DiceePageState extends StatefulWidget {
  const DiceePageState({super.key});

  @override
  State<DiceePageState> createState() => _DiceePageStateState();
}

class _DiceePageStateState extends State<DiceePageState> {
  int leftDiceNumber = Random().nextInt(6) + 1,
      rightDiceNumber = Random().nextInt(6) + 1;

  void generateRandomNumbers() {
    leftDiceNumber = Random().nextInt(6) + 1;
    rightDiceNumber = Random().nextInt(6) + 1;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: TextButton(
              onPressed: () {
                setState(() {
                  generateRandomNumbers();
                });
              },
              child: Image(image: AssetImage('images/dice$leftDiceNumber.png')),
            ),
          ),
          Expanded(
            child: TextButton(
              onPressed: () {
                setState(() {
                  generateRandomNumbers();
                });
              },
              child:
                  Image(image: AssetImage('images/dice$rightDiceNumber.png')),
            ),
          ),
        ],
      ),
    );
  }
}
