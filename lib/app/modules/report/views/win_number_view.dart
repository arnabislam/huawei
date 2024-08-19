import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:get/get.dart';
import 'package:huawei_new/app/modules/report/controllers/report_controller.dart';
import 'package:intl/intl.dart';
import 'package:loading_overlay/loading_overlay.dart';

class WinNumberView extends StatefulWidget {
  const WinNumberView({Key? key}) : super(key: key);

  @override
  State<WinNumberView> createState() => _WinNumberViewState();
}

class _WinNumberViewState extends State<WinNumberView> {
  bool? isMagnum = false;
  bool? isPmp = false;
  bool? isToto = false;
  bool? isSingapore = false;
  bool? isSabah = false;
  bool? isSandakan = false;
  bool? isSarwak = false;
  bool? isGdLotto = false;
  bool? isNineLotto = false;

  @override
  Widget build(BuildContext context) {
    ReportController reportController = Get.put(ReportController());

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
            )),
      ),
      body: FutureBuilder(
          future: reportController.winNoticeListTest(),
          builder: (context, index) {
            return Obx(() {
              return LoadingOverlay(
                  isLoading: reportController.isLoading.value,
                  progressIndicator: const SpinKitDualRing(
                    color: Colors.redAccent,
                    size: 40,
                  ),
                  child: reportController.winNoticeList.isEmpty
                      ? Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 8.0, horizontal: 16.0),
                          child: Card(
                            elevation: 4,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(16.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text(
                                    'Winner Number',
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.blueAccent,
                                    ),
                                  ),
                                  const SizedBox(height: 8),
                                  Text(
                                    'No win number today',
                                    style: const TextStyle(
                                      fontSize: 16,
                                      color: Colors.black87,
                                    ),
                                  ),
                                  const SizedBox(height: 12),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        'Date: N/A',
                                        style: TextStyle(
                                          fontSize: 14,
                                          color: Colors.grey[600],
                                        ),
                                      ),
                                      const Icon(
                                        Icons.cancel,
                                        color: Colors.redAccent,
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        )
                      : ListView.builder(
                          itemCount: reportController.winNoticeList.length,
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 8.0, horizontal: 16.0),
                              child: Card(
                                elevation: 4,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(16.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      const Text(
                                        'Winner Number',
                                        style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.blueAccent,
                                        ),
                                      ),
                                      const SizedBox(height: 8),
                                      Text(
                                        reportController.winNoticeList[index]
                                            ['note'],
                                        style: const TextStyle(
                                          fontSize: 16,
                                          color: Colors.black87,
                                        ),
                                      ),
                                      const SizedBox(height: 12),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            'Date: ${DateFormat('yyyy-MM-dd').format(DateTime.parse(reportController.winNoticeList[index]['created_at']))}',
                                            style: TextStyle(
                                              fontSize: 14,
                                              color: Colors.grey[600],
                                            ),
                                          ),
                                          const Icon(
                                            Icons.check_circle,
                                            color: Colors.green,
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            );
                          },
                        ));
            });
          }),
    );
  }
}
