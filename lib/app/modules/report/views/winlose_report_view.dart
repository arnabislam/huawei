import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:huawei_new/app/modules/report/controllers/report_controller.dart';

class WinloseReportView extends GetView {
  const WinloseReportView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    ReportController reportController = Get.find();
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.black,
        centerTitle: true,
        title: const Text(
          'HUAWEI88',
          style: TextStyle(color: Colors.white),
        ),
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: const Icon(
            Icons.arrow_back_ios,
            color: Colors.white,
          ),
        ),
      ),
      body: Column(
        children: [
          Container(
            height: 45,
            color: Colors.red,
            child: const Center(
              child: Text(
                "Win Lose",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 21,
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 25,
          ),
          Container(
            margin: const EdgeInsets.all(9),
            height: MediaQuery.sizeOf(context).height / 5,
            width: double.infinity,
            decoration:
                BoxDecoration(border: Border.all(width: 1, color: Colors.grey)),
            child: Column(
              children: [
                const Text(
                  "Master Report ",
                  style: TextStyle(
                      color: Colors.red,
                      fontWeight: FontWeight.bold,
                      fontSize: 21),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const Expanded(flex: 2, child: Text("Turn Over")),
                    const Expanded(flex: 1, child: Text(":")),
                    Expanded(
                        flex: 1,
                        child: Text(
                          reportController.winLossList['totaltarnover']
                              .toString(),
                        )),
                  ],
                ),
                const SizedBox(
                  height: 5,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const Expanded(
                      flex: 2,
                      child: Text("Strike Win"),
                    ),
                    const Expanded(
                      flex: 1,
                      child: Text(":"),
                    ),
                    Expanded(
                        flex: 1,
                        child: Text(reportController.winLossList['alltotalwin']
                            .toString())),
                  ],
                ),
                const SizedBox(
                  height: 5,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const Expanded(flex: 2, child: Text("Commission")),
                    const Expanded(flex: 1, child: Text(":")),
                    Expanded(
                        flex: 1,
                        child: Text(reportController.winLossList['allcomission']
                            .toString())),
                  ],
                ),
                const SizedBox(
                  height: 5,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const Expanded(flex: 2, child: Text("Total")),
                    const Expanded(flex: 1, child: Text(":")),
                    Expanded(
                        flex: 1,
                        child: Text(reportController.winLossList['alltotal']
                            .toString())),
                  ],
                ),
                const SizedBox(
                  height: 5,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
