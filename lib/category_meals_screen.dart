import 'package:flutter/material.dart';

class CategoryMealsScreen extends StatelessWidget {
  const CategoryMealsScreen({Key? key}) : super(key: key);

  // final String categoryId;
  // final String categoryTitle;

  // const CategoryMealsScreen({
  //   Key? key,
  //   required this.categoryId,
  //   required this.categoryTitle,
  // }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final routeArgs =
        ModalRoute.of(context)!.settings.arguments as Map<String, String>;
    final categoryTitle = routeArgs['title'];
    final categoryId = routeArgs['id'];
    return Scaffold(
      appBar: AppBar(
        title: Text(categoryTitle!),
      ),
      body: Container(
        padding: const EdgeInsets.all(15),
        child: Center(
          child: Text('$categoryId The Recipes of the Category'),
        ),
      ),
    );
  }
}
