import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text("Dicee"),
          backgroundColor: Colors.red,
        ),
        body: DiceeApp(),
      ),
    ),
  );
}

class DiceeApp extends StatefulWidget {
  const DiceeApp({Key? key}) : super(key: key);

  @override
  State<DiceeApp> createState() => _DiceeAppState();
}

class _DiceeAppState extends State<DiceeApp> {
  int leftDiceNumber = Random().nextInt(5) + 1;
  int rightDiceNumber = Random().nextInt(5) + 1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: TextButton(
              onPressed: () {
                setState(() {
                  leftDiceNumber = Random().nextInt(5) + 1;
                });
              },
              child:Image.asset('images/dice$leftDiceNumber.png'),
            )
          ),
          Expanded(
              child: TextButton(
                onPressed: () {
                  setState(() {
                    rightDiceNumber = Random().nextInt(5) + 1;
                  });
                },
                child:Image.asset('images/dice$rightDiceNumber.png'),
              )
          )
        ],
      ),
    );
  }
}
