import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:huawei_new/app/modules/report/views/draw_result_view.dart';
import 'package:huawei_new/app/modules/report/views/win_lose_view.dart';
import 'package:huawei_new/app/modules/report/views/winloss_filter_view.dart';

import '../../bet/views/all_view.dart';
import '../controllers/report_controller.dart';

class ReportView extends GetView<ReportController> {
  const ReportView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            color: Colors.grey,
            child: Column(
              children: [
                InkWell(
                  onTap: () {
                    Get.to(DrawResultView());
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
                    Get.to(WinLoseView());
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
                        color: Color(0xffffac33),
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
                    Get.to(WinLossFilter());
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
              ],
            )));
  }
}
