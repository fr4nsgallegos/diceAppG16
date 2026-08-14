import 'package:flutter/material.dart';

class MenuPage extends StatelessWidget {
  List<Map<String, dynamic>> menuList = [
    {
      "title": "Menú 1",
      "subtitle": "Lun - Mar - Mier",
      "price": 5.0,
      "imageUrl": "https://i.blogs.es/b0a5c0/lomo_saltado/1366_2000.jpg",
    },
    {
      "title": "Menú 2",
      "subtitle": "Mar - Mier",
      "price": 7.0,
      "imageUrl":
          "https://images.pexels.com/photos/28448388/pexels-photo-28448388.jpeg",
    },
    {
      "title": "Menú 3",
      "subtitle": "Lun - Mar ",
      "price": 8.0,
      "imageUrl":
          "https://images.pexels.com/photos/8194817/pexels-photo-8194817.jpeg",
    },
    {
      "title": "Menú 4",
      "subtitle": "Mier",
      "price": 5.0,
      "imageUrl":
          "https://images.pexels.com/photos/38330330/pexels-photo-38330330.jpeg",
    },
    {
      "title": "Menú 5",
      "subtitle": "Sab- Dom",
      "price": 10.0,
      "imageUrl":
          "https://images.pexels.com/photos/37260671/pexels-photo-37260671.jpeg",
    },
  ];

  Widget buildMenuCard(Map<String, dynamic> menu) {
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
          // PRIMERA MANERA DE PNOER LA IMÁGEN CON BORDES REDONDEADOS
          // ClipRRect(
          //   borderRadius: BorderRadiusGeometry.circular(18),
          //   child: Image.network(
          //     "https://i.blogs.es/b0a5c0/lomo_saltado/1366_2000.jpg",
          //     width: 100,
          //     height: 100,
          //     fit: BoxFit.cover,
          //   ),
          // ),

          //  Segunda forma de poner una imagen con bordes redondeados
          Container(
            width: 100,
            height: 100,
            decoration: BoxDecoration(
              color: Colors.red,
              borderRadius: BorderRadius.circular(18),
              image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(menu["imageUrl"]),
              ),
            ),
          ),

          SizedBox(width: 16),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(menu["title"], style: TextStyle(fontSize: 24)),
              Text(menu["subtitle"], style: TextStyle(fontSize: 18)),
              Text(
                'S/.${menu["price"]}',
                style: TextStyle(fontWeight: .bold, fontSize: 25),
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
                  menuList.length,
                  (index) => buildMenuCard(menuList[index]),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
