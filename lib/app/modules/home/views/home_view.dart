import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/home_controller.dart';
import 'package:mackshnack/app/models/product/product.dart';
import 'package:mackshnack/app/models/productwidget/productwidget.dart';
import 'package:mackshnack/main.dart';
import 'package:mackshnack/app/services/cart_service.dart';

final CartService cartService = CartService();

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Map<String, List<Product>> productMap = Map();

    // products.forEach((product) {
    //   if (!productMap.containsKey(product.category)) {
    //     productMap[product.category] = [];
    //   }
    //   productMap[product.category].add(product);
    // });
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 250, 250, 250),
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: const Color.fromARGB(255, 40, 78, 53),
          title: Row(
            children: <Widget>[
              IconButton(
                icon: const Icon(
                  Icons.search_rounded,
                  size: 30,
                ),
                onPressed: () {
                  // Действие при нажатии на кнопку поиска
                },
              ),
              const SizedBox(
                width: 30,
              ),
              Image.asset(
                'assets/images/logo.png', // Путь к вашему изображению
                fit: BoxFit.contain,
                height: 60,
                width: 60,
              ),
              const SizedBox(
                  width: 8), // Расстояние между изображением и текстом
              const Text('вкусно - и точка',
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 16,
                  )),
            ],
          ),
        ),
        body: Stack(children: [
          Container(
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: 50,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      Expanded(
                        child: TextButton(
                          onPressed: () {
                            // Действие при выборе "Новинки"
                          },
                          child: const Text(
                            'Новинки',
                            style: TextStyle(
                                color: Color.fromARGB(255, 106, 106, 106)),
                          ),
                        ),
                      ),
                      Expanded(
                        child: TextButton(
                          onPressed: () {
                            // Действие при выборе "Популярное"
                          },
                          child: const Text(
                            'Популярное',
                            style: TextStyle(
                                color: Color.fromARGB(255, 106, 106, 106)),
                          ),
                        ),
                      ),
                      Expanded(
                        child: TextButton(
                          onPressed: () {
                            // Действие при выборе "Напитки"
                          },
                          child: const Text(
                            'Напитки',
                            style: TextStyle(
                                color: Color.fromARGB(255, 106, 106, 106)),
                          ),
                        ),
                      ),
                      Expanded(
                        child: TextButton(
                          onPressed: () {
                            // Действие при выборе "Супер Бокс"
                          },
                          child: const Text(
                            'Супер Бокс',
                            style: TextStyle(
                                color: Color.fromARGB(255, 106, 106, 106)),
                          ),
                        ),
                      ),
                      Expanded(
                        child: TextButton(
                          onPressed: () {
                            // Действие при выборе "Комбо Обед"
                          },
                          child: const Text(
                            'Комбо Обед',
                            style: TextStyle(
                                color: Color.fromARGB(255, 106, 106, 106)),
                          ),
                        ),
                      ),
                      Expanded(
                        child: TextButton(
                          onPressed: () {
                            // Действие при выборе "Бургеры и роллы"
                          },
                          child: const Text(
                            'Бургеры и роллы',
                            style: TextStyle(
                                color: Color.fromARGB(255, 106, 106, 106)),
                          ),
                        ),
                      ),
                      Expanded(
                        child: TextButton(
                          onPressed: () {
                            // Действие при выборе "Картофель, стартеры и салаты"
                          },
                          child: const Text(
                            'Картофель, стартеры и салаты',
                            style: TextStyle(
                                color: Color.fromARGB(255, 106, 106, 106)),
                          ),
                        ),
                      ),
                      Expanded(
                        child: TextButton(
                          onPressed: () {
                            // Действие при выборе "Завтрак"
                          },
                          child: const Text(
                            'Завтрак',
                            style: TextStyle(
                                color: Color.fromARGB(255, 106, 106, 106)),
                          ),
                        ),
                      ),
                      Expanded(
                        child: TextButton(
                          onPressed: () {
                            // Действие при выборе "Кидз Комбо"
                          },
                          child: const Text(
                            'Кидз Комбо',
                            style: TextStyle(
                                color: Color.fromARGB(255, 106, 106, 106)),
                          ),
                        ),
                      ),
                      Expanded(
                        child: TextButton(
                          onPressed: () {
                            // Действие при выборе "Десерты"
                          },
                          child: const Text(
                            'Десерты',
                            style: TextStyle(
                                color: Color.fromARGB(255, 106, 106, 106)),
                          ),
                        ),
                      ),
                      Expanded(
                        child: TextButton(
                          onPressed: () {
                            // Действие при выборе "Соусы и другое"
                          },
                          child: const Text(
                            'Соусы и другое',
                            style: TextStyle(
                                color: Color.fromARGB(255, 106, 106, 106)),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, // Устанавливаем количество ячеек в строке
                  mainAxisSpacing:
                      8, // Устанавливаем вертикальный отступ между ячейками
                  crossAxisSpacing:
                      8, // Устанавливаем горизонтальный отступ между ячейками
                ),
                itemCount: products.length,
                itemBuilder: (context, index) {
                  return Card(
                      elevation: 4, // добавляем тень для карточки
                      margin: EdgeInsets.all(2), // добавляем внешние отступы
                      child: Column(
                        children: [
                          Image.asset(
                            products[index].image,
                            width: 100,
                            height: 100,
                          ),
                          Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(children: [
                                Text(
                                  products[index].name,
                                  style: TextStyle(),
                                  textAlign: TextAlign.center,
                                ),
                                const SizedBox(height: 4),
                                Text(
                                  '${products[index].price.toString()} руб',
                                  style: TextStyle(),
                                  textAlign: TextAlign.center,
                                ),
                                Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      IconButton(
                                        icon: const Icon(
                                          Icons.add_box,
                                          color: Color.fromRGBO(245, 127, 23, 1),
                                        ),
                                        
                                        onPressed: () {
                                          cartService.addToCart(Product(
                                              name: '',
                                              image: '',
                                              price: 0,
                                              category: ''));
                                        },
                                      ),
                                    ])
                              ])),
                        ],
                      ));
                },
              ),
            ),
          ),
        ]));
  }
}
