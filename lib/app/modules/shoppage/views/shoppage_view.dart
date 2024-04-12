// ignore_for_file: prefer_const_constructors, deprecated_member_use, sort_child_properties_last

import 'package:flutter/material.dart';

import 'package:mackshnack/app/models/product/product.dart';
import 'package:mackshnack/app/modules/home/controllers/home_controller.dart';
import 'package:mackshnack/app/modules/shopbox/controllers/shopbox_controller.dart';
import 'package:mackshnack/app/modules/shopbox/views/shopbox_view.dart';


class ShopPage extends StatefulWidget {
  final HomeController homeController;
  final ShopBoxController shopBoxController;

  ShopPage({required this.homeController, required this.shopBoxController});

  @override
  _ShopPageState createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  String selectedCategory = 'All';

  List<Product> getFilteredProducts() {
    if (selectedCategory == 'All') {
      return widget.homeController.products;
    } else {
      return widget.homeController.products
          .where((product) => product.category == selectedCategory)
          .toList();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 250, 250, 250),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 40, 78, 53),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Spacer(),
            Image.asset(
              'assets/images/logo.png',
              fit: BoxFit.contain,
              height: 60,
              width: 60,
            ),
            const SizedBox(width: 8),
            const Text(
              'вкусно - и точка',
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 16,
              ),
            ),
            Spacer(),
            Spacer(),
            IconButton(
              icon: const Icon(
                Icons.shopping_bag_outlined,
              ),
              splashRadius: 1.0,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ShopBoxView(
                      cartService: widget.shopBoxController.cartService,
                      shopBoxController: widget.shopBoxController,
                    ),
                  ),
                );
              },
            )
          ],
        ),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 50,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        selectedCategory = 'All';
                      });
                    },
                    child: Text('Все',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w500)),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromARGB(255, 250, 250, 250),
                      primary: selectedCategory == 'All'
                          ? Color.fromARGB(255, 250, 250, 250)
                          : null,
                      onPrimary: selectedCategory == 'All'
                          ? Color.fromARGB(255, 40, 78, 53)
                          : Color.fromARGB(255, 106, 106, 106),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.zero,
                        side: BorderSide(
                          color: selectedCategory == 'All'
                              ? Color.fromARGB(255, 250, 250, 250)
                              : Colors.transparent,
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        selectedCategory = 'New';
                      });
                    },
                    child: Text(
                      'Новинки',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromARGB(255, 250, 250, 250),
                      primary: selectedCategory == 'New'
                          ? Color.fromARGB(255, 250, 250, 250)
                          : null,
                      onPrimary: selectedCategory == 'New'
                          ? Color.fromARGB(255, 40, 78, 53)
                          : Color.fromARGB(255, 106, 106, 106),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.zero,
                        side: BorderSide(
                          color: selectedCategory == 'New'
                              ? Color.fromARGB(255, 250, 250, 250)
                              : Colors.transparent,
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        selectedCategory = 'Popular';
                      });
                    },
                    child: Text(
                      'Популярное',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromARGB(255, 250, 250, 250),
                      primary: selectedCategory == 'Popular'
                          ? Color.fromARGB(255, 250, 250, 250)
                          : null,
                      onPrimary: selectedCategory == 'Popular'
                          ? Color.fromARGB(255, 40, 78, 53)
                          : Color.fromARGB(255, 106, 106, 106),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.zero,
                        side: BorderSide(
                          color: selectedCategory == 'Popular'
                              ? Color.fromARGB(255, 250, 250, 250)
                              : Colors.transparent,
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        selectedCategory = 'Drinks';
                      });
                    },
                    child: Text(
                      'Напитки',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromARGB(255, 250, 250, 250),
                      primary: selectedCategory == 'Drinks'
                          ? Color.fromARGB(255, 250, 250, 250)
                          : null,
                      onPrimary: selectedCategory == 'Drinks'
                          ? Color.fromARGB(255, 40, 78, 53)
                          : Color.fromARGB(255, 106, 106, 106),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.zero,
                        side: BorderSide(
                          color: selectedCategory == 'Drinks'
                              ? Color.fromARGB(255, 250, 250, 250)
                              : Colors.transparent,
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        selectedCategory = 'Box';
                      });
                    },
                    child: Text(
                      'Супер Бокс',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromARGB(255, 250, 250, 250),
                      primary: selectedCategory == 'Box'
                          ? Color.fromARGB(255, 250, 250, 250)
                          : null,
                      onPrimary: selectedCategory == 'Box'
                          ? Color.fromARGB(255, 40, 78, 53)
                          : Color.fromARGB(255, 106, 106, 106),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.zero,
                        side: BorderSide(
                          color: selectedCategory == 'Box'
                              ? Color.fromARGB(255, 250, 250, 250)
                              : Colors.transparent,
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        selectedCategory = 'Kombo';
                      });
                    },
                    child: Text(
                      'Комбо Обед',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromARGB(255, 250, 250, 250),
                      primary: selectedCategory == 'Kombo'
                          ? Color.fromARGB(255, 250, 250, 250)
                          : null,
                      onPrimary: selectedCategory == 'Kombo'
                          ? Color.fromARGB(255, 40, 78, 53)
                          : Color.fromARGB(255, 106, 106, 106),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.zero,
                        side: BorderSide(
                          color: selectedCategory == 'Kombo'
                              ? Color.fromARGB(255, 250, 250, 250)
                              : Colors.transparent,
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        selectedCategory = 'Burger';
                      });
                    },
                    child: Text(
                      'Бургеры и роллы',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromARGB(255, 250, 250, 250),
                      primary: selectedCategory == 'Burger'
                          ? Color.fromARGB(255, 250, 250, 250)
                          : null,
                      onPrimary: selectedCategory == 'Burger'
                          ? Color.fromARGB(255, 40, 78, 53)
                          : Color.fromARGB(255, 106, 106, 106),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.zero,
                        side: BorderSide(
                          color: selectedCategory == 'Burger'
                              ? Color.fromARGB(255, 250, 250, 250)
                              : Colors.transparent,
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        selectedCategory = 'Starter';
                      });
                    },
                    child: Text(
                      'Картофель, стартеры и салаты',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromARGB(255, 250, 250, 250),
                      primary: selectedCategory == 'Starter'
                          ? Color.fromARGB(255, 250, 250, 250)
                          : null,
                      onPrimary: selectedCategory == 'Starter'
                          ? Color.fromARGB(255, 40, 78, 53)
                          : Color.fromARGB(255, 106, 106, 106),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.zero,
                        side: BorderSide(
                          color: selectedCategory == 'Starter'
                              ? Color.fromARGB(255, 250, 250, 250)
                              : Colors.transparent,
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        selectedCategory = 'Kids';
                      });
                    },
                    child: Text(
                      'Кидз Комбо',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromARGB(255, 250, 250, 250),
                      primary: selectedCategory == 'Kids'
                          ? Color.fromARGB(255, 250, 250, 250)
                          : null,
                      onPrimary: selectedCategory == 'Kids'
                          ? Color.fromARGB(255, 40, 78, 53)
                          : Color.fromARGB(255, 106, 106, 106),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.zero,
                        side: BorderSide(
                          color: selectedCategory == 'Kids'
                              ? Color.fromARGB(255, 250, 250, 250)
                              : Colors.transparent,
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        selectedCategory = 'Desert';
                      });
                    },
                    child: Text(
                      'Десерты',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromARGB(255, 250, 250, 250),
                      primary: selectedCategory == 'Desert'
                          ? Color.fromARGB(255, 250, 250, 250)
                          : null,
                      onPrimary: selectedCategory == 'Desert'
                          ? Color.fromARGB(255, 40, 78, 53)
                          : Color.fromARGB(255, 106, 106, 106),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.zero,
                        side: BorderSide(
                          color: selectedCategory == 'Desert'
                              ? Color.fromARGB(255, 250, 250, 250)
                              : Colors.transparent,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 8,
                  crossAxisSpacing: 8,
                  childAspectRatio: 0.8,
                ),
                itemCount: getFilteredProducts().length,
                itemBuilder: (context, index) {
                  final product = getFilteredProducts()[index];
                  return GestureDetector(
                    onTap: () {
                      widget.shopBoxController.addToCart(product);
                    },
                    child: Card(
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(height: 8),
                            Image.asset(
                              product.image,
                              alignment: Alignment.center,
                              fit: BoxFit.cover,
                              width: 120,
                              height: 120,
                            ),
                            SizedBox(height: 8),
                            Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    product.name,
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontSize: 16,
                                    ),
                                  ),
                                  SizedBox(height: 10),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        '${product.price.toStringAsFixed(0)} руб',
                                        style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      const SizedBox(
                                        width: 30,
                                      ),
                                      IconButton(
                                        splashRadius: 10.0,
                                        icon: const Icon(
                                          Icons.add_box,
                                          size: 30,
                                          color:
                                              Color.fromRGBO(245, 127, 23, 1),
                                        ),
                                        onPressed: () {
                                          widget.shopBoxController
                                              .addToCart(product);
                                        },
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}