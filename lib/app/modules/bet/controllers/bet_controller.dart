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
      TextEditingController(text: '#');
  final TextEditingController lotteryBetMobileMyrController2 =
      TextEditingController();
  final isLoading = false.obs;
  final _dio = Dio();
  RxList<TextSpan> textSpans = <TextSpan>[].obs;
  final makeOrder = {}.obs;

  void tryToMakeOrder() async {
    isLoading.value = true;
    try {
      final data = {
        'data': lotteryBetMobileMyrController.text,
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
        authController.tryToRefresh();
        makeOrder.value = response.data;

        Get.to(BetHistoryResult2View());
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

      if (response.statusCode == 200) {
        authController.tryToRefresh();
        makeOrder.value = response.data;

        Get.to(BetHistoryResult2View());
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

  //on change the textfield text
  RxBool isCurrentLineStartingWithHash = true.obs;
  RxBool isCurrentLineStartingWithStar = false.obs;
  RxBool isCurrentLineStartingWithDoubleStar = false.obs;

  void onChangedText(String text) {
    isCurrentLineStartingWithHash.value = false;
    isCurrentLineStartingWithStar.value = false;
    isCurrentLineStartingWithDoubleStar.value = false;
    List<String> lines = text.split('\n');
    String currentLine = lines.last;

    if (currentLine.startsWith('*')) {
      if (currentLine.startsWith('**')) {
        isCurrentLineStartingWithDoubleStar.value = true;
      } else {
        isCurrentLineStartingWithStar.value = currentLine.startsWith('*');
      }
    } else {
      isCurrentLineStartingWithHash.value = currentLine.startsWith('#');
    }
  }

  @override
  void onReady() {
    fetchOrderList();
    tryToFetchAllAceept();
    super.onReady();
  }

  //auto scroll logic

  final ScrollController scrollController = ScrollController();

  @override
  void onInit() {
    super.onInit();
    lotteryBetMobileMyrController.addListener(_scrollToBottom);
  }

  @override
  void onClose() {
    lotteryBetMobileMyrController.removeListener(_scrollToBottom);
    lotteryBetMobileMyrController.dispose();
    scrollController.dispose();
    super.onClose();
  }

  void _scrollToBottom() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (scrollController.hasClients) {
        scrollController.jumpTo(scrollController.position.maxScrollExtent);
      }
    });
  }

  void addNewLine() {
    final currentText = lotteryBetMobileMyrController.text;
    lotteryBetMobileMyrController.text = '$currentText\n';
    lotteryBetMobileMyrController.selection = TextSelection.fromPosition(
      TextPosition(offset: lotteryBetMobileMyrController.text.length),
    );
  }
}
