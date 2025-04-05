class Recipe {
  final String id;
  final String label;
  final String imageUrl;
  final int servings;
  final List<Ingredient> ingredients;

  Recipe({
    required this.id,
    required this.label,
    required this.imageUrl,
    required this.servings,
    required this.ingredients,
  });

  factory Recipe.fromJson(Map<String, dynamic> json) {
    return Recipe(
      id: json['id'],
      label: json['label'],
      imageUrl: json['image'],
      servings: json['yield'],
      ingredients: List<Ingredient>.from(
        json['ingredients'].map((x) => Ingredient.fromJson(x)),
      ),
    );
  }

  static List<Recipe> sample = [
    Recipe(
      id: '1',
      label: 'Spaghetti Carbonara',
      imageUrl: 'https://images.unsplash.com/photo-1546069901-ba9599a7e63c',
      servings: 2,
      ingredients: [
        Ingredient(name: 'Spaghetti', measure: 'g', quantity: 200),
        Ingredient(name: 'Eggs', measure: 'pcs', quantity: 2),
        Ingredient(name: 'Parmesan Cheese', measure: 'g', quantity: 50),
      ],
    ),
    Recipe(
      id: '2',
      label: 'Avocado Toast',
      imageUrl: 'https://images.unsplash.com/photo-1611599537845-1c7aca0091c0',
      servings: 1,
      ingredients: [
        Ingredient(name: 'Bread', measure: 'slices', quantity: 2),
        Ingredient(name: 'Avocado', measure: 'pcs', quantity: 1),
        Ingredient(name: 'Salt', measure: 'tsp', quantity: 0.25),
      ],
    ),
    Recipe(
      id: '3',
      label: 'Grilled Chicken Salad',
      imageUrl: 'https://images.unsplash.com/photo-1511690656952-34342bb7c2f2',
      servings: 2,
      ingredients: [
        Ingredient(name: 'Chicken Breast', measure: 'g', quantity: 300),
        Ingredient(name: 'Lettuce', measure: 'cups', quantity: 2),
        Ingredient(name: 'Tomatoes', measure: 'pcs', quantity: 2),
      ],
    ),
    Recipe(
      id: '4',
      label: 'Blueberry Pancakes',
      imageUrl: 'https://plus.unsplash.com/premium_photo-1705609329676-8585fbd02163',
      servings: 3,
      ingredients: [
        Ingredient(name: 'Flour', measure: 'cups', quantity: 1.5),
        Ingredient(name: 'Blueberries', measure: 'cups', quantity: 1),
        Ingredient(name: 'Milk', measure: 'cups', quantity: 1),
      ],
    ),
    Recipe(
      id: '5',
      label: 'Beef Burger',
      imageUrl: 'https://images.unsplash.com/photo-1555939594-58d7cb561ad1',
      servings: 1,
      ingredients: [
        Ingredient(name: 'Beef Patty', measure: 'g', quantity: 200),
        Ingredient(name: 'Bun', measure: 'pcs', quantity: 1),
        Ingredient(name: 'Lettuce', measure: 'leaves', quantity: 2),
      ],
    ),
  ];
}

class Ingredient {
  final String name;
  final String measure;
  final double quantity;

  Ingredient({
    required this.name,
    required this.measure,
    required this.quantity,
  });

  factory Ingredient.fromJson(Map<String, dynamic> json) {
    return Ingredient(
      name: json['name'],
      measure: json['measure'],
      quantity: json['quantity'].toDouble(),
    );
  }
}
