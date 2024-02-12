import 'package:flutter/material.dart';

class DicePage extends StatelessWidget {
  const DicePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
              //resizes to fill horizontal/vertical space related to row or column and solves overflow
              //flex: 2,//2 times width of next one
              child: //width: 200,
                  TextButton(
            onPressed: () {
              print("Left dice pressed");
            },
            child: Image.asset(
              "lib/images/dice1.png",
            ),
          )),
          Expanded(
              //resizes to fill horizontal/vertical space related to row or column and solves overflow
              //flex: 1,
              child: //width: 200,
                  TextButton(
            onPressed: () {
              print("Right dice pressed");
            },
            child: Image.asset(
              "lib/images/dice2.png",
            ),
          )),
        ],
      ),
    );
  }
}
