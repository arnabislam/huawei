import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:huawei_new/app/modules/bet/views/cancel_bet_history_result_view.dart';

class BetHistoryResultView extends GetView {
  const BetHistoryResultView({Key? key}) : super(key: key);

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
          SizedBox(height: 25),
          Expanded(
            child: ListView.builder(
              itemCount: 5,
              itemBuilder: (context, index) {
                return Container(
                  padding: EdgeInsets.only(left: 10),
                  margin: EdgeInsets.only(bottom: 5,left: 20,right: 20),
                  color: const Color(0xffd3f5f8),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [

                      Align(
                          alignment:Alignment.centerRight,
                          child: Padding(
                            padding: const EdgeInsets.only(left: 8.0,right: 8,top: 15),
                            child: InkWell(


                                onTap: (){
                                  showDialog(
                                    context: context,
                                    builder: (BuildContext context) {
                                      return AlertDialog(

                                        content: Column(
                                          crossAxisAlignment: CrossAxisAlignment.center,
                                          mainAxisSize: MainAxisSize.min,
                                          children: [
                                            InkWell(


                                                onTap: (){
                                                  showDialog(
                                                    context: context,
                                                    builder: (BuildContext context) {
                                                      return AlertDialog(
                                                        title: Text('Cancel Number',style: TextStyle(fontWeight: FontWeight.bold),),
                                                        content: Text("Confirm Cancel"),
                                                        actions: [
                                                          ElevatedButton(
                                                            onPressed: () {
                                                              Navigator.of(context).pop(); // Close the dialog
                                                            },
                                                            child: Text('No'),
                                                          ), ElevatedButton(
                                                            onPressed: () {
                                                             Get.offAll(const CancelBetHistoryResultView())
                                                              ;// Close the dialog
                                                            },
                                                            child: Text('Yes'),
                                                          ),
                                                        ],
                                                      );
                                                    },
                                                  );
                                                },

                                                child: Text('Cancel Page')),
                                            SizedBox(height: 2,),
                                            Text('Print Page'),             SizedBox(height: 2,),
                                            Text('Smas Page'),             SizedBox(height: 2,),
                                            Text('Share'),             SizedBox(height: 2,),
                                            Text('Revert'),             SizedBox(height: 2,),
                                          ],
                                        ),

                                      );
                                    },
                                  );
                                },
                                child: Text("More>")),
                          )),
                      Text("HW6365"),
                      SizedBox(height: 3,),
                      Text("2023-12-15, 12.01"), SizedBox(height: 3,),
                      Text("16"), SizedBox(height: 3,),
                      Text("MPTSBKW*"), SizedBox(height: 3,),
                      Text("1692 B2"), SizedBox(height: 3,),
                      Text("T(14)"), SizedBox(height: 3,),
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
