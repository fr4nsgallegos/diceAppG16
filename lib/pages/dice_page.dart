import 'package:flutter/material.dart';

class DicePage extends StatefulWidget {
  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int nDado = 1;

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

            ElevatedButton(
              onPressed: () {
                nDado++;
                setState(() {});
              },
              child: Text("Cambiar número de dado"),
            ),
          ],
        ),
      ),
    );
  }
}
