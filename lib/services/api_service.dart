import 'package:http/http.dart' as http;
import 'dart:convert';

import '../models/recipe.dart';

class ApiService {
  final String baseUrl = 'https://quickrecipe-api.io';

  Future<List<Recipe>> fetchRecipes() async {
    final response = await http.get(Uri.parse('$baseUrl/recipes'));
    if (response.statusCode == 200) {
      final List<dynamic> data = json.decode(response.body);
      return data.map((json) => Recipe.fromJson(json)).toList();
    } else {
      throw Exception('Failed to load recipes');
    }
  }
}
