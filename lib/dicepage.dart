import 'package:flutter/material.dart';

class DicePage extends StatefulWidget {
  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  //const DicePage({super.key});
  int leftDiceNumber = 2;
  int rightDiceNumber = 3;
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
              setState(() {
                //calling build again
                leftDiceNumber = 5;
              });
            },
            child: Image.asset(
              "lib/images/dice$leftDiceNumber.png",
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
                rightDiceNumber = 6;
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
