import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'app/modules/auth/controllers/auth_controller.dart';
import 'app/routes/app_pages.dart';

void main() {
  final authController = Get.put(AuthController());
  runApp(
    GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Application",
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
    ),
  );
}
