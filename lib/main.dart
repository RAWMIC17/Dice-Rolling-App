import 'package:dice_rolling_app1/dicepage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          elevation: 5,
          shadowColor: Colors.black,
          title: Center(
            child: Text(
              "It's Dicee",
              style: TextStyle(color: Colors.white),
            ),
          ),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    );
  }
}
