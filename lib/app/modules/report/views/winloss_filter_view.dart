import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:get/get.dart';
import 'package:huawei_new/app/modules/report/controllers/report_controller.dart';
import 'package:intl/intl.dart';
import 'package:loading_overlay/loading_overlay.dart';

class WinLossFilter extends GetView {
  WinLossFilter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ReportController repcontroller = Get.put(ReportController());
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.black,
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
          isLoading: repcontroller.isLoading.value,
          progressIndicator: const SpinKitDoubleBounce(
            color: Colors.blueAccent,
            size: 60,
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
                      "Winner History",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 21),
                    )),
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
                                repcontroller.startDate.value = date;
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
                                repcontroller.endDate.value = date;
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
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                  onPressed: () {
                    repcontroller.winNoticeListTest();

                    // controller.fetchOrderList();
                  },
                  child: const Center(
                    child: Text(
                      "Submit",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                    ),
                  ),
                ),
              )
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
