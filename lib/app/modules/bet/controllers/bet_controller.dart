import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:huawei_new/app/modules/auth/controllers/auth_controller.dart';
import 'package:huawei_new/app/modules/bet/views/bet_history_result_2_view.dart';
import 'package:huawei_new/app/modules/bet/views/bet_history_result_view.dart';
import 'package:huawei_new/utils/api_endpoints/api_endpoints.dart';
import 'package:intl/intl.dart';

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
//bet history list fetch
  final startDate = DateTime.now().obs;
  final endDate = DateTime.now().obs;

  //make order
  final makeOrder = {}.obs;

  void tryToMakeOrder() async {
    formatLotteryBetText();
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
      print(response.data);
      if (response.statusCode == 201) {
        authController.tryToRefresh();
        makeOrder.value = response.data;

        Get.to(const BetHistoryResult2View());
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

  void formatLotteryBetText() {
    String currentText = lotteryBetMobileMyrController.text;

    List<String> lines = currentText.split('\n');

    String lastSuffix = '';

    for (int i = 0; i < lines.length; i++) {
      String line = lines[i].trim();

      // Deny lines that are only a new line or empty
      if (line.isEmpty) {
        continue;
      }

      if (line.contains('#')) {
        lastSuffix = line.substring(line.indexOf('#'));
        continue;
      }

      if (lastSuffix.isNotEmpty) {
        lines[i] = line + lastSuffix;
      }
    }

    lotteryBetMobileMyrController.text = lines.join('\n');
  }

  final orderList = [].obs;
  Future<void> fetchOrderList() async {
    print('called');
    isLoading.value = true;
    try {
      orderList.clear();
      final DateFormat formatter = DateFormat('yyyy-MM-dd');

      String formattedStartDate = formatter.format(startDate.value);
      String formattedEndDate = formatter.format(endDate.value);

      var data = {
        'bettingdatefrom': formattedStartDate,
        'bettingdateto': formattedEndDate
      };

      final response = await _dio.post(
        kGetAllOrders,
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
      print(response.data);

      Get.to(const BetHistoryResultView());
      orderList.addAll(response.data['orders']);
      print(orderList);

      if (response.statusCode == 200) {
      } else {}

      ;
    } catch (e) {
      isLoading.value = false;
    }
  }

//cancel order
  void tryToCancelOrder({required int orderID}) async {
    isLoading.value = true;
    print(
      kCancelOrder(orderId: orderID),
    );
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

        Get.to(const BetHistoryResult2View());
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
    final currentPosition = lotteryBetMobileMyrController.selection.start;

    // Insert a new line at the current cursor position
    final newText = currentText.replaceRange(
      currentPosition,
      currentPosition,
      '\n',
    );

    // Update the controller's text and cursor position
    lotteryBetMobileMyrController.value = TextEditingValue(
      text: newText,
      selection: TextSelection.fromPosition(
        TextPosition(
            offset: currentPosition + 1), // Move cursor to after the new line
      ),
    );
  }

  //paste logic
  void pasteText() async {
    ClipboardData? data = await Clipboard.getData('text/plain');
    if (data != null) {
      final currentText = lotteryBetMobileMyrController.text;
      final currentPosition = lotteryBetMobileMyrController.selection.start;

      // Insert the pasted text at the current cursor position
      final newText = currentText.replaceRange(
        currentPosition,
        currentPosition,
        data.text ?? '',
      );

      // Update the controller's text and set the cursor position after the pasted text
      lotteryBetMobileMyrController.value = TextEditingValue(
        text: newText,
        selection: TextSelection.fromPosition(
          TextPosition(offset: currentPosition + (data.text?.length ?? 0)),
        ),
      );
    }
  }

  //reset logic
  void reset() {
    final currentPosition = lotteryBetMobileMyrController.selection.start;

    // Replace the entire text with `#`
    lotteryBetMobileMyrController.value = TextEditingValue(
      text: '#',
      selection: TextSelection.fromPosition(
        TextPosition(offset: currentPosition > 0 ? 1 : 0),
      ),
    );
  }
}
