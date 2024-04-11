import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/home_controller.dart';
import 'package:mackshnack/app/models/product/product.dart';
import 'package:mackshnack/app/models/productwidget/productwidget.dart';
import 'package:mackshnack/main.dart';

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
        body: 
        ListView.builder(
        itemCount: products.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading:Image.asset(products[index].image),
            title: Text(products[index].name),
            subtitle: Text('${products[index].price.toString()} руб'),
          );
        },
      ),
        // body: Column(
        //   children: <Widget>[
        //     SizedBox(
        //       height: 50,
        //       child: ListView(
        //         scrollDirection: Axis.horizontal,
        //         children: <Widget>[
        //           Expanded(
        //             child: TextButton(
        //               onPressed: () {
        //                 // Действие при выборе "Новинки"
        //               },
        //               child: const Text(
        //                 'Новинки',
        //                 style: TextStyle(
        //                     color: Color.fromARGB(255, 106, 106, 106)),
        //               ),
        //             ),
        //           ),
        //           Expanded(
        //             child: TextButton(
        //               onPressed: () {
        //                 // Действие при выборе "Популярное"
        //               },
        //               child: const Text(
        //                 'Популярное',
        //                 style: TextStyle(
        //                     color: Color.fromARGB(255, 106, 106, 106)),
        //               ),
        //             ),
        //           ),
        //           Expanded(
        //             child: TextButton(
        //               onPressed: () {
        //                 // Действие при выборе "Напитки"
        //               },
        //               child: const Text(
        //                 'Напитки',
        //                 style: TextStyle(
        //                     color: Color.fromARGB(255, 106, 106, 106)),
        //               ),
        //             ),
        //           ),
        //           Expanded(
        //             child: TextButton(
        //               onPressed: () {
        //                 // Действие при выборе "Супер Бокс"
        //               },
        //               child: const Text(
        //                 'Супер Бокс',
        //                 style: TextStyle(
        //                     color: Color.fromARGB(255, 106, 106, 106)),
        //               ),
        //             ),
        //           ),
        //           Expanded(
        //             child: TextButton(
        //               onPressed: () {
        //                 // Действие при выборе "Комбо Обед"
        //               },
        //               child: const Text(
        //                 'Комбо Обед',
        //                 style: TextStyle(
        //                     color: Color.fromARGB(255, 106, 106, 106)),
        //               ),
        //             ),
        //           ),
        //           Expanded(
        //             child: TextButton(
        //               onPressed: () {
        //                 // Действие при выборе "Бургеры и роллы"
        //               },
        //               child: const Text(
        //                 'Бургеры и роллы',
        //                 style: TextStyle(
        //                     color: Color.fromARGB(255, 106, 106, 106)),
        //               ),
        //             ),
        //           ),
        //           Expanded(
        //             child: TextButton(
        //               onPressed: () {
        //                 // Действие при выборе "Картофель, стартеры и салаты"
        //               },
        //               child: const Text(
        //                 'Картофель, стартеры и салаты',
        //                 style: TextStyle(
        //                     color: Color.fromARGB(255, 106, 106, 106)),
        //               ),
        //             ),
        //           ),
        //           Expanded(
        //             child: TextButton(
        //               onPressed: () {
        //                 // Действие при выборе "Завтрак"
        //               },
        //               child: const Text(
        //                 'Завтрак',
        //                 style: TextStyle(
        //                     color: Color.fromARGB(255, 106, 106, 106)),
        //               ),
        //             ),
        //           ),
        //           Expanded(
        //             child: TextButton(
        //               onPressed: () {
        //                 // Действие при выборе "Кидз Комбо"
        //               },
        //               child: const Text(
        //                 'Кидз Комбо',
        //                 style: TextStyle(
        //                     color: Color.fromARGB(255, 106, 106, 106)),
        //               ),
        //             ),
        //           ),
        //           Expanded(
        //             child: TextButton(
        //               onPressed: () {
        //                 // Действие при выборе "Десерты"
        //               },
        //               child: const Text(
        //                 'Десерты',
        //                 style: TextStyle(
        //                     color: Color.fromARGB(255, 106, 106, 106)),
        //               ),
        //             ),
        //           ),
        //           Expanded(
        //             child: TextButton(
        //               onPressed: () {
        //                 // Действие при выборе "Соусы и другое"
        //               },
        //               child: const Text(
        //                 'Соусы и другое',
        //                 style: TextStyle(
        //                     color: Color.fromARGB(255, 106, 106, 106)),
        //               ),
        //             ),
        //           ),
        //         ],
        //       ),
        //     ),
        //   ],
        // )
        );
  }
}
