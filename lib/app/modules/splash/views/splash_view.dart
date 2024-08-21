import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:get/get.dart';
import 'package:huawei_new/app/modules/auth/views/login_view.dart';

import '../../auth/controllers/auth_controller.dart';
import '../../bet/views/bet_view.dart';
import '../controllers/splash_controller.dart';

class SplashView extends GetView<SplashController> {
  const SplashView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 2), () {
      AuthController authController;
      try {
        authController = Get.find();
      } catch (e) {
        authController = Get.put(AuthController());
      }
      print(authController.token);
      if (authController.token.value.isEmpty) {
        Get.off(LoginView());
      } else {
        authController.token.value = authController.profile.value.token!;
        Get.offAll(const BetView());
      }
    });
    return const Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Text(
              " Huawei ",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Center(
            child: SpinKitDualRing(
              color: Colors.pink,
              size: 40,
            ),
          ),
        ],
      ),
    );
  }
}
