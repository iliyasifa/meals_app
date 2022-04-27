import 'package:flutter/material.dart';

class CategoryMealsScreen extends StatelessWidget {
  const CategoryMealsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('The Recipes'),
      ),
      body: Container(
        padding: const EdgeInsets.all(15),
        child: const Center(
          child: Text('The Recipes of the Catagory'),
        ),
      ),
    );
  }
}
