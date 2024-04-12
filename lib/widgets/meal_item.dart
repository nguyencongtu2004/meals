import 'package:flutter/material.dart';
import 'package:meals/models/meal.dart';
import 'package:meals/widgets/meal_iten_trait.dart';
import 'package:transparent_image/transparent_image.dart';

class MealItem extends StatelessWidget {
  const MealItem({
    super.key,
    required this.meal,
    required this.onSelectMeal,
  });

  final Meal meal;
  final void Function(Meal meal) onSelectMeal;

  // Viết 1 getter trả về chuỗi viết hoa chữ đầu của độ khó khi nấu
  String get complexityText {
    return meal.complexity.name[0].toUpperCase() + meal.complexity.name.substring(1);
}

// Viết 1 getter trả về chuỗi viết hoa chữ đầu của giá tiền
  String get affordabilityText {
    return meal.affordability.name[0].toUpperCase() + meal.affordability.name.substring(1);
  }


  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(8),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      clipBehavior: Clip.hardEdge,
      // Bỏ hết những phần nằm ngoài phần bo góc
      elevation: 10,
      child: InkWell(
        onTap: () {
          onSelectMeal(meal);
        },
        // Hiển thị các Widget chồng lên nhau
        child: Stack(
          children: [
            // Tạo ra 1 hình ảnh thế chỗ trong khi load 1 ảnh khác
            FadeInImage(
              // Hiển thị giữ chỗ trong suốt
              placeholder: MemoryImage(kTransparentImage),
              image: NetworkImage(meal.imageUrl),
              fit: BoxFit.cover,
              // Đặt chiều cao và rộng cho ảnh
              height: 200,
              width: double.infinity,
            ),
            // Positioned đặt vị trí child của nó trong Stack
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                color: Colors.black54,
                padding:
                    const EdgeInsets.symmetric(vertical: 6, horizontal: 10),
                child: Column(
                  children: [
                    Text(
                      meal.title,
                      textAlign: TextAlign.center,
                      maxLines: 2,
                      softWrap: true,
                      overflow: TextOverflow.ellipsis,
                      // dấu ...
                      style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(height: 12),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        // Tạo hẳn 1 Widget mới để không cần bọc nó với Expand()
                        MealItemTrait(
                          icon: Icons.schedule,
                          label: '${meal.duration} phút',
                        ),
                        const SizedBox(width: 12),
                        MealItemTrait(
                          icon: Icons.work,
                          label: complexityToVietnamese[complexityText]!,
                        ),
                        const SizedBox(width: 12),
                        MealItemTrait(
                          icon: Icons.attach_money,
                          label: affordabilityToVietnamese[affordabilityText]!,
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
