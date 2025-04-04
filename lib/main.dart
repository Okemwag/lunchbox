import 'package:flutter/material.dart';
import 'package:lunchbox/screens/home/home_screen.dart';


void main() => runApp(const RecipeApp());

class RecipeApp extends StatelessWidget {
  const RecipeApp({super.key});

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = ThemeData();
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Recipe App',
      theme: theme.copyWith(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.greenAccent,
          ),
      ),
      home: const HomeScreen(
        title: 'Recipe App',
      ),
      
    );
  }
}
