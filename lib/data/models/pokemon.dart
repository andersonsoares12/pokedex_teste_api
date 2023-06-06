class Pokemon {
  final int id;
  final String name;
  final String imageUrl;

  Pokemon({required this.id, required this.name, required this.imageUrl});

  factory Pokemon.fromJson(Map<String, dynamic> json) {
    int id = json['id'];
    String name = json['name'];
    String imageUrl = json['sprites']['front_default'];
    return Pokemon(id: id, name: name, imageUrl: imageUrl);
  }
}
