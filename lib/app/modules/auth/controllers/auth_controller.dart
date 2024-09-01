import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:huawei_new/app/modules/auth/UserProfile.dart';
import 'package:huawei_new/app/modules/auth/views/login_view.dart';
import 'package:huawei_new/app/modules/bet/views/bet_view.dart';
import 'package:huawei_new/utils/api_endpoints/api_endpoints.dart';
import 'package:streaming_shared_preferences/streaming_shared_preferences.dart';

class AuthController extends GetxController {
  final authLoading = false.obs;
  final loadingChangePassword = false.obs;
  final loadingResetPassword = false.obs;
  final profile = UserProfile().obs;
  final token = ''.obs;
  final useNameStore = ''.obs;

  late StreamingSharedPreferences preferences;
  //INITIALIZE THE APPLICATION
  @override
  void onInit() {
    super.onInit();
    initialize();
  }

  void initialize() async {
    preferences = await StreamingSharedPreferences.instance;
    preferences.getString('token', defaultValue: '').listen((value) {
      token.value = value;
    });
    preferences.getString('profile', defaultValue: '').listen((value) {
      if (value.isNotEmpty) {
        profile.value = UserProfile.fromJson(jsonDecode(value));
      }
    });
  }

  void tryToSignIn({required String userName, required String password}) async {
    authLoading.value = true;
    var data = {
      'username': userName,
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
        profile.value = UserProfile.fromJson(response.data);
        token.value = profile.value.token!;
        print(token.value);
        print(response.data['token']);
        //SET TO LOCAL

        preferences.setString('token', response.data['token']);
        preferences.setString('profile', jsonEncode(response.data));
        preferences.setString('username', profile.value.token!);

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
    Get.offAll(LoginView());
    token.value = '';
  }

  void tryToRefresh() async {
    authLoading.value = true;

    var dio = Dio();

    try {
      final response = await dio.get(
        kUserDataUlr(userId: profile.value.user!.id!.toInt()),
        options: Options(
          headers: {
            // Set any required headers
            'accept': '*/*',
            'Authorization': 'Bearer ${token.value}',
          },
        ),
      );
      int? statusCode = response.statusCode;
      authLoading.value = false;
      if (statusCode == 200) {
        profile.value = UserProfile.fromJson(response.data);
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
}
