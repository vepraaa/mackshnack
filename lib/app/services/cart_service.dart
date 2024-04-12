import 'package:mackshnack/app/models/product/product.dart';

class CartService {
  List<Product> _cartItems = [];

  void addToCart(Product product) {
    _cartItems.add(product);
  }


  void clearCart() {
    _cartItems.clear();
  }

  List<Product> getCartItems() {
    return List.unmodifiable(_cartItems);
  }

  double getTotalPrice() {
    return _cartItems.fold(0, (sum, item) => sum + item.price);
  }
}
