import 'package:flutter/material.dart';
import './category_item.dart';
import './dummy_data.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'DeliMeals',
          style: Theme.of(context).textTheme.titleMedium,
        ),
      ),
      body: GridView(
        padding: const EdgeInsets.all(25),
        children: dummyCategories
            .map(
              (catData) => CategoryItem(
                id: catData.id,
                title: catData.title,
                color: catData.color,
              ),
            )
            .toList(),
        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 200,
          childAspectRatio: 3 / 2,
          crossAxisSpacing: 20,
          mainAxisSpacing: 10,
        ),
      ),
    );
  }
}
