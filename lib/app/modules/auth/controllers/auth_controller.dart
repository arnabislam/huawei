import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:huawei_new/app/modules/auth/views/login_view.dart';
import 'package:huawei_new/app/modules/bet/views/bet_view.dart';
import 'package:huawei_new/app/modules/model/views/profile_model_view.dart';
import 'package:huawei_new/utils/api_endpoints/api_endpoints.dart';

class AuthController extends GetxController {
  final authLoading = false.obs;
  final loadingChangePassword = false.obs;
  final loadingResetPassword = false.obs;
  final profile = Profile().obs;
  final token = ''.obs;

  void tryToSignIn({required String userName, required String password}) async {
    authLoading.value = true;
    var data = {
      'email': userName,
      'password': password,
    };
    var dio = Dio();

    try {
      final response = await dio.post(
        kLoginUlr,
        data: data,
      );
      int? statusCode = response.statusCode;
      authLoading.value = false;
      if (statusCode == 200) {
        profile.value = Profile.fromJson(response.data);

        Get.snackbar(
          'Success',
          "You are Logged In now.",
          backgroundColor: Colors.green,
          colorText: Colors.white,
          snackPosition: SnackPosition.BOTTOM,
        );

        Get.offAll(const BetView());
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
      print(e);
      authLoading.value = false;
      Get.snackbar(
        'Failed',
        "Something is wrong. Please try again.",
        backgroundColor: Colors.red,
        colorText: Colors.white,
        snackPosition: SnackPosition.BOTTOM,
      );
    }
  }

  void tryToSignOut() async {
    authLoading.value = true;

    var dio = Dio();
    try {
      final response = await dio.post(
        kLogoutUlr,
        options: Options(
          headers: {
            'accept': '*/*',
            'Authorization': 'Token ${token.value}',
          },
        ),
      );
      int? statusCode = response.statusCode;
      authLoading.value = false;

      if (statusCode == 200) {
        Get.offAll(LoginView());
        token.value = '';
      } else {
        Get.snackbar(
          'Failed',
          "Something is wrong. Please check your internet connection.",
          backgroundColor: Colors.red,
          colorText: Colors.white,
          snackPosition: SnackPosition.BOTTOM,
        );
      }
    } catch (e) {
      authLoading.value = false;
      Get.snackbar(
        'Failed',
        "Something is wrong. Please check your internet connection.",
        backgroundColor: Colors.red,
        colorText: Colors.white,
        snackPosition: SnackPosition.BOTTOM,
      );

      Get.offAll(LoginView());
      token.value = '';
    }
  }
}
