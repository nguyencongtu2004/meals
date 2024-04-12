import 'package:flutter/material.dart';

import 'package:meals/models/category.dart';
import 'package:meals/models/meal.dart';

// Constants in Dart should be written in lowerCamelcase.
const availableCategories = [
  Category(
    id: 'c1', // không dịch
    title: 'Ý',
    color: Colors.purple,
  ),
  Category(
    id: 'c2', // không dịch
    title: 'Nhanh & Dễ',
    color: Colors.red,
  ),
  Category(
    id: 'c3', // không dịch
    title: 'Món Hamburger',
    color: Colors.orange,
  ),
  Category(
    id: 'c4', // không dịch
    title: 'Đức',
    color: Colors.amber,
  ),
  Category(
    id: 'c5', // không dịch
    title: 'Nhẹ Nhàng & Tuyệt Vời',
    color: Colors.blue,
  ),
  Category(
    id: 'c6', // không dịch
    title: 'Món Lạ',
    color: Colors.green,
  ),
  Category(
    id: 'c7', // không dịch
    title: 'Bữa Sáng',
    color: Colors.lightBlue,
  ),
  Category(
    id: 'c8', // không dịch
    title: 'Châu Á',
    color: Colors.lightGreen,
  ),
  Category(
    id: 'c9', // không dịch
    title: 'Pháp',
    color: Colors.pink,
  ),
  Category(
    id: 'c10', // không dịch
    title: 'Mùa Hè',
    color: Colors.teal,
  ),
];

const dummyMeals = [
  Meal(
    id: 'm1', // không dịch
    categories: [ // không dịch
      'c1',
      'c2',
    ],
    title: 'Mì Spaghetti với Nước Sốt Cà Chua',
    affordability: Affordability.affordable,
    complexity: Complexity.simple,
    imageUrl: // không dịch
    'https://upload.wikimedia.org/wikipedia/commons/thumb/2/20/Spaghetti_Bolognese_mit_Parmesan_oder_Grana_Padano.jpg/800px-Spaghetti_Bolognese_mit_Parmesan_oder_Grana_Padano.jpg',
    duration: 20,
    ingredients: [
      '4 Quả Cà Chua',
      '1 Muỗng Canh Dầu Ô liu',
      '1 Củ Hành Tây',
      '250g Mì Spaghetti',
      'Gia vị',
      'Phô Mai (tùy chọn)'
    ],
    steps: [
      'Cắt cà chua và hành tây thành từng miếng nhỏ.',
      'Đun sôi nước - thêm muối vào khi nước sôi.',
      'Cho mì spaghetti vào nước sôi - mì sẽ chín sau khoảng 10 đến 12 phút.',
      'Trong lúc đó, đun nóng một ít dầu ô liu và thêm hành tây cắt nhỏ.',
      'Sau 2 phút, thêm miếng cà chua, muối, tiêu và các loại gia vị khác của bạn.',
      'Nước sốt sẽ chín khi mì chín.',
      'Tùy ý thêm một ít phô mai lên trên món ăn khi hoàn thành.'
    ],
    isGlutenFree: false,
    isVegan: true,
    isVegetarian: true,
    isLactoseFree: true,
  ),
  Meal(
    id: 'm2', // không dịch
    categories: [ // không dịch
      'c2',
    ],
    title: 'Bánh Mì Nướng Kiểu Hawaii',
    affordability: Affordability.affordable,
    complexity: Complexity.simple,
    imageUrl: // không dịch
    'https://cdn.pixabay.com/photo/2018/07/11/21/51/toast-3532016_1280.jpg',
    duration: 10,
    ingredients: [
      '1 Lát Bánh Mì Trắng',
      '1 Lát Thịt Hun Khói',
      '1 Lát Dứa',
      '1-2 Lát Phô Mai',
      'Bơ'
    ],
    steps: [
      'Bôi bơ lên một mặt của bánh mì trắng',
      'Xếp thịt hun khói, dứa và phô mai lên bánh mì trắng',
      'Nướng bánh mì trong khoảng 10 phút ở nhiệt độ 200°C'
    ],
    isGlutenFree: false,
    isVegan: false,
    isVegetarian: false,
    isLactoseFree: false,
  ),
  Meal(
    id: 'm3', // không dịch
    categories: [ // không dịch
      'c2',
      'c3',
    ],
    title: 'Hamburger Kiểu Điển Hình',
    affordability: Affordability.pricey,
    complexity: Complexity.simple,
    imageUrl: // không dịch
    'https://cdn.pixabay.com/photo/2014/10/23/18/05/burger-500054_1280.jpg',
    duration: 45,
    ingredients: [
      '300g Thịt Bò Xay',
      '1 Quả Cà Chua',
      '1 Quả Dưa Chuột',
      '1 Củ Hành Tây',
      'Tương Cà',
      '2 Ổ Bánh Hamburger'
    ],
    steps: [
      'Tạo hình 2 miếng thịt',
      'Chiên các miếng thịt trong khoảng 4 phút mỗi mặt',
      'Nướng nhanh các ổ bánh trong khoảng 1 phút mỗi mặt',
      'Phết tương cà lên các ổ bánh',
      'Phục vụ hamburger với cà chua, dưa chuột và hành tây'
    ],
    isGlutenFree: false,
    isVegan: false,
    isVegetarian: false,
    isLactoseFree: true,
  ),
  Meal(
    id: 'm4', // không dịch
    categories: [ // không dịch
      'c4',
    ],
    title: 'Miếng Bít Tết Kiểu Áo',
    affordability: Affordability.luxurious,
    complexity: Complexity.challenging,
    imageUrl: // không dịch
    'https://cdn.pixabay.com/photo/2018/03/31/19/29/schnitzel-3279045_1280.jpg',
    duration: 60,
    ingredients: [
      '8 Miếng Thịt Bò Mọng',
      '4 Quả Trứng',
      '200g Bột Mì Chiên',
      '100g Bột Mì',
      '300ml Bơ',
      '100g Dầu Thực Vật',
      'Muối',
      'Lát Chanh'
    ],
    steps: [
      'Làm mềm thịt bò mọng đến khoảng 2-4mm, và rắc muối lên cả hai mặt.',
      'Trên một đĩa phẳng, khuấy đều trứng với một chiếc dĩa.',
      'Nhẹ nhàng bọc miếng thịt với bột mì, sau đó nhúng vào trứng, và cuối cùng là bột mì chiên.',
      'Đun nóng bơ và dầu trong một chiếc chảo lớn (để dầu mỡ được rất nóng) và chiên miếng bít tết đến khi vàng giòn ở cả hai mặt.',
      'Đảm bảo lắc chảo thường xuyên để miếng bít tết được ngập trong dầu mỡ và vỏ giòn được phồng xốp.',
      'Lấy ra, để ráo dầu trên giấy bếp. Chiên lại lá ngò với dầu còn lại và để ráo dầu.',
      'Đặt miếng bít tết lên đĩa ấm và phục vụ, trang trí với lá ngò và lát chanh.'
    ],
    isGlutenFree: false,
    isVegan: false,
    isVegetarian: false,
    isLactoseFree: false,
  ),
  Meal(
    id: 'm5', // không dịch
    categories: [ // không dịch
      'c2'
          'c5',
      'c10',
    ],
    title: 'Salad với Cá Hồi Hun Khói',
    affordability: Affordability.luxurious,
    complexity: Complexity.simple,
    imageUrl: // không dịch
    'https://cdn.pixabay.com/photo/2016/10/25/13/29/smoked-salmon-salad-1768890_1280.jpg',
    duration: 15,
    ingredients: [
      'Rau Diếp',
      'Xà Lách Cừu',
      'Rau Mùi Tây',
      'Rau Hẹ',
      '200g Cá Hồi Hun Khói',
      'Mustard',
      'Giấm Balsamic',
      'Dầu Ô liu',
      'Muối và Tiêu'
    ],
    steps: [
      'Rửa và cắt rau và rau thơm',
      'Cắt nhỏ cá hồi hun khói',
      'Trộn mustard, giấm và dầu ô liu thành nước sốt',
      'Chuẩn bị salad',
      'Thêm miếng cá hồi và nước sốt'
    ],
    isGlutenFree: true,
    isVegan: false,
    isVegetarian: true,
    isLactoseFree: true,
  ),

  Meal(
    id: 'm6', // không dịch
    categories: [ // không dịch
      'c6',
      'c10',
    ],
    title: 'Mousse Cam Ngon Tuyệt',
    affordability: Affordability.affordable,
    complexity: Complexity.hard,
    imageUrl: // không dịch
    'https://cdn.pixabay.com/photo/2017/05/01/05/18/pastry-2274750_1280.jpg',
    duration: 240,
    ingredients: [
      '4 Tấm Gelatin',
      '150ml Nước Cam',
      '80g Đường',
      '300g Sữa Chua',
      '200g Kem Tươi',
      'Vỏ Cam',
    ],
    steps: [
      'Hòa tan gelatin trong nồi',
      'Thêm nước cam và đường',
      'Tắt bếp',
      'Thêm 2 muỗng sữa chua',
      'Trộn gelatin với phần sữa chua còn lại',
      'Làm nguội tất cả trong tủ lạnh',
      'Đánh bông kem tươi và trộn vào hỗn hợp cam',
      'Làm lạnh trong ít nhất 4 giờ',
      'Phục vụ với vỏ cam',
    ],
    isGlutenFree: true,
    isVegan: false,
    isVegetarian: true,
    isLactoseFree: false,
  ),
  Meal(
    id: 'm7', // không dịch
    categories: [ // không dịch
      'c7',
    ],
    title: 'Bánh Pancake',
    affordability: Affordability.affordable,
    complexity: Complexity.simple,
    imageUrl: // không dịch
    'https://cdn.pixabay.com/photo/2018/07/10/21/23/pancake-3529653_1280.jpg',
    duration: 20,
    ingredients: [
      '1 1/2 Cốc Bột Mì Đa Dụng',
      '3 1/2 Muỗng Cà Phê Bột Nở',
      '1 Muỗng Cà Phê Muối',
      '1 Muỗng Canh Đường Trắng',
      '1 1/4 cốc Sữa Tươi',
      '1 Quả Trứng',
      '3 Muỗng Canh Bơ, đun chảy',
    ],
    steps: [
      'Trong một cái bát lớn, rây bột mì, bột nở, muối và đường.',
      'Làm một hõm ở giữa và đổ sữa, trứng và bơ đun chảy; trộn đều.',
      'Đun nóng một chiếc chảo nhỏ hoặc chảo rán bằng dầu ở lửa vừa.',
      'Đổ hoặc múc bột ra chảo, dùng khoảng 1/4 cốc cho mỗi bánh pancake. Nướng vàng hai mặt và phục vụ nóng.'
    ],
    isGlutenFree: true,
    isVegan: false,
    isVegetarian: true,
    isLactoseFree: false,
  ),
  Meal(
    id: 'm8', // không dịch
    categories: [ // không dịch
      'c8',
    ],
    title: 'Cà Ri Gà Ấn Độ Béo Ngậy',
    affordability: Affordability.pricey,
    complexity: Complexity.challenging,
    imageUrl: // không dịch
    'https://cdn.pixabay.com/photo/2018/06/18/16/05/indian-food-3482749_1280.jpg',
    duration: 35,
    ingredients: [
      '4 Quả Ức Gà',
      '1 Củ Hành Tây',
      '2 Tép Tỏi',
      '1 Miếng Gừng',
      '4 Muỗng Canh Hạnh Nhân',
      '1 Muỗng Cà Phê Ớt Cay',
      '500ml Nước Cốt Dừa',
    ],
    steps: [
      'Cắt lát và chiên ức gà',
      'Xay nhuyễn hành tây, tỏi và gừng thành hỗn hợp bột và xào qua',
      'Thêm gia vị và xào thơm',
      'Thêm ức gà + 250ml nước và đun khoảng 10 phút',
      'Thêm nước cốt dừa',
      'Phục vụ với cơm'
    ],
    isGlutenFree: true,
    isVegan: false,
    isVegetarian: false,
    isLactoseFree: true,
  ),
  Meal(
    id: 'm9', // không dịch
    categories: [ // không dịch
      'c9',
    ],
    title: 'Súp Lê Socola',
    affordability: Affordability.affordable,
    complexity: Complexity.hard,
    imageUrl: // không dịch
    'https://cdn.pixabay.com/photo/2014/08/07/21/07/souffle-412785_1280.jpg',
    duration: 45,
    ingredients: [
      '1 Muỗng Cà Phê Bơ Tan Chảy',
      '2 Muỗng Canh Đường Trắng',
      '2 Muỗng Canh Socola Đen 70% Cacao, Cắt Nhỏ',
      '1 Muỗng Canh Bơ',
      '1 Muỗng Canh Bột Mì Đa Dụng',
      '4 1/3 muỗng canh Sữa Tươi Lạnh',
      '1 Nhúm Muối',
      '1 Nhúm Ớt Cay',
      '1 Quả Lòng Đỏ Trứng',
      '2 Quả Lòng Trắng Trứng',
      '1 Nhúm Cream of Tartar',
      '1 Muỗng Canh Đường Trắng',
    ],
    steps: [
      'Làm nóng lò ở 190°C. Lót một khay nướng bằng giấy nướng.',
      'Quét đáy và thành của 2 cái ramekin với 1 muỗng cà phê bơ đun chảy; phủ đáy và thành lên tới miệng.',
      'Thêm 1 muỗng canh đường trắng vào ramekin. Xoay ramekin cho đường phủ đều mọi mặt.',
      'Cho miếng socola vào một cái bát kim loại.',
      'Đặt bát lên trên một chiếc nồi có khoảng 3 cốc nước nóng ở lửa nhỏ.',
      'Đun chảy 1 muỗng canh bơ trong một chiếc chảo ở lửa vừa. Rắc bột mì. Khuấy đều cho bột tan vào bơ và hỗn hợp sệt lại.',
      'Khuấy sữa tươi lạnh vào hỗn hợp cho đến khi trở nên mịn và sệt lại. Chuyển hỗn hợp vào bát có socola đã tan chảy.',
      'Thêm muối và ớt cay. Trộn đều. Thêm lòng đỏ trứng và trộn đều.',
      'Đặt bát trên nồi có nước nóng (không đun sôi) để giữ cho socola ấm trong khi đánh lòng trắng trứng.',
      'Cho 2 lòng trắng trứng vào một cái bát đánh trứng; thêm cream of tartar. Đánh lòng trắng cho đến khi hỗn hợp bắt đầu đặc lại và một giọt nước rơi từ dụng cụ đánh trứng vẫn nổi trên bề mặt khoảng 1 giây trước khi ngấm vào hỗn hợp.',
      'Thêm 1/3 đường và đánh đều vào. Đánh thêm một ít đường sau khoảng 15 giây.',
      'Đánh phần đường còn lại vào. Tiếp tục đánh cho đến khi hỗn hợp đạt đặc như kem cạo và giữ được bọt mềm, khoảng 3 đến 5 phút.',
      'Chuyển một ít ít hơn một nửa lòng trắng trứng vào socola.',
      'Trộn đều cho lòng trắng trứng tan hoàn toàn vào socola.',
      'Thêm phần lòng trắng trứng còn lại; nhẹ nhàng trộn đều vào socola bằng một chiếc đũa, nhấc từ dưới và gấp lên trên.',
      'Ngừng trộn khi không còn thấy lòng trắng trứng. Chia hỗn hợp vào 2 ramekin đã chuẩn bị.',
      'Đặt ramekin lên khay nướng đã chuẩn bị.',
      'Nướng trong lò nóng cho đến khi súp lê phồng lên và vượt qua miệng ramekin, khoảng 12 đến 15 phút.',
    ],
    isGlutenFree: true,
    isVegan: false,
    isVegetarian: true,
    isLactoseFree: false,
  ),
  Meal(
    id: 'm10', // không dịch
    categories: [ // không dịch
      'c2',
      'c5',
      'c10',
    ],
    title: 'Salad Măng Tây với Cà Chua Bi',
    affordability: Affordability.luxurious,
    complexity: Complexity.simple,
    imageUrl: // không dịch
    'https://cdn.pixabay.com/photo/2018/04/09/18/26/asparagus-3304997_1280.jpg',
    duration: 30,
    ingredients: [
      'Măng Tây Trắng và Xanh',
      '30g Hạnh Nhân',
      '300g Cà Chua Bi',
      'Rau Xà Lách',
      'Muối, Tiêu và Dầu Ô liu'
    ],
    steps: [
      'Rửa, gọt vỏ và cắt măng tây',
      'Luộc trong nước muối',
      'Muối và tiêu cho măng tây',
      'Rang hạnh nhân',
      'Cắt đôi cà chua bi',
      'Trộn với măng tây, rau xà lách và nước sốt',
      'Phục vụ với Bánh Mì Baguette'
    ],
    isGlutenFree: true,
    isVegan: true,
    isVegetarian: true,
    isLactoseFree: true,
  ),
  ////////////////////////////////////////////////////
  ////////////////////////////////////////////////////
  ////////////////////////////////////////////////////

];