import 'package:flutter/material.dart';
import '../../models/recipe.dart';

class RecipeDetailScreen extends StatefulWidget {
  final Recipe recipe;
  const RecipeDetailScreen({
    super.key,
    required this.recipe
    });

  @override
  State<RecipeDetailScreen> createState() => _RecipeDetailScreenState();
}

// TODO: Add _RecipeDetailState here

class _RecipeDetailScreenState extends State<RecipeDetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.recipe.label),
      ),
      body: SafeArea(
        child: Column(
          children:<Widget> [
            SizedBox(
              height: 300,
              width: double.infinity,
              child: Image.network(widget.recipe.imageUrl),
            ),
            const SizedBox(height: 4),
            Text(
              widget.recipe.label,
              style: const TextStyle(
                fontSize: 18,
              ),
              // Add Expanded here
              // Add Slider() here
            ),
          ],
        ),
      ),
    );
  }
}
