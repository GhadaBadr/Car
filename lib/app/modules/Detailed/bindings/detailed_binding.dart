import 'package:get/get.dart';

import '../controllers/detailed_controller.dart';

class DetailedBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DetailedController>(
      () => DetailedController(),
    );
  }
}
