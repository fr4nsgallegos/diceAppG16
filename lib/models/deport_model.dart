class DeportModel {
  String name;
  bool isFavorite;

  DeportModel({required this.name, this.isFavorite = false});
}

List<DeportModel> deportsList = [
  DeportModel(name: "Gimnasia"),
  DeportModel(name: "Crossfit"),
  DeportModel(name: "Baloncesto"),
  DeportModel(name: "Natación"),
  DeportModel(name: "Golf"),
  DeportModel(name: "Tenis"),
  DeportModel(name: "Balonmano"),
];
