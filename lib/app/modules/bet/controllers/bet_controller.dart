import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:huawei_new/app/modules/auth/controllers/auth_controller.dart';
import 'package:huawei_new/utils/api_endpoints/api_endpoints.dart';

class BetController extends GetxController {
  //TODO: Implement BetController

  final isLottery = false.obs;
  AuthController authController = Get.find();

  final TextEditingController dController = TextEditingController(text: 'D');
  final TextEditingController remarkBetMobileMyrController =
      TextEditingController();

  final TextEditingController companyBetMobileMyrController =
      TextEditingController(text: '#');

  final TextEditingController lotteryBetMobileMyrController =
      TextEditingController();
  final isLoading = false.obs;
  final _dio = Dio();

  void tryToMakeOrder() async {
    isLoading.value = true;
    try {
      final data = {
        'company_names': companyBetMobileMyrController.text,
        'lottery_code': lotteryBetMobileMyrController.text,
      };

      final response = await _dio.post(
        kMakeOrder,
        data: data,
        options: Options(
          headers: {
            // Set any required headers
            'accept': '*/*',
            'Authorization': 'Bearer ${authController.token.value}',
          },
        ),
      );

      isLoading.value = false;

      if (response.statusCode == 201) {
        Get.snackbar(
          'Success',
          "You are Logged In now.",
          backgroundColor: Colors.green,
          colorText: Colors.white,
          snackPosition: SnackPosition.BOTTOM,
        );
      } else {
        Get.snackbar(
          'Failed',
          "Something is wrong. Please try again.",
          backgroundColor: Colors.red,
          colorText: Colors.white,
          snackPosition: SnackPosition.BOTTOM,
        );
      }
    } catch (e) {
      isLoading.value = false;

      Get.snackbar(
        'Failed',
        "Something is wrong. Please try again.",
        backgroundColor: Colors.red,
        colorText: Colors.white,
        snackPosition: SnackPosition.BOTTOM,
      );
    }
  }
}
