import 'package:blue_thermal_printer/blue_thermal_printer.dart';
import 'package:bluetooth_print/bluetooth_print.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:huawei_new/app/modules/bet/controllers/bet_controller.dart';
import 'package:huawei_new/app/modules/bet/views/bet_view.dart';
import 'package:huawei_new/app/modules/bet/views/cancel_bet_history_result_view.dart';

class BetHistoryResultView extends StatefulWidget {
  BetHistoryResultView({Key? key}) : super(key: key);

  @override
  State<BetHistoryResultView> createState() => _BetHistoryResultViewState();
}

class _BetHistoryResultViewState extends State<BetHistoryResultView> {
  final betHistoryController = Get.put(BetController());

  BluetoothPrint bluetoothPrint=BluetoothPrint.instance;
  List<BluetoothDevice>_devices=[];
  String _deviceMsg='';

  // @override
  // void initState(){
  //   super.initState();
  //   WidgetsBinding.instance.addPostFrameCallback((_) =>initPrinter());
  //
  // }
  Future<void> initPrinter() async {
    bluetoothPrint.startScan(timeout: Duration(seconds: 2));

    if (!mounted) return;

    bluetoothPrint.scanResults.listen(( val) {
      if (!mounted) return;

      setState(()=> {
       print(val)
      });
      if(_devices.isEmpty)
        setState(() {
          _deviceMsg='No devices';
        });
    });
  }
  // Future<void> printItems(BluetoothDevice device) async {
  //   if (device != null && device.address != null) {
  //     try {
  //       await bluetoothPrint.connect(device);
  //       // Continue with the printing logic or any other actions after connecting
  //     } catch (e) {
  //       print('Error connecting to the Bluetooth printer: $e');
  //       // Handle the error as needed
  //     }
  //   } else {
  //     print('Invalid Bluetooth device or address');
  //     // Handle the case where the device or address is null
  //   }
  // }


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
            child:
               ListView.builder(
                itemCount: betHistoryController.orderList.length,
                itemBuilder: (context, index) {
                  return Container(
                    padding: EdgeInsets.only(left: 10),
                    margin: EdgeInsets.only(bottom: 5, left: 20, right: 20),
                    color: betHistoryController.orderList[index]['status']=='active'
                        ? Color(0xffd3f5f8) // Color when the condition is true
                        : Colors.red,

                    //Color(0xffd3f5f8),
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
                                                           CancelBetHistoryResultView());
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
                                        const PopupMenuItem(
                                          child: Text("Print page"),
                                          value: 'option2',
                                        ),
                                        const PopupMenuItem(
                                          child: Text('Sms Page'),
                                          value: 'option3',
                                        ),const PopupMenuItem(
                                          child: Text('Share '),
                                          value: 'option3',
                                        ),const PopupMenuItem(
                                          child: Text('Revert'),
                                          value: 'option3',
                                        ),
                                      ], position: RelativeRect.fill,
                                    );
                                  },

                                  child: Text("More>")),
                            )),
                        Text(betHistoryController.orderList[index]["username"]
                            .toString()),
                        SizedBox(height: 3,),
                        Text(betHistoryController.orderList[index]["created_at"]
                            .toString()), SizedBox(height: 3,),
                        Text(betHistoryController.orderList[index]['workingdate']
                            .toString()), SizedBox(height: 3,),
                        Text(betHistoryController.orderList[index]['companies']
                            .toString()), SizedBox(height: 3,),
                        Text(betHistoryController.orderList[index]['lotterycode']
                            .toString()), SizedBox(height: 3,),
                        Text("T(${betHistoryController.orderList[index]["totalamount"].toString()})"),
                        // Text(betHistoryController.orderList[index]['totalamount']
                        //     .toString()), SizedBox(height: 3,),

                      ],
                    ),
                  );
                },
              )

          ),
        ],
      ),
    );
  }
}


