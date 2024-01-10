import 'package:get/get.dart';

import '../controllers/select_target_controller.dart';

class SelectTargetBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SelectTargetController>(
      () => SelectTargetController(),
    );
  }
}
