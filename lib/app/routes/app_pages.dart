import 'package:get/get.dart';

import 'package:car_shop/app/modules/Detailed/bindings/detailed_binding.dart';
import 'package:car_shop/app/modules/Detailed/views/detailed_view.dart';
import 'package:car_shop/app/modules/Search/bindings/search_binding.dart';
import 'package:car_shop/app/modules/Search/views/search_view.dart';
import 'package:car_shop/app/modules/home/bindings/home_binding.dart';
import 'package:car_shop/app/modules/home/views/home_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  // ignore: constant_identifier_names
  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.DETAILED,
      page: () => DetailedView(),
      binding: DetailedBinding(),
    ),
    GetPage(
      name: _Paths.SEARCH,
      page: () => SearchView(),
      binding: SearchBinding(),
    ),
  ];
}
