import 'package:flutter/material.dart';

class StatefullPage extends StatefulWidget {
  @override
  State<StatefullPage> createState() => _StatefullPageState();
}

class _StatefullPageState extends State<StatefullPage> {
  int contador = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Statefullpage")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(contador.toString(), style: TextStyle(fontSize: 30)),
            SizedBox(height: 32),
            ElevatedButton(
              onPressed: () {
                contador++;
                setState(() {});
              },
              child: Text("Aumentar contador"),
            ),
          ],
        ),
      ),
    );
  }
}
