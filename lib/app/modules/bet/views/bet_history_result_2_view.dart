import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:huawei_new/app/modules/bet/views/bet_view.dart';


import '../controllers/bet_controller.dart';
import 'bet_history_result_view.dart';
import 'cancel_bet_history_result_view.dart';

class BetHistoryResult2View extends GetView {
   BetHistoryResult2View({Key? key}) : super(key: key);
  final betHistoryController2 = Get.put(BetController());

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
      body:Column(
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
          Container(
            padding: EdgeInsets.only(left: 10),
            margin: EdgeInsets.only(bottom: 5, left: 20, right: 20),
            color: const Color(0xffd3f5f8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                Align(
                    alignment: Alignment.centerRight,
                    child: Padding(
                      padding: const EdgeInsets.only(
                          left: 8.0, right: 8, top: 15),
                      child:
                      InkWell(
                        onTap: () {
                          // Show the popup menu
                          showMenu(
                            context: context,
                            // position: RelativeRect.fromLTRB(0, 0, 100, 0), // Adjust the position as needed
                            items: [

                              PopupMenuItem<String>(
                                onTap: ( ){
                                  showDialog(
                                    context: context,
                                    builder: (
                                        BuildContext context) {
                                      return AlertDialog(
                                        title: const Text(
                                          'Cancel Number',
                                          style: TextStyle(
                                              fontWeight: FontWeight
                                                  .bold,fontSize: 21),),
                                        content: Text(
                                            "Confirm Cancel"),
                                        actions: [
                                          ElevatedButton(
                                            onPressed: () {
                                              Navigator.of(
                                                  context)
                                                  .pop(); // Close the dialog
                                            },
                                            child: Text('No'),
                                          ), ElevatedButton(
                                            onPressed: () {
                                              Get.to(
                                                   BetView());
                                              //Close the dialog

                                            },
                                            child: const Text(
                                                'Yes'),
                                          ),

                                        ],
                                        contentPadding: const EdgeInsets.symmetric(horizontal: 50.0),
                                      );
                                    },

                                  );
                                },
                                child: Text('Cancel Page'),
                                value: 'option1',
                              ),
                              PopupMenuItem(
                                onTap: (){

                                },
                                child: Text("Print page"),
                                value: 'option2',
                              ),
                              PopupMenuItem(
                                child: Text('Sms Page'),
                                value: 'option3',
                              ),PopupMenuItem(
                                child: Text('Share '),
                                value: 'option3',
                              ),PopupMenuItem(
                                child: Text('Revert'),
                                value: 'option3',
                              ),
                            ], position: RelativeRect.fill,
                          );
                        },
                        child: Text("More>"),
                      ),

                      // InkWell(
                      //
                      //
                      //     onTap: () {
                      //       print("gfty");
                      //       showDialog(
                      //
                      //         context: context,
                      //         builder: (BuildContext context) {
                      //           return AlertDialog(
                      //
                      //             content: Column(
                      //               crossAxisAlignment: CrossAxisAlignment
                      //                   .center,
                      //               mainAxisSize: MainAxisSize.min,
                      //               children: [
                      //                 InkWell(
                      //
                      //
                      //                     onTap: () {
                      //                       showDialog(
                      //                         context: context,
                      //                         builder: (
                      //                             BuildContext context) {
                      //                           return AlertDialog(
                      //                             title: const Text(
                      //                               'Cancel Number',
                      //                               style: TextStyle(
                      //                                   fontWeight: FontWeight
                      //                                       .bold),),
                      //                             content: Text(
                      //                                 "Confirm Cancel"),
                      //                             actions: [
                      //                               ElevatedButton(
                      //                                 onPressed: () {
                      //                                   Navigator.of(
                      //                                       context)
                      //                                       .pop(); // Close the dialog
                      //                                 },
                      //                                 child: Text('No'),
                      //                               ), ElevatedButton(
                      //                                 onPressed: () {
                      //                                   Get.offAll(
                      //                                       const CancelBetHistoryResultView());
                      //                                   // Close the dialog
                      //                                 },
                      //                                 child: const Text(
                      //                                     'Yes'),
                      //                               ),
                      //
                      //                             ],
                      //                                                                     contentPadding: const EdgeInsets.symmetric(horizontal: 50.0),
                      //                           );
                      //                         },
                      //
                      //                       );
                      //                     },
                      //
                      //                     child: Text('Cancel Page')),
                      //                 SizedBox(height: 2,),
                      //                 Text('Print Page'),
                      //                 SizedBox(height: 2,),
                      //                 Text('Smas Page'),
                      //                 SizedBox(height: 2,),
                      //                 Text('Share'),
                      //                 SizedBox(height: 2,),
                      //                 Text('Revert'),
                      //                 SizedBox(height: 2,),
                      //               ],
                      //             ),
                      //
                      //           );
                      //         },
                      //       );
                      //
                      //      PopupMenuButton(itemBuilder: (context)=>[
                      //        PopupMenuItem(
                      //
                      //          child: Text('Option 1'),
                      //        ), const PopupMenuItem(
                      //
                      //          child: Text('Option 1'),
                      //        ), PopupMenuItem(
                      //
                      //          child: Text('Option 1'),
                      //        ),
                      //      ]);
                      //
                      //     },
                      //     child: Text("More>")),
                    )),
                Row(
                  children: [
                    Text(betHistoryController2.makeOrder['order']["username"].toString()),
                    Text("(${betHistoryController2.makeOrder['order']["order_count"].toString()})"),


                  ],
                ),
                SizedBox(height: 3,),
                Text(betHistoryController2.makeOrder['order']["created_at"].toString()) ,SizedBox(height: 3,),
                Text(betHistoryController2.makeOrder['order']["workingdate"].toString()), SizedBox(height: 3,),
                Text(betHistoryController2.makeOrder['order']["companies"].toString()), SizedBox(height: 3,),
                Text(betHistoryController2.makeOrder['order']["lotterycode"].toString()), SizedBox(height: 3,),

                Text(betHistoryController2.makeOrder['order']["totalamount"].toString()), SizedBox(height: 3,),

              ],
            ),
          )
        ],
      )
    );
  }
}
