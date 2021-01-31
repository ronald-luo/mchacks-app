import 'package:flutter/material.dart';
import 'package:mchacks_app/widgets/roadmap_item.dart';
import '../dummy_data.dart';
import '../widgets/roadmap_item.dart';

class CategoryRoadmapsScreen extends StatelessWidget {
  static const routeName = '/category-roadmaps';
  // final String categoryId;
  // final String categoryTitle;
  // CategoryRoadmapsScreen(this.categoryId, this.categoryTitle);

  @override
  Widget build(BuildContext context) {
    final routeArgs =
        ModalRoute.of(context).settings.arguments as Map<String, String>;
    final categoryTitle = routeArgs['title'];
    final categoryId = routeArgs['id'];
    final categoryRoadmaps = DUMMY_MEALS.where((test) {
      return test.categories.contains(categoryId);
    }).toList();

    return Scaffold(
      appBar: AppBar(
        title: Text(categoryTitle),
      ),
      body: ListView.builder(
        itemBuilder: (ctx, index) {
          return MealItem(
            id: categoryRoadmaps[index].id,
            title: categoryRoadmaps[index].title,
            imageUrl: categoryRoadmaps[index].imageUrl,
            duration: categoryRoadmaps[index].duration,
            affordability: categoryRoadmaps[index].affordability,
            complexity: categoryRoadmaps[index].complexity,
          );
        },
        itemCount: categoryRoadmaps.length,
      ),
    );
  }
}
