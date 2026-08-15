import 'package:diceappg16/models/deport_model.dart';
import 'package:flutter/material.dart';

class FavoriteDeportsPage extends StatefulWidget {
  @override
  State<FavoriteDeportsPage> createState() => _FavoriteDeportsPageState();
}

class _FavoriteDeportsPageState extends State<FavoriteDeportsPage> {
  List<DeportModel> favoriteDeportList = [];

  Widget buildItem(DeportModel deporModel) {
    return GestureDetector(
      onTap: () {
        if (deporModel.isFavorite == false) {
          deporModel.isFavorite = true;
          favoriteDeportList.add(deporModel);
        } else {
          deporModel.isFavorite = false;
          favoriteDeportList.remove(deporModel);
        }
        setState(() {});
      },
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 4),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(width: 1.5, color: Colors.orange),
        ),
        child: Text(deporModel.nombre, style: TextStyle(fontSize: 18)),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xffEBA049),
        centerTitle: true,
        title: Text(
          "Sets State Texts App",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "¿Cuáles son tus deportes favoritos?",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 16),
              Wrap(
                spacing: 16, //espaciado horizontal entre elementos,
                runSpacing: 8, //espaciado vertical entre filas
                alignment: WrapAlignment.center, //alineación
                children: [
                  for (int i = 0; i < deportList.length; i++)
                    buildItem(deportList[i]),
                ],
              ),
              Divider(color: Colors.black, height: 64, thickness: 3),

              Text(
                "Mis deportes favoritos son:",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              Container(
                height: 150,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  border: Border.all(color: Colors.black, width: 2),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
