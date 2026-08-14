import 'package:diceappg16/pages/stateless_page.dart';
import 'package:flutter/material.dart';

class StatefullPage extends StatefulWidget {
  String nombre;
  int valor;

  StatefullPage({required this.nombre, required this.valor});

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
            Text("Hola soy ${widget.nombre}"),
            Text("El valor es: ${widget.valor}"),
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
