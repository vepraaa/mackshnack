import 'package:get/get.dart';

import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/shopbox/bindings/shopbox_binding.dart';
import '../modules/shopbox/views/shopbox_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.SHOPBOX,
      page: () => const ShopboxView(),
      binding: ShopboxBinding(),
    ),
  ];
}
