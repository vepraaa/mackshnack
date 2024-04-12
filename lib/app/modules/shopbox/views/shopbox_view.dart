import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/shopbox_controller.dart';
import 'package:mackshnack/app/services/cart_service.dart';

class ShopBoxView extends StatelessWidget {
  final CartService cartService;
  final ShopBoxController shopBoxController;

  ShopBoxView({required this.cartService, required this.shopBoxController});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 40, 78, 53),
        title: Text('Корзина',
            style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 16,
            )),
        actions: [
          TextButton(
            onPressed: () {
              shopBoxController.clearCart();
              Navigator.pop(context); // обновляем текущий экран
            },
            child: Text(
              'Очистить',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: cartService.getCartItems().length,
        itemBuilder: (context, index) {
          final product = cartService.getCartItems()[index];
          return Column(
            children: [
              ListTile(
                leading: Image.asset(
                  product.image,
                  fit: BoxFit.contain,
                  width: 50,
                  height: 120,
                ),
                title: Text(product.name),
                subtitle: Text('${product.price.toStringAsFixed(0)} руб'),
                // trailing: IconButton(
                //   icon: Icon(Icons.delete),
                //   onPressed: () {
                //     shopBoxController.removeFromCart(product);
                //     Navigator.pop(context); // обновляем текущий экран
                //   },
                // ),
              ),
              Divider(
                color: Colors.grey,
                thickness: 1,
              ),
            ],
          );
        },
      ),
      bottomNavigationBar: BottomAppBar(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Text(
            'Итого: ${cartService.getTotalPrice().toStringAsFixed(0)} руб',
            style: TextStyle(fontSize: 20),
          ),
        ),
      ),
    );
  }
}
