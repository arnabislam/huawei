import 'package:get/get.dart';

import '../controllers/model_controller.dart';

class ModelBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ModelController>(
      () => ModelController(),
    );
  }
}
