import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:get/get.dart';
import 'package:loading_overlay/loading_overlay.dart';
import 'package:share/share.dart';

import '../controllers/bet_controller.dart';

class BetHistoryResult2View extends StatefulWidget {
  const BetHistoryResult2View({Key? key}) : super(key: key);

  @override
  State<BetHistoryResult2View> createState() => _BetHistoryResult2ViewState();
}

class _BetHistoryResult2ViewState extends State<BetHistoryResult2View> {
  final betHistoryController2 = Get.put(BetController());

  @override
  Widget build(BuildContext context) {
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
              betHistoryController2.lotteryBetMobileMyrController.text = '#';
              Get.back();
            },
            icon: const Icon(
              Icons.arrow_back_ios,
              color: Colors.white,
            ),
          ),
        ),
        body: Obx(() {
          return LoadingOverlay(
            isLoading: betHistoryController2.isLoading.value,
            progressIndicator: const SpinKitDoubleBounce(
              color: Colors.blueAccent,
              size: 60,
            ),
            child: Column(
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
                Obx(
                  () => betHistoryController2.makeOrder['order']["status"] ==
                          'active'
                      ? Container()
                      : Column(
                          children: [
                            const SizedBox(height: 20),
                            Text(
                              'Total Accepted  : -${betHistoryController2.makeOrder['order']["totalamount"]}',
                              style: const TextStyle(fontSize: 20),
                            ),
                            const SizedBox(height: 5),
                            Text(
                              'Total Cancelled  : ${betHistoryController2.makeOrder['order']["totalamount"]}',
                              style: const TextStyle(fontSize: 20),
                            ),
                            const SizedBox(height: 5),
                          ],
                        ),
                ),
                Obx(() {
                  return Container(
                    padding: const EdgeInsets.only(left: 10),
                    margin:
                        const EdgeInsets.only(bottom: 5, left: 20, right: 20),
                    color: betHistoryController2.makeOrder['order']["status"] ==
                            'active'
                        ? const Color(0xffd3f5f8)
                        : Colors.red.withOpacity(0.5),
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
                                  // Show the popup menu
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
                                                      betHistoryController2
                                                          .tryToCancelOrder(
                                                              orderID: betHistoryController2
                                                                          .makeOrder[
                                                                      'order'][
                                                                  "recept_id"]);
                                                      Get.back();
                                                      //Close the dialog
                                                      setState(() {});
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
                                      PopupMenuItem(
                                        onTap: () {},
                                        value: 'option2',
                                        child: const Text("Print page"),
                                      ),
                                      const PopupMenuItem(
                                        value: 'option3',
                                        child: Text('Sms Page'),
                                      ),
                                      PopupMenuItem(
                                        onTap: () {
                                          Share.share(
                                              '${betHistoryController2.makeOrder['order']["username"]}(${betHistoryController2.makeOrder['order']["order_count"]}) \n${betHistoryController2.makeOrder['order']["created_at"].toString().split('T')[0]} ${betHistoryController2.makeOrder['order']["created_at"].toString().split('T')[1].substring(0, 8)} \n${betHistoryController2.makeOrder['order']["workingdate"]}\n${betHistoryController2.makeOrder['order']["lotterycode"]}  \nT (${betHistoryController2.makeOrder['order']["totalamount"]})');
                                        },
                                        value: 'option3',
                                        child: const Text('Share '),
                                      ),
                                      const PopupMenuItem(
                                        value: 'option3',
                                        child: Text('Revert'),
                                      ),
                                    ],
                                    position: RelativeRect.fill,
                                  );
                                },
                                child: const Text("More >"),
                              ),
                            )),
                        Row(
                          children: [
                            Text(betHistoryController2.makeOrder['order']
                                    ["username"]
                                .toString()),
                            Text(
                                "(${betHistoryController2.makeOrder['order']["order_count"].toString()})"),
                          ],
                        ),
                        const SizedBox(
                          height: 3,
                        ),
                        Text(
                          "${betHistoryController2.makeOrder['order']["created_at"].toString().split('T')[0]} ${betHistoryController2.makeOrder['order']["created_at"].toString().split('T')[1].substring(0, 8)}",
                        ),
                        const SizedBox(
                          height: 3,
                        ),
                        Text(betHistoryController2.makeOrder['order']
                                ["workingdate"]
                            .toString()),
                        const SizedBox(
                          height: 3,
                        ),
                        Text(betHistoryController2.makeOrder['order']
                                ["lotterycode"]
                            .toString()),
                        const SizedBox(
                          height: 3,
                        ),
                        Text(
                            'T (${betHistoryController2.makeOrder['order']["totalamount"]})'
                                .toString()),
                        const SizedBox(
                          height: 3,
                        ),
                      ],
                    ),
                  );
                })
              ],
            ),
          );
        }));
  }
}
