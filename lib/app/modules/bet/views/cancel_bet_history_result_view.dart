import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:huawei_new/app/modules/bet/views/bet_view.dart';

class CancelBetHistoryResultView extends GetView {
  const CancelBetHistoryResultView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.black,
        title: const Text('HUAWEI88'),
        leading: IconButton(
          onPressed: () {
            Get.to(BetView());
          },
          icon: Icon(Icons.arrow_back_ios),
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
          SizedBox(
            height: 8,
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text("Total Accepted"),
              Text(":"),
              Text("123"),
            ],
          ),
          SizedBox(
            height: 5,
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text("Total Cancelled"),
              Text(":"),
              Text("123"),
            ],
          ),
          SizedBox(height: 25),
          Expanded(
            child: ListView.builder(
              itemCount: 5,
              itemBuilder: (context, index) {
                return Container(
                  padding: const EdgeInsets.only(left: 10),
                  margin: EdgeInsets.only(bottom: 5, left: 20, right: 20),
                  color: const Color(0xfff28680),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Align(
                          alignment: Alignment.centerRight,
                          child: Padding(
                            padding: const EdgeInsets.only(
                                left: 8.0, right: 8, top: 15),
                            child: InkWell(onTap: () {}, child: Text("More>")),
                          )),
                      Text("HW6365"),
                      SizedBox(
                        height: 3,
                      ),
                      const Text("2023-12-15, 12.01"),
                      SizedBox(
                        height: 3,
                      ),
                      Text("16"),
                      SizedBox(
                        height: 3,
                      ),
                      Text("MPTSBKW*"),
                      SizedBox(
                        height: 3,
                      ),
                      Text("1692 B2"),
                      SizedBox(
                        height: 3,
                      ),
                      Text("T(14)"),
                      SizedBox(
                        height: 3,
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
