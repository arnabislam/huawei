import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:huawei_new/app/modules/auth/controllers/auth_controller.dart';
import 'package:intl/intl.dart';

import '../../../../utils/api_endpoints/api_endpoints.dart';
import '../views/winlose_report_view.dart';

class ReportController extends GetxController {
  //TODO: Implement ReportController

  final selectedDate = DateTime.now().obs;
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  chooseDate() async {
    DateTime? pickedDate = await showDatePicker(
        context: Get.context!,
        initialDate: selectedDate.value,
        firstDate: DateTime(2000),
        lastDate: DateTime(2024),
        //initialEntryMode: DatePickerEntryMode.input,
        // initialDatePickerMode: DatePickerMode.year,
        helpText: 'Select DOB',
        cancelText: 'Close',
        confirmText: 'Confirm',
        errorFormatText: 'Enter valid date',
        errorInvalidText: 'Enter valid date range',
        fieldLabelText: 'DOB',
        fieldHintText: 'Month/Date/Year',
        selectableDayPredicate: disableDate);
    if (pickedDate != null && pickedDate != selectedDate.value) {
      selectedDate.value = pickedDate;
    }
  }

  bool disableDate(DateTime day) {
    if ((day.isAfter(DateTime.now().subtract(const Duration(days: 1))) &&
        day.isBefore(DateTime.now().add(const Duration(days: 5))))) {
      return true;
    }
    return false;
  }

  final startDate = DateTime.now().obs;
  final endDate = DateTime.now().obs;
  final isLoading = false.obs;
  final _dio = Dio();
  AuthController authController = Get.find();

  final winLossList = [].obs;

  void winLossTest() async {
    try {
      isLoading.value = true;
      final DateFormat formatter = DateFormat('yyyy-MM-dd');

      String formattedStartDate = formatter.format(startDate.value);
      String formattedEndDate = formatter.format(endDate.value);

      var data = {
        'bettingdatefrom': formattedStartDate,
        'bettingdateto': formattedEndDate
      };

      final response = await _dio.post(
        kWinLoss,
        data: data,
        options: Options(
          headers: {
            'accept': '*/*',
            'Authorization': 'Bearer ${authController.token.value}',
          },
        ),
      );
      isLoading.value = false;
      if (response.statusCode == 200) {
        winLossList.value = response.data;
        Get.to(const WinloseReportView());
        isLoading.value = false;
      }
      // print(winLossList.value);
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
}
