import 'package:get/get.dart';

import '../controllers/bet_controller.dart';

class BetBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<BetController>(
      () => BetController(),
    );
  }
}
