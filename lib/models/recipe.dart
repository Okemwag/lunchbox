class Recipe {
  final String id;
  final String name;
  final List<String> ingredients;
  final String instructions;

  Recipe({
    required this.id,
    required this.name,
    required this.ingredients,
    required this.instructions,
  });

  factory Recipe.fromJson(Map<String, dynamic> json) {
    return Recipe(
      id: json['id'],
      name: json['name'],
      ingredients: List<String>.from(json['ingredients']),
      instructions: json['instructions'],
    );
  }
}
