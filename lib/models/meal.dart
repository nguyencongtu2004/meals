enum Complexity {
  simple,
  challenging,
  hard,
}

enum Affordability {
  affordable,
  pricey,
  luxurious,
}

// Mình tự thêm
const complexityToVietnamese = {
  'Simple': 'Dễ nấu',
  'Challenging': 'Vừa phải',
  'Hard': 'Khó nấu',
};

// Mình tự thêm
const affordabilityToVietnamese = {
  'Affordable': 'Rẻ',
  'Pricey': 'Vừa phải',
  'Luxurious': 'Xa xỉ',
};

class Meal {
  const Meal({
    required this.id,
    required this.categories,
    required this.title,
    required this.imageUrl,
    required this.ingredients,
    required this.steps,
    required this.duration,
    required this.complexity,
    required this.affordability,
    required this.isGlutenFree,
    required this.isLactoseFree,
    required this.isVegan,
    required this.isVegetarian,
  });

  final String id;
  final List<String> categories;
  final String title;
  final String imageUrl;
  final List<String> ingredients;
  final List<String> steps;
  final int duration;
  final Complexity complexity;
  final Affordability affordability;
  final bool isGlutenFree;
  final bool isLactoseFree;
  final bool isVegan;
  final bool isVegetarian;
}


