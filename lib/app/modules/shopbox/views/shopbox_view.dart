import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/shopbox_controller.dart';
import 'package:mackshnack/app/services/cart_service.dart';

class ShopboxView extends GetView<ShopboxController> {
  const ShopboxView({Key? key}) : super(key: key);
   @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Корзина'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Список товаров в корзине:'),
            // Вывод списка товаров в корзине
            ListView.builder(
              shrinkWrap: true,
              itemCount: cartService.getCartItems().length,
              itemBuilder: (context, index) {
                final product = cartService.getCartItems()[index];
                return ListTile(
                  title: Text(product.name),
                  subtitle: Text('${product.price} руб'),
                );
              },
            ),
            Text('Общая стоимость: ${cartService.getTotalPrice()} руб'),
          ],
        ),
      ),
    );
  }
}