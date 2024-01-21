import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:huawei_new/app/modules/auth/controllers/auth_controller.dart';
import 'package:huawei_new/app/modules/bet/views/bet_history_result_2_view.dart';
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
  final TextEditingController lotteryBetMobileMyrController2 =
      TextEditingController();
  final isLoading = false.obs;
  final _dio = Dio();

  final makeOrder = {}.obs;

  void tryToMakeOrder() async {
    isLoading.value = true;
    try {
      final data = {
        'company_names': companyBetMobileMyrController.text,
        'lottery_code': lotteryBetMobileMyrController.text,
      };
      print(data);
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
        makeOrder.value = response.data;
        print(response.data);

        Get.to(BetHistoryResult2View());
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

  final orderList = [].obs;
  void fetchOrderList() async {
    isLoading.value = true;
    try {
      final response = await _dio.get(
        kGetAllOrders,
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

      orderList.addAll(response.data['order']);
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

//cancel order
  void tryToCancelOrder({required int orderID}) async {
    isLoading.value = true;
    try {
      print(
        kCancelOrder(orderId: orderID),
      );
      final response = await _dio.get(
        kCancelOrder(orderId: orderID),
        options: Options(
          headers: {
            // Set any required headers
            'accept': '*/*',
            'Authorization': 'Bearer ${authController.token.value}',
          },
        ),
      );

      isLoading.value = false;
      print(response.data);
      print(response.statusCode);

      if (response.statusCode == 200) {
        makeOrder.value = response.data;
        makeOrder.refresh();
        print(response.data);

        Get.to(BetHistoryResult2View());
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
      print(e);
      Get.snackbar(
        'Failed',
        "Something is wrong. Please try again.",
        backgroundColor: Colors.red,
        colorText: Colors.white,
        snackPosition: SnackPosition.BOTTOM,
      );
    }
  }

  final allAcceptedOrder = {}.obs;

//cancel order
  void tryToFetchAllAceept() async {
    isLoading.value = true;
    try {
      final response = await _dio.get(
        kGetAllAcceptedOder,
        options: Options(
          headers: {
            // Set any required headers
            'accept': '*/*',
            'Authorization': 'Bearer ${authController.token.value}',
          },
        ),
      );

      isLoading.value = false;

      if (response.statusCode == 200) {
        allAcceptedOrder.value = response.data;

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

  @override
  void onReady() {
    fetchOrderList();
    tryToFetchAllAceept();
    super.onReady();
  }
}
