import 'package:flutter/material.dart';
/*import 'package:meals/screens/tabs.dart';
import 'package:meals/widgets/main_drawer.dart';*/

enum Filter {
  glutenFree,
  lactoseFree,
  vegetarian,
  vegan,
}

class FiltersScreen extends StatefulWidget {
  const FiltersScreen({
    super.key,
    required this.currentFilters,
  });

  final Map<Filter, bool> currentFilters;
  @override
  State<FiltersScreen> createState() {
    return _FiltersScreenState();
  }
}

class _FiltersScreenState extends State<FiltersScreen> {
  var _glutenFreeFilterSet = false;
  var _lactoseFreeFilterSet = false;
  var _vegetarianFilterSet = false;
  var _veganFilterSet = false;

  // Do không dùng widget. ở bên ngoài phương thức nên phải viết hàm initState()
  // để tạo trạng thái bộ lọc
  @override
  void initState() {
    _glutenFreeFilterSet = widget.currentFilters[Filter.glutenFree]!;
    _lactoseFreeFilterSet = widget.currentFilters[Filter.lactoseFree]!;
    _vegetarianFilterSet = widget.currentFilters[Filter.vegetarian]!;
    _veganFilterSet = widget.currentFilters[Filter.vegan]!;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bộ lọc'),
      ),
      /*
      drawer: MainDrawer(
          // Dùng hàm ẩn danh tại lười viết lại
          onSelectScreen: (identifier) {
        Navigator.of(context).pop();
        if (identifier == 'meals') {
          // Thay thế page route hiện tại
          Navigator.of(context).pushReplacement(
            MaterialPageRoute(builder: (ctx) => const TabsScreen()),
          );
        }
      }),
      */
      body: WillPopScope(
        // Trả về giá trị khi đóng màn hình trong tương lai (vì k biết màn hình này mở đến bao giờ)
        onWillPop: () async {
          Navigator.of(context).pop(
              // Trả về giá trị nào đó
              {
                Filter.glutenFree: _glutenFreeFilterSet,
                Filter.lactoseFree: _lactoseFreeFilterSet,
                Filter.vegetarian: _vegetarianFilterSet,
                Filter.vegan: _veganFilterSet,
              });
          return false;
        },
        child: Column(
          children: [
            // SwitchListTile hiển thị chữ và 1 nút gạt
            SwitchListTile(
              value: _glutenFreeFilterSet,
              onChanged: (isChecked) {
                // isChecked trả về trạng thái của switch mỗi khi nó được nhấn
                setState(() {
                  _glutenFreeFilterSet = isChecked;
                });
              },
              title: Text(
                'Không chứa Gluten',
                style: Theme.of(context).textTheme.titleLarge!.copyWith(
                      color: Theme.of(context).colorScheme.onBackground,
                    ),
              ),
              subtitle: Text(
                'Chỉ chọn các món ăn không chứa Gluten',
                style: Theme.of(context).textTheme.titleMedium!.copyWith(
                      color: Theme.of(context).colorScheme.onBackground,
                    ),
              ),
              activeColor: Theme.of(context).colorScheme.tertiary,
            ),
            SwitchListTile(
              value: _lactoseFreeFilterSet,
              onChanged: (isChecked) {
                // isChecked trả về trạng thái của switch mỗi khi nó được nhấn
                setState(() {
                  _lactoseFreeFilterSet = isChecked;
                });
              },
              title: Text(
                'Không chứa Lactose',
                style: Theme.of(context).textTheme.titleLarge!.copyWith(
                      color: Theme.of(context).colorScheme.onBackground,
                    ),
              ),
              subtitle: Text(
                'Chỉ chọn món các ăn không chứa Lactose',
                style: Theme.of(context).textTheme.titleMedium!.copyWith(
                      color: Theme.of(context).colorScheme.onBackground,
                    ),
              ),
              activeColor: Theme.of(context).colorScheme.tertiary,
            ),
            SwitchListTile(
              value: _vegetarianFilterSet,
              onChanged: (isChecked) {
                // isChecked trả về trạng thái của switch mỗi khi nó được nhấn
                setState(() {
                  _vegetarianFilterSet = isChecked;
                });
              },
              title: Text(
                'Chỉ món chay',
                style: Theme.of(context).textTheme.titleLarge!.copyWith(
                      color: Theme.of(context).colorScheme.onBackground,
                    ),
              ),
              subtitle: Text(
                'Chỉ chọn các món chay',
                style: Theme.of(context).textTheme.titleMedium!.copyWith(
                      color: Theme.of(context).colorScheme.onBackground,
                    ),
              ),
              activeColor: Theme.of(context).colorScheme.tertiary,
            ),
            SwitchListTile(
              value: _veganFilterSet,
              onChanged: (isChecked) {
                // isChecked trả về trạng thái của switch mỗi khi nó được nhấn
                setState(() {
                  _veganFilterSet = isChecked;
                });
              },
              title: Text(
                'Chỉ món thuần chay',
                style: Theme.of(context).textTheme.titleLarge!.copyWith(
                      color: Theme.of(context).colorScheme.onBackground,
                    ),
              ),
              subtitle: Text(
                'Chỉ chọn các món thuần chay',
                style: Theme.of(context).textTheme.titleMedium!.copyWith(
                      color: Theme.of(context).colorScheme.onBackground,
                    ),
              ),
              activeColor: Theme.of(context).colorScheme.tertiary,
            ),
          ],
        ),
      ),
    );
  }
}
