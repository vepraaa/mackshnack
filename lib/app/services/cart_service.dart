import 'package:flutter/material.dart';
import 'package:mackshnack/app/models/product/product.dart';

class CartService {
  List<Product> _cartItems = [];

  void addToCart(Product product) {
    _cartItems.add(product);
  }

  List<Product> getCartItems() {
    return _cartItems;
  }

  double getTotalPrice() {
    double total = 0;
    for (var item in _cartItems) {
      total += item.price;
    }
    return total;
  }
}