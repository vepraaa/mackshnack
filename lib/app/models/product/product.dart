import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'product.freezed.dart';
part 'product.g.dart';

@freezed
abstract class Product with _$Product {
  factory Product({
    required String name,
    required double price,
    required String image,
    required String category,

    
  }) = _Product;

  factory Product.fromJson(Map<String, dynamic> json) => _$ProductFromJson(json);
}

List<Product> products = [
    Product(
        name: 'Молочный Коктейль Папайя-манго',
        price: 139,
        image: 'assets/images/papayamango.png',
        category: 'Drinks'),
    Product(
        name: 'Добрый Кола',
        price: 95,
        image: 'assets/images/cola.png',
        category: 'Drinks'),
    Product(
        name: 'Добрый Апельсин',
        price: 95,
        image: 'assets/images/apelsin.png',
        category: 'Drinks'),
    Product(
        name: 'Добрый Лимон-Лайм',
        price: 95,
        image: 'assets/images/limonlaim.png',
        category: 'Drinks'),
    Product(
        name: 'Добрый Кола без сахара',
        price: 95,
        image: 'assets/images/bezsahara.png',
        category: 'Drinks'),
    Product(
        name: 'Молочный Коктейль Клубничный',
        price: 99,
        image: 'assets/images/klubnika.png',
        category: 'Drinks'),
    Product(
        name: 'Молочный Коктейль Ванильный',
        price: 99,
        image: 'assets/images/vanil.png',
        category: 'Drinks'),
    Product(
        name: 'Артезианская Вода Черноголовка негазированная',
        price: 99,
        image: 'assets/images/voda.png',
        category: 'Drinks'),
    Product(
        name: 'Липтон Зеленый',
        price: 95,
        image: 'assets/images/zeleniy.png',
        category: 'Drinks'),
    Product(
        name: 'Липтон Лимон',
        price: 95,
        image: 'assets/images/limon.png',
        category: 'Drinks'),
    Product(
        name: 'Капучино',
        price: 79,
        image: 'assets/images/capuchino.png',
        category: 'Drinks'),
    Product(
        name: 'Латте',
        price: 119,
        image: 'assets/images/latte.png',
        category: 'Drinks'),
    Product(
        name: 'Американо',
        price: 75,
        image: 'assets/images/americano.png',
        category: 'Drinks'),
    Product(
        name: 'Чай Черный Эрл Грей',
        price: 65,
        image: 'assets/images/erlgrei.png',
        category: 'Drinks'),
    Product(
        name: 'Чай черный',
        price: 65,
        image: 'assets/images/cherni.png',
        category: 'Drinks'),
    Product(
        name: 'Чай зеленый',
        price: 65,
        image: 'assets/images/chaizelen.png',
        category: 'Drinks'),
    Product(
        name: 'Супер Бокс Для Компании',
        price: 553,
        image: 'assets/images/bigbox.png',
        category: 'Box'),
    Product(
        name: 'Супер Бокс Для Тебя',
        price: 284,
        image: 'assets/images/boxforyou.png',
        category: 'Box'),
    Product(
        name: 'Гранд Пикант Комбо',
        price: 353,
        image: 'assets/images/kombograndpikant.png',
        category: 'Kombo'),
    Product(
        name: 'Биг Спешиал Барбекю Бекон Комбо',
        price: 469,
        image: 'assets/images/kombobigspeshialbarbeq.png',
        category: 'Kombo'),
    Product(
        name: 'Биг Чикен Бургер Грибной Комбо',
        price: 421,
        image: 'assets/images/kombobigchickengrib.png',
        category: 'Kombo'),
    Product(
        name: 'Биг Чикен Бургер Комбо',
        price: 404,
        image: 'assets/images/kombobigchicken.png',
        category: 'Kombo'),
    Product(
        name: 'Биг Хит Комбо',
        price: 304,
        image: 'assets/images/kombobighit.png',
        category: 'Kombo'),
    Product(
        name: 'Двойной Биг Хит Комбо',
        price: 388,
        image: 'assets/images/kombodoublebighit.png',
        category: 'Kombo'),
    Product(
        name: 'Биг Спешиал Джуниор Комбо',
        price: 377,
        image: 'assets/images/kombobigspeshialdjun.png',
        category: 'Kombo'),
    Product(
        name: 'Шримп Ролл Комбо',
        price: 404,
        image: 'assets/images/komboshrimproll.png',
        category: 'Kombo'),
    Product(
        name: 'Биг Спешиал Ролл Комбо',
        price: 355,
        image: 'assets/images/kombobigspeshialroll.png',
        category: 'Kombo'),
    Product(
        name: 'Цезарь Ролл Комбо',
        price: 325,
        image: 'assets/images/kombocesarroll.png',
        category: 'Kombo'),
    Product(
        name: 'Гранд Де Люкс Комбо',
        price: 349,
        image: 'assets/images/kombogranddelux.png',
        category: 'Kombo'),
    Product(
        name: 'Гранд Комбо',
        price: 330,
        image: 'assets/images/kombogrand.png',
        category: 'Kombo'),
    Product(
        name: 'Чикен Премьер Комбо',
        price: 271,
        image: 'assets/images/kombochickenpremier.png',
        category: 'Kombo'),
    Product(
        name: 'Фиш Бургер Комбо',
        price: 329,
        image: 'assets/images/kombofish.png',
        category: 'Kombo'),
  ];

  List<Product> getCategoryProducts(List<Product> products, String category) {
    return products.where((product) => product.category == category).toList();
  }
