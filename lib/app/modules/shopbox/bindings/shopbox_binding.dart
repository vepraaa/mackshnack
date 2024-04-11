import 'package:get/get.dart';

import '../controllers/shopbox_controller.dart';

class ShopboxBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ShopboxController>(
      () => ShopboxController(),
    );
  }
}
