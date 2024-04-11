import 'package:get/get.dart';

class HomeController extends GetxController {
  // Список категорий
  final List<String> categories = [
    'Новинки',
    'Популярное',
    'Напитки',
    'Супер Бокс',
    'Комбо Обед',
    'Бургеры и роллы',
    'Картофель, стартеры и салаты',
    'Завтрак',
    'Кидз Комбо',
    'Десерты',
    'Соусы и другое',
  ];

  // Выбранная категория
  RxString selectedCategory = RxString('');

  // Метод для обновления выбранной категории
  void setSelectedCategory(String category) {
    selectedCategory.value = category;
  }
}