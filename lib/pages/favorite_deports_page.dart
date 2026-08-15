import 'package:diceappg16/models/deport_model.dart';
import 'package:flutter/material.dart';

class FavoriteDeportsPage extends StatefulWidget {
  const FavoriteDeportsPage({super.key});

  @override
  State<FavoriteDeportsPage> createState() => _FavoriteDeportsPageState();
}

class _FavoriteDeportsPageState extends State<FavoriteDeportsPage> {
  List<DeportModel> favoriteDeportsList = [];

  Widget buildDeportItem(
    DeportModel deportModel,
    bool isOnFavoritBoxContainer,
  ) {
    return GestureDetector(
      onTap: () {
        setState(() {
          if (deportModel.isFavorite == false) {
            deportModel.isFavorite = true;
            favoriteDeportsList.add(deportModel);
          } else {
            deportModel.isFavorite = false;
            favoriteDeportsList.remove(deportModel);
          }
        });
      },
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 4),
        decoration: BoxDecoration(
          color: isOnFavoritBoxContainer
              ? Colors.white
              : deportModel.isFavorite == true
              ? Colors.orange
              : Colors.white,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(width: 1.5, color: Colors.orange),
        ),
        child: Text(
          deportModel.name,
          style: TextStyle(
            fontSize: 18,
            color: isOnFavoritBoxContainer
                ? Colors.black
                : deportModel.isFavorite
                ? Colors.white
                : Colors.black,
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFEBA049),
        centerTitle: true,
        title: Text(
          "Sets State Texts App",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "¿Cuáles son tus deportes favoritos?",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Wrap(
                spacing: 16,
                runSpacing: 8,
                alignment: WrapAlignment.center,
                children: [
                  for (int i = 0; i < deportsList.length; i++)
                    buildDeportItem(deportsList[i], false),
                ],
              ),
              Divider(color: Colors.black, height: 64, thickness: 3),
              Text(
                "Mis deportes favoritos son:",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              Container(
                width: double.infinity,
                height: 200,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  border: Border.all(color: Colors.black, width: 2),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Wrap(
                    spacing: 16,
                    runSpacing: 8,
                    alignment: WrapAlignment.center,
                    children: [
                      for (int i = 0; i < favoriteDeportsList.length; i++)
                        buildDeportItem(favoriteDeportsList[i], true),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
