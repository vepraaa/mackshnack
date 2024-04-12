import 'package:mackshnack/app/models/product/product.dart';
import 'package:mackshnack/app/services/cart_service.dart';
class ShopBoxController {
  final CartService cartService = CartService();

  void addToCart(Product product) {
    cartService.addToCart(product);
  }


  void clearCart() {
    cartService.clearCart();
  }

  List<Product> getCartItems() {
    return cartService.getCartItems();
  }

  double getTotalPrice() {
    return cartService.getTotalPrice();
  }
}