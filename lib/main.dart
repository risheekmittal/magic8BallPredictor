import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue.shade400,
        appBar: AppBar(
          title: Text('Ask Me Anything',
          style: TextStyle(fontWeight: FontWeight.bold),),
          backgroundColor: Colors.blue.shade800,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  const DicePage({Key? key}) : super(key: key);

  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftButtonClick = 1;

  void buttonClick() {
    setState(() {
      leftButtonClick = Random().nextInt(5) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: TextButton(
              onPressed: () =>  buttonClick(),
              child: Image.asset("images/ball$leftButtonClick.png"),
            ),
          ),
        ],
      ),
    );
  }
}
