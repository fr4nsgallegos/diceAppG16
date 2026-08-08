import 'dart:math';

import 'package:flutter/material.dart';

class DicePage extends StatefulWidget {
  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int nDado = 1;

  void aumentarDado() {
    nDado = nDado == 6 ? 1 : nDado += 1;

    // nDado = nDado + 1;
    // if (nDado == 6) {
    //   nDado = 1;
    // } else {
    //   nDado += 1;
    // }
    setState(() {});
  }

  void disminuirDado() {
    nDado = nDado == 1 ? 6 : nDado -= 1;

    // if (nDado == 1) {
    //   nDado = 6;
    // } else {
    //   nDado -= 1;
    // }
    setState(() {});
  }

  void shuffleDado() {
    nDado = Random().nextInt(6) + 1;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Dice Page")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.all(32),
              padding: EdgeInsets.all(32),
              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.circular(25),
              ),
              child: Image.asset("assets/images/dice$nDado.png"),
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {
                    disminuirDado();
                  },
                  child: Icon(Icons.arrow_left_rounded, size: 50),
                ),
                ElevatedButton(
                  onPressed: () {
                    shuffleDado();
                  },
                  child: Icon(Icons.shuffle, size: 50),
                ),
                ElevatedButton(
                  onPressed: () {
                    aumentarDado();
                  },
                  child: Icon(Icons.arrow_right_rounded, size: 50),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
