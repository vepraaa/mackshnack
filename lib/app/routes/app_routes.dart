part of 'app_pages.dart';

abstract class Routes {
  Routes._();
  static const HOME = _Paths.HOME;
  static const SHOPBOX = _Paths.SHOPBOX;
  static const SHOPPAGE = _Paths.SHOPPAGE;
}

abstract class _Paths {
  _Paths._();
  static const HOME = '/home';
  static const SHOPBOX = '/shopbox';
  static const SHOPPAGE = '/shoppage';
}
