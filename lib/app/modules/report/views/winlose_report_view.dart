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
          Expanded(
            child: ListView.builder(
              itemBuilder: (context, index) {
                double subTotal = double.parse(reportController
                        .winLossList[index]['totalamount']
                        .toString()) -
                    double.parse(reportController.winLossList[index]
                            ['commission']
                        .toString()) -
                    double.parse(reportController.winLossList[index]
                            ['win_amount']
                        .toString());

                return Container(
                  margin: const EdgeInsets.all(9),
                  height: MediaQuery.sizeOf(context).height / 4.5,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      border: Border.all(width: 1, color: Colors.grey)),
                  child: Column(
                    children: [
                      const Text(
                        "Master Report ",
                        style: TextStyle(
                            color: Colors.red,
                            fontWeight: FontWeight.bold,
                            fontSize: 21),
                      ),
                      Text(
                        reportController.winLossList[index]['date'],
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
                                reportController.winLossList[index]
                                        ['totalamount']
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
                              child: Text(reportController.winLossList[index]
                                      ['win_amount']
                                  .toString())),
                        ],
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Expanded(flex: 2, child: Text("Commission")),
                          Expanded(flex: 1, child: Text(":")),
                          Expanded(
                              flex: 1,
                              child: Text(reportController.winLossList[index]
                                      ['commission']
                                  .toString())),
                        ],
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Expanded(flex: 2, child: Text("Total")),
                          const Expanded(flex: 1, child: Text(":")),
                          Expanded(flex: 1, child: Text(subTotal.toString())),
                        ],
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                    ],
                  ),
                );
              },
              itemCount: reportController.winLossList.length,
            ),
          ),
        ],
      ),
    );
  }
}
