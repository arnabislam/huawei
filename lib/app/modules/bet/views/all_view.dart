import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:huawei_new/app/modules/bet/views/bet_history_view.dart';
import 'package:huawei_new/app/modules/bet/views/betmobile_view.dart';
import 'package:huawei_new/app/modules/member/views/account_view.dart';
import 'package:huawei_new/app/modules/member/views/password_view.dart';
import 'package:huawei_new/app/modules/report/views/draw_result_view.dart';
import 'package:huawei_new/app/modules/report/views/win_lose_view.dart';
import 'package:huawei_new/app/modules/report/views/win_number_view.dart';
import 'package:huawei_new/app/modules/settings/views/settings_view.dart';

class AllView extends GetView {
  const AllView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      color: Colors.grey,
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            InkWell(
              onTap: () {
                Get.to(BetmobileView());
              },
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(7)),
                margin: const EdgeInsets.only(left: 5, top: 8, right: 5),
                height: 65,
                child: reRow(
                  betImage: Image.asset(
                    "images/default/add.png",
                    color: const Color(0xffffac33),
                    height: 35,
                    width: 35,
                  ),
                  betText: "Bet in Mobile format MYR Curency",
                  betTitleText: "Bet Mobile MYR",
                ),
              ),
            ),
            InkWell(
              onTap: () {
                Get.to(const DrawResultView());
              },
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(7)),
                margin: const EdgeInsets.only(left: 5, top: 8, right: 5),
                height: 65,
                child: reRow(
                  betImage: Image.asset("images/default/dollar.png"),
                  betText: "Draw Result Review",
                  betTitleText: "Draw result",
                ),
              ),
            ),
            InkWell(
              onTap: () {
                Get.to(BetHistoryView());
              },
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(7)),
                margin: const EdgeInsets.only(left: 5, top: 8, right: 5),
                height: 65,
                child: reRow(
                  betImage: Image.asset("images/default/dollar.png"),
                  betText: "Bet History Review",
                  betTitleText: "Bet History",
                ),
              ),
            ),
            InkWell(
              onTap: () {
                Get.to(AccountView());
              },
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(7)),
                margin: const EdgeInsets.only(left: 5, top: 8, right: 5),
                height: 65,
                child: reRow(
                  betImage: Image.asset(
                    "images/default/document.png",
                    color: const Color(0xffffac33),
                    height: 35,
                    width: 35,
                  ),
                  betText: "Account Review",
                  betTitleText: "Account",
                ),
              ),
            ),
            InkWell(
              onTap: () {
                Get.to(const WinLoseView());
              },
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(7)),
                margin: const EdgeInsets.only(left: 5, top: 8, right: 5),
                height: 65,
                child: reRow(
                  betImage: Image.asset(
                    "images/default/dollar-sign.png",
                    color: const Color(0xffffac33),
                    height: 35,
                    width: 35,
                  ),
                  betText: "Win Lose Review",
                  betTitleText: "Win Lose",
                ),
              ),
            ),
            InkWell(
              onTap: () {
                Get.to(const WinNumberView());
              },
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(7)),
                margin: const EdgeInsets.only(left: 5, top: 8, right: 5),
                height: 65,
                child: reRow(
                  betImage: Image.asset("images/default/dollar.png"),
                  betText: "Win Number Review",
                  betTitleText: "Win Number ",
                ),
              ),
            ),
            InkWell(
              onTap: () {
                Get.to(PasswordView());
              },
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(7)),
                margin: const EdgeInsets.only(left: 5, top: 8, right: 5),
                height: 65,
                child: reRow(
                  betImage: Image.asset(
                    "images/default/shield.png",
                    height: 35,
                    width: 35,
                  ),
                  betText: "Password Update",
                  betTitleText: "Password",
                ),
              ),
            ),
            InkWell(
              onTap: () {
                Get.to(const SettingsView());
              },
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(7)),
                margin: const EdgeInsets.only(left: 5, top: 8, right: 5),
                height: 65,
                child: reRow(
                  betImage: Image.asset(
                    "images/default/content-management.png",
                    color: const Color(0xffffac33),
                    height: 35,
                    width: 35,
                  ),
                  betText: "Settings Change",
                  betTitleText: "Setting",
                ),
              ),
            ),
          ],
        ),
      ),
    ));
  }
}

class reRow extends StatelessWidget {
  final Image betImage;
  final String betTitleText;
  final String betText;
  const reRow({
    super.key,
    required this.betImage,
    required this.betText,
    required this.betTitleText,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.all(6.0),
          child: Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                color: const Color(0xffffac33), // Set your desired border color
                width: 2.0, // Set your desired border width
              ),
            ),
            child: CircleAvatar(
              radius: 25,
              backgroundColor: Colors.white,
              child: betImage,
            ),
          ),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              betTitleText,
              style: const TextStyle(fontSize: 17, fontWeight: FontWeight.w400),
            ),
            Text(betText,
                style:
                    const TextStyle(fontSize: 11, fontWeight: FontWeight.w400)),
          ],
        )
      ],
    );
  }
}
