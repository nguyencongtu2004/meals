import 'package:flutter/material.dart';
import 'package:meals/models/meal.dart';

class MealDetailScreen extends StatelessWidget {
  const MealDetailScreen({
    super.key,
    required this.meal,
    required this.onToggleFavorite,
  });

  final Meal meal;
  final void Function(Meal meal) onToggleFavorite;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(meal.title),
        actions: [
          IconButton(
            onPressed: () {
              onToggleFavorite(meal);
            },
            icon: const Icon(Icons.star),
          )
        ],
      ),
      // ListView giống hệt Column, chỉ có điều nó cuộn được
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        children: [
          Image.network(
            meal.imageUrl,
            fit: BoxFit.cover,
            height: 300,
            width: double.infinity,
          ),
          const SizedBox(height: 25),
          Text(
            'Nguyên liệu:',
            style: Theme.of(context).textTheme.titleLarge?.copyWith(
                  color: Theme.of(context).colorScheme.primary,
                  fontWeight: FontWeight.bold,
                ),
          ),
          const SizedBox(height: 10),
          for (final ingredient in meal.ingredients)
            Text(
              ' - $ingredient',
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    color: Theme.of(context).colorScheme.onBackground,
                  ),
            ),
          const SizedBox(height: 25),
          Text(
            'Cách làm:',
            style: Theme.of(context).textTheme.titleLarge?.copyWith(
                  color: Theme.of(context).colorScheme.primary,
                  fontWeight: FontWeight.bold,
                ),
          ),
          const SizedBox(height: 10),
          for (final step in meal.steps)
            Text(
              ' - $step',
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    color: Theme.of(context).colorScheme.onBackground,
                  ),
            ),
          const SizedBox(height: 300),
        ],
      ),
    );
  }
}
