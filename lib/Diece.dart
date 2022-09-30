// ignore_for_file: prefer_const_constructors
import 'package:diece_game_flutter/DicePage.dart';
import 'package:flutter/material.dart';

class Diece extends StatelessWidget {
  const Diece({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 5, 22, 75),
        title: Center(child: Text("Dice App",),
        ),
      ),
      body: SafeArea(
        child: DicePage(),
      ),
    );
  }
}
