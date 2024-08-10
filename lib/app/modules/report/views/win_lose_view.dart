import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:get/get.dart';
import 'package:huawei_new/app/modules/report/controllers/report_controller.dart';
import 'package:intl/intl.dart';
import 'package:loading_overlay/loading_overlay.dart';

import '../../auth/controllers/auth_controller.dart';

class WinLoseView extends StatefulWidget {
  const WinLoseView({Key? key}) : super(key: key);

  @override
  State<WinLoseView> createState() => _WinLoseViewState();
}

class _WinLoseViewState extends State<WinLoseView> {
  bool? isMagnum = false;
  bool? isPmp = false;
  bool? isToto = false;
  bool? isSingapore = false;
  bool? isSabah = false;
  bool? isSandakan = false;
  bool? isSarwak = false;
  bool? isGdLotto = false;
  bool? isNineLotto = false;

  String _selectedBet = 'Show All';

  @override
  Widget build(BuildContext context) {
    final authctrl = Get.put(AuthController());
    final reportController = Get.put(ReportController());

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
      body: Obx(() {
        return LoadingOverlay(
          isLoading: reportController.isLoading.value,
          progressIndicator: const SpinKitDualRing(
            size: 40,
            color: Colors.blue,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
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
                            fontSize: 21),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 18,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      const Expanded(
                        flex: 2,
                        child: Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            "Date From",
                            style: TextStyle(
                              fontSize: 17,
                            ),
                          ),
                        ),
                      ),
                      const Expanded(flex: 1, child: Text(":")),
                      Expanded(
                        flex: 3,
                        child: Column(
                          children: [
                            MyDatePicker(
                              onDateSelected: (date) {
                                reportController.startDate.value = date;
                              },
                            ),
                            const Padding(
                              padding: EdgeInsets.only(right: 10.0),
                              child: Divider(
                                height: 25,
                                color: Colors.blue,
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      const Expanded(
                        flex: 2,
                        child: Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            "Date To",
                            style: TextStyle(
                              fontSize: 17,
                            ),
                          ),
                        ),
                      ),
                      const Expanded(flex: 1, child: Text(":")),
                      Expanded(
                        flex: 3,
                        child: Column(
                          children: [
                            MyDatePicker(
                              onDateSelected: (date) {
                                reportController.endDate.value = date;
                              },
                            ),
                            const Padding(
                              padding: EdgeInsets.only(right: 10.0),
                              child: Divider(
                                height: 25,
                                color: Colors.blue,
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      const Expanded(
                        flex: 2,
                        child: Padding(
                          padding: EdgeInsets.only(
                              left: 8.0, right: 8, top: 8, bottom: 14),
                          child: Text(
                            "Currency",
                            style: TextStyle(
                              fontSize: 17,
                            ),
                          ),
                        ),
                      ),
                      const Expanded(flex: 1, child: Text(":")),
                      Expanded(
                        flex: 3,
                        child: InkWell(
                          onTap: () {
                            showDialog(
                              context: context,
                              builder: (BuildContext context) {
                                return AlertDialog(
                                  content: StatefulBuilder(
                                    builder: (BuildContext context,
                                        StateSetter setState) {
                                      return Column(
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          RadioListTile<String>(
                                            title: const Text('Show All'),
                                            value: 'Show All',
                                            groupValue: _selectedBet,
                                            onChanged: (value) {
                                              setState(() {
                                                _selectedBet = value!;
                                                print(_selectedBet);
                                              });
                                            },
                                          ),
                                          RadioListTile<String>(
                                            title: const Text('MYR'),
                                            value: 'MYR',
                                            groupValue: _selectedBet,
                                            onChanged: (value) {
                                              setState(() {
                                                _selectedBet = value!;
                                                print(_selectedBet);
                                              });
                                            },
                                          ),
                                          RadioListTile<String>(
                                            title: const Text('SGD- 3.48'),
                                            value: 'SGD- 3.48',
                                            groupValue: _selectedBet,
                                            onChanged: (value) {
                                              setState(() {
                                                _selectedBet = value!;
                                                print(_selectedBet);
                                              });
                                            },
                                          ),
                                        ],
                                      );
                                    },
                                  ),
                                );
                              },
                            );
                          },
                          child: Column(
                            children: [
                              Text(_selectedBet),
                              const Padding(
                                padding: EdgeInsets.only(right: 10.0),
                                child: Divider(
                                  height: 25,
                                  color: Colors.blue,
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                ],
              ),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
                  onPressed: () {
                    // reportController.winLoss();

                    reportController.winLossTest();
                  },
                  child: const Center(
                      child: Text(
                    "Submit",
                    style: TextStyle(color: Colors.white),
                  )))
            ],
          ),
        );
      }),
    );
  }
}

//Date Picker widget that receives a callback
class MyDatePicker extends StatefulWidget {
  final Function(DateTime) onDateSelected;

  MyDatePicker({required this.onDateSelected});

  @override
  _MyDatePickerState createState() => _MyDatePickerState();
}

class _MyDatePickerState extends State<MyDatePicker> {
  DateTime? selectedDate;

  Future<void> _selectDate() async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: selectedDate ?? DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2100),
    );

    if (picked != null && picked != selectedDate) {
      setState(() {
        selectedDate = picked;
        widget.onDateSelected(picked); // Callback to update the selected date
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _selectDate,
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(
              selectedDate != null
                  ? DateFormat("dd-MM-yyyy").format(selectedDate!).toString()
                  : '2-05-2024',
              style: const TextStyle(color: Colors.black, fontSize: 17),
            ),
          ],
        ),
      ),
    );
  }
}
