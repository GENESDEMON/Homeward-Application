class Skins {
  int id;
  String name;
  String price;
  String image;
  String season;

  Skins({
    required this.id,
    required this.name,
    required this.image,
    required this.price,
    required this.season,
  });
}

List<Skins> skins = [
  Skins(
      id: 1,
      name: "Akira",
      image: "assets/images/skin2.png",
      price: "600",
      season: "s9"),
  Skins(
      id: 1,
      name: "Victor",
      image: "assets/images/skin6.png",
      price: "9000",
      season: "s9"),
  Skins(
      id: 1,
      name: "Lolu",
      image: "assets/images/skin7.png",
      price: "1000",
      season: "s9"),
  Skins(
      id: 1,
      name: "Avax",
      image: "assets/images/skin8.png",
      price: "900",
      season: "s8"),
  Skins(
      id: 1,
      name: "Cody",
      image: "assets/images/skin9.png",
      price: "1600",
      season: "s8"),
];
