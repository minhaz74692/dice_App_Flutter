// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'dart:math';
class DicePage extends StatefulWidget {
  const DicePage({Key? key}) : super(key: key);

  @override
  State<DicePage> createState() => _DicePageState();
}
class _DicePageState extends State<DicePage> {
  int leftButton= 5;
  int rightButton = 2;
  @override
  Widget build(BuildContext context) {
    int  randomDiceLeft = Random().nextInt(6) + 1;
    int  randomDiceRight = Random().nextInt(6) + 1;
    void randomGen(){
      setState(() {
        leftButton = randomDiceLeft;
        rightButton= randomDiceRight;
      });
    }
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            flex: 1,
            child: TextButton(
              onPressed: (){
                randomGen();
              },
              child: Image(
                image: AssetImage('images/dice$leftButton.png'),
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: TextButton(
              onPressed: (){
                  randomGen();
              },
              child: Image(
                image: AssetImage('images/dice$rightButton.png'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
