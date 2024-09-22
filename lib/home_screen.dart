import 'package:flutter/material.dart';
import 'details_screen.dart';

class HomeScreen extends StatelessWidget {
  final List<Map<String, String>> recipes = [
    {
      'name': 'Spaghetti Carbonara',
      'ingredients': 'Pasta, Eggs, Parmesan Cheese, Bacon, Pepper',
      'instructions': '1. Boil pasta. 2. Cook bacon. 3. Mix eggs with cheese. 4. Combine all ingredients.'
    },
    {
      'name': 'Chicken Curry',
      'ingredients': 'Chicken, Curry Powder, Coconut Milk, Onion, Garlic, Ginger',
      'instructions': '1. Saute onion, garlic, and ginger. 2. Add chicken and cook. 3. Add curry powder and coconut milk.'
    },
    // Add more recipes as needed
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Recipe Book'),
      ),
      body: ListView.builder(
        itemCount: recipes.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(recipes[index]['name']!),
            onTap: () {
              // Navigate to the DetailsScreen and pass the recipe data
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailsScreen(
                    recipeName: recipes[index]['name']!,
                    ingredients: recipes[index]['ingredients']!,
                    instructions: recipes[index]['instructions']!,
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
