import 'package:flutter/material.dart';

class StatelessPage extends StatelessWidget {
  String nombre;

  StatelessPage({required this.nombre});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("StatelessWidget")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Hola soy $nombre"),
            // La funcion del elevated button no se puede porque intenta cambiar el estado del nombre
            // ElevatedButton(
            //   onPressed: () {
            //     nombre = "Benito";
            //   },
            //   child: Text("Modificar nombre"),
            // ),
          ],
        ),
      ),
    );
  }
}
