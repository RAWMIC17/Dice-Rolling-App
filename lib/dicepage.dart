import 'dart:math';

import 'package:flutter/material.dart';

class DicePage extends StatefulWidget {
  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  //const DicePage({super.key});
  int leftDiceNumber = 6;
  int rightDiceNumber = 6;

  void changeDiceFace() {
    setState(() {
      //calling build again
      leftDiceNumber = Random().nextInt(6) +
          1; //Math library for random number generation(0 to 5, we change from 1 to 6)
      rightDiceNumber = Random().nextInt(6) + 1;
      //5;
    });
  }

// creating it once
  @override
  Widget build(BuildContext context) {
    //int leftDiceNumber = 2; it will be created everytime build method is called
    //but we can update our variable here with a new value
    return Center(
      child: Row(
        children: [
          Expanded(
              //resizes to fill horizontal/vertical space related to row or column and solves overflow
              //flex: 2,//2 times width of next one
              child: //width: 200,
                  TextButton(
            onPressed: () {
              //print("Left dice pressed");
              changeDiceFace();
            },
            child: Image.asset(
              "lib/images/dice$leftDiceNumber.png", //string interpolation
            ),
          )),
          Expanded(
              //resizes to fill horizontal/vertical space related to row or column and solves overflow
              //flex: 1,
              child: //width: 200,
                  TextButton(
            onPressed: () {
              //print("Right dice pressed");
              setState(() {
                changeDiceFace();
                // leftDiceNumber = Random().nextInt(6)+1;//both are randomly generated
                // rightDiceNumber = Random().nextInt(6)+1;
              });
            },
            child: Image.asset(
              "lib/images/dice$rightDiceNumber.png",
            ),
          )),
        ],
      ),
    );
  }
}
