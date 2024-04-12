import 'package:flutter/material.dart';
import 'package:meals/models/meal.dart';
import 'package:meals/screens/meal_details.dart';
import 'package:meals/widgets/meal_item.dart';

class MealsScreen extends StatelessWidget {
  const MealsScreen({
    super.key,
    this.title,
    required this.meals,
    required this.onToggleFavorite,
  });

  final String? title;
  final List<Meal> meals;
  final void Function(Meal meal) onToggleFavorite;

  void _selectMeal(BuildContext context, Meal meal) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (ctx) => MealDetailScreen(
          meal: meal,
          onToggleFavorite: onToggleFavorite,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    // Mặc định là món ăn trống
    Widget content = Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            'Uh oh...\nKhông có gìở đây cả!',
            textAlign: TextAlign.center,
            style: Theme.of(context)
                .textTheme
                .headlineLarge
                ?.copyWith(color: Theme.of(context).colorScheme.onBackground),
          ),
          const SizedBox(height: 16),
          Text(
            'Hãy thử chọn danh mục khác!',
            style: Theme.of(context)
                .textTheme
                .bodyLarge
                ?.copyWith(color: Theme.of(context).colorScheme.onBackground),
          )
        ],
      ),
    );

    // Trường hợp món ăn không rỗng
    if (meals.isNotEmpty) {
      content = ListView.builder(
          itemCount: meals.length,
          itemBuilder: (ctx, index) => MealItem(
                meal: meals[index],
                // Adu chỗ này ảo!!!!!!!
                onSelectMeal: (meal) {
                  _selectMeal(context, meal);
                },
              ));
    }

    // Vì Widget này được dùng cho 2 mục đích:
    // 1. Hiển thị các món ăn của danh mục (cần AppBar để điều hướng)
    // 2. Hiển thị các món yêu thích của người dùng (không hiện AppBar do được chứa trong 1 Scaffold)
    // nên sẽ trả về content có chứa AppBar hay không tùy thuộc vào có title hay không
    return (title == null)
        ? content
        : Scaffold(
            appBar: AppBar(
              title: Text(title!),
            ),
            body: content,
          );
  }
}
