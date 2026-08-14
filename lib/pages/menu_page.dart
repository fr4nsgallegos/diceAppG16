import 'package:diceappg16/models/menu_model.dart';
import 'package:flutter/material.dart';

class MenuPage extends StatelessWidget {
  Widget buildMenuCard(MenuModel menu) {
    return Container(
      margin: EdgeInsets.only(bottom: 16),
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(14),
        border: Border.all(color: Colors.black, width: 2),
      ),
      child: Row(
        children: [
          Container(
            width: 100,
            height: 100,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(18),
              image: DecorationImage(
                fit: BoxFit.cover,
                // Cambiamos menu["imageUrl"] por menu.imageUrl
                image: NetworkImage(menu.imageUrl),
              ),
            ),
          ),
          SizedBox(width: 16),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Cambiamos la notación de corchetes por el punto
              Text(menu.title, style: TextStyle(fontSize: 24)),
              Text(menu.subtitle, style: TextStyle(fontSize: 18)),
              Text(
                "S/. ${menu.price}",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
              ),
            ],
          ),
        ],
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
          "Setstate Cards Assets App",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Selecciona tu mejor opción:",
                style: TextStyle(fontSize: 24),
              ),
              SizedBox(height: 16),
              Column(
                children: List.generate(
                  menuModelList.length,
                  (index) => buildMenuCard(menuModelList[index]),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
