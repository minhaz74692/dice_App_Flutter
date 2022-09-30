// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';

class Example extends StatelessWidget {
  const Example({super.key});
  @override
  Widget build(BuildContext context) {
    var leftButton = 5;
    var rightButton = 3;
    return Center(
      child: Row(
          children: <Widget>[
            Expanded(
              flex: 1,
              child: TextButton(
                onPressed: (){
                  leftButton= 6;
                  },
                child: Image(
                  image: AssetImage('images/dice$leftButton.png'),
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: TextButton(
                onPressed: (){ },
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
