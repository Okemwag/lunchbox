class Recipe {
  final String id;
  final String label;
  final String imageUrl;

  Recipe({
    required this.id,
    required this.label,
    required this.imageUrl,
  });

  factory Recipe.fromJson(Map<String, dynamic> json) {
    return Recipe(
      id: json['id'],
      label: json['label'],
      imageUrl: json['image'],
    );
  }

  static List<Recipe> sample = [
    Recipe(
      id: '1',
      label: 'Spaghetti Carbonara',
      imageUrl: 'https://images.unsplash.com/photo-1546069901-ba9599a7e63c',
    ),
    Recipe(
      id: '2',
      label: 'Avocado Toast',
      imageUrl: 'https://images.unsplash.com/photo-1611599537845-1c7aca0091c0',
    ),
    Recipe(
      id: '3',
      label: 'Grilled Chicken Salad',
      imageUrl: 'https://images.unsplash.com/photo-1511690656952-34342bb7c2f2',
    ),
    Recipe(
      id: '4',
      label: 'Blueberry Pancakes',
      imageUrl: 'https://plus.unsplash.com/premium_photo-1705609329676-8585fbd02163',
    ),
    Recipe(
      id: '5',
      label: 'Beef Burger',
      imageUrl: 'https://images.unsplash.com/photo-1555939594-58d7cb561ad1',
    ),
  ];
}
