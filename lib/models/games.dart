class Games {
  int id;
  String name;
  bool foruser;

  Games({
    required this.id,
    required this.name,
    required this.foruser,
  });
}

List<Games> games = [
  Games(id: 1, name: "All Videos", foruser: true),
  Games(id: 2, name: "Following", foruser: true),
  Games(id: 3, name: "COD Mobile", foruser: true),
  Games(id: 4, name: "Red Dead II", foruser: false),
  Games(id: 5, name: "Apex Legends", foruser: true),
];
