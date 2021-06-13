import 'package:flutter/material.dart';
import 'dart:math';
import 'package:random_color/random_color.dart';

void main() {

  RandomColor _randomColor = RandomColor();
  Color _color = _randomColor.randomColor();

  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: _color,
        // appBar: AppBar(
        //   title: Text('Dicee'),
        //   backgroundColor: Colors.lightBlue,
        // ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceNumber = Random().nextInt(6) + 1;
  int rightDiceNumber = Random().nextInt(6) + 1;

  void changeDiceFace() {
    setState(() {
      leftDiceNumber = Random().nextInt(6) + 1;
      rightDiceNumber = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: TextButton(
              onPressed: (){
                changeDiceFace();
              },
              child: Image.asset('images/dice$leftDiceNumber.png'),
            ),
          ),
          Expanded(
            child: TextButton(
              onPressed: (){
               changeDiceFace();
              },
              child: Image.asset('images/dice$rightDiceNumber.png'),
            ),
          ),
        ],
      ),
    );
  }
}

// Ideas:
//     -AR funcionality
//     - https://pub.dev/packages/arcore_flutter_plugin
