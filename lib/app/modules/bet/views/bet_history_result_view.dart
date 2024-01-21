import 'package:blue_thermal_printer/blue_thermal_printer.dart';
import 'package:bluetooth_print/bluetooth_print.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:huawei_new/app/modules/bet/controllers/bet_controller.dart';
import 'package:huawei_new/app/modules/bet/views/cancel_bet_history_result_view.dart';
import 'package:share/share.dart';

class BetHistoryResultView extends StatefulWidget {
  BetHistoryResultView({Key? key}) : super(key: key);

  @override
  State<BetHistoryResultView> createState() => _BetHistoryResultViewState();
}

class _BetHistoryResultViewState extends State<BetHistoryResultView> {
  final betHistoryController = Get.put(BetController());

  BluetoothPrint bluetoothPrint = BluetoothPrint.instance;
  final List<BluetoothDevice> _devices = [];
  String _deviceMsg = '';

  Future<void> initPrinter() async {
    bluetoothPrint.startScan(timeout: const Duration(seconds: 2));

    if (!mounted) return;

    bluetoothPrint.scanResults.listen((val) {
      if (!mounted) return;

      setState(() => {print(val)});
      if (_devices.isEmpty) {
        setState(() {
          _deviceMsg = 'No devices';
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.black,
        title: const Text('HUAWEI88'),
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: const Icon(Icons.arrow_back_ios),
        ),
      ),
      body: Column(
        children: [
          Container(
            height: 45,
            color: Colors.red,
            child: const Center(
              child: Text(
                "Bet History",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 21,
                ),
              ),
            ),
          ),
          const SizedBox(height: 5),
          Obx(() {
            return Column(
              children: [
                Text(
                  'Total Accepted  : ${betHistoryController.allAcceptedOrder["accepted_total"]}',
                  style: const TextStyle(fontSize: 20),
                ),
                const SizedBox(height: 5),
                Text(
                  'Total Cancelled  : ${betHistoryController.allAcceptedOrder['rejected_total']}',
                  style: const TextStyle(fontSize: 20),
                ),
                const SizedBox(height: 5),
              ],
            );
          }),
          Expanded(
              child: ListView.builder(
            itemCount: betHistoryController.orderList.length,
            itemBuilder: (context, index) {
              return Obx(() {
                return Container(
                  padding: const EdgeInsets.only(left: 10),
                  margin: const EdgeInsets.only(bottom: 5, left: 20, right: 20),
                  color: betHistoryController.orderList[index]['status'] ==
                          'active'
                      ? const Color(
                          0xffd3f5f8) // Color when the condition is true
                      : Colors.red,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Align(
                          alignment: Alignment.centerRight,
                          child: Padding(
                            padding: const EdgeInsets.only(
                                left: 8.0, right: 8, top: 15),
                            child: InkWell(
                                onTap: () {
                                  showMenu(
                                    context: context,
                                    items: [
                                      PopupMenuItem<String>(
                                        onTap: () {
                                          showDialog(
                                            context: context,
                                            builder: (BuildContext context) {
                                              return AlertDialog(
                                                title: const Text(
                                                  'Cancel Number',
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize: 21),
                                                ),
                                                content: const Text(
                                                    "Confirm Cancel"),
                                                actions: [
                                                  ElevatedButton(
                                                    onPressed: () {
                                                      Navigator.of(context)
                                                          .pop(); // Close the dialog
                                                    },
                                                    child: const Text('No'),
                                                  ),
                                                  ElevatedButton(
                                                    onPressed: () {
                                                      Get.to(
                                                          const CancelBetHistoryResultView());
                                                      //Close the dialog
                                                    },
                                                    child: const Text('Yes'),
                                                  ),
                                                ],
                                                contentPadding:
                                                    const EdgeInsets.symmetric(
                                                        horizontal: 50.0),
                                              );
                                            },
                                          );
                                        },
                                        value: 'option1',
                                        child: const Text('Cancel Page'),
                                      ),
                                      const PopupMenuItem(
                                        value: 'option2',
                                        child: Text("Print page"),
                                      ),
                                      const PopupMenuItem(
                                        value: 'option3',
                                        child: Text('Sms Page'),
                                      ),
                                      PopupMenuItem(
                                        onTap: () {
                                          Share.share(
                                              '${betHistoryController.orderList[index]["username"]} \n ${betHistoryController.orderList[index]["created_at"]} \n ${betHistoryController.orderList[index]["workingdate"]} \n ${betHistoryController.orderList[index]["companies"]} \n ${betHistoryController.orderList[index]["lotterycode"]}  \n T ${betHistoryController.orderList[index]["lotterycode"]}');
                                          // Share.share(
                                        },
                                        value: 'option3',
                                        child: const Text('Share'),
                                      ),
                                      const PopupMenuItem(
                                        value: 'option3',
                                        child: Text('Revert'),
                                      ),
                                    ],
                                    position: RelativeRect.fill,
                                  );
                                },
                                child: const Text("More>")),
                          )),
                      Text(betHistoryController.orderList[index]["username"]
                          .toString()),
                      SizedBox(
                        height: 3,
                      ),
                      Text(betHistoryController.orderList[index]["created_at"]
                          .toString()),
                      SizedBox(
                        height: 3,
                      ),
                      Text(betHistoryController.orderList[index]['workingdate']
                          .toString()),
                      SizedBox(
                        height: 3,
                      ),
                      Text(betHistoryController.orderList[index]['companies']
                          .toString()),
                      SizedBox(
                        height: 3,
                      ),
                      Text(betHistoryController.orderList[index]['lotterycode']
                          .toString()),
                      SizedBox(
                        height: 3,
                      ),
                      Text(
                          "T (${betHistoryController.orderList[index]["totalamount"].toString()})"),
                      // Text(betHistoryController.orderList[index]['totalamount']
                      //     .toString()), SizedBox(height: 3,),
                    ],
                  ),
                );
              });
            },
          )),
        ],
      ),
    );
  }
}
