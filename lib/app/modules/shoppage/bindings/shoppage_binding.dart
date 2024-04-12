import 'package:get/get.dart';

import '../controllers/shoppage_controller.dart';

class ShoppageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ShoppageController>(
      () => ShoppageController(),
    );
  }
}
