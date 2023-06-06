class Pokemon {
  final int id;
  final String name;
  final String imageUrl;
  final int height;
  final int weight;
  final int baseExperience;
  final List<String> types;
  final List<String> stats;
  final List<dynamic> moves;

  Pokemon({
    required this.id,
    required this.name,
    required this.imageUrl,
    required this.height,
    required this.weight,
    required this.baseExperience,
    required this.types,
    required this.stats,
    required this.moves
  });

  factory Pokemon.fromJson(Map<String, dynamic> json) {
    int id = json['id'];
    String name = json['name'];
    String imageUrl = json['sprites']['front_default'];
    List<String> types = List<String>.from(json['types'].map((type) => type['type']['name']));
    List<String> stats = List<String>.from(json['stats'].map((stat) => stat['base_stat'].toString()));
    List<dynamic> moves = List<dynamic>.from(json['moves'].map((moves) => moves['move']['name'].toString()));

    int height = json['height'];
    int weight = json['weight'];
    int baseExperience = json['base_experience'];

    return Pokemon(
      id: id,
      name: name,
      imageUrl: imageUrl,
      height: height,
      weight: weight,
      baseExperience: baseExperience,
      types: types,
      stats: stats, 
      moves: moves,
    );
  }
}
