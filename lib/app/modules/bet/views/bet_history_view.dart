import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:huawei_new/app/modules/bet/views/bet_history_result_view.dart';
import 'package:huawei_new/app/modules/report/views/draw_result_view.dart';
import 'package:intl/intl.dart';

import 'betmobile_view.dart';

class BetHistoryView extends GetView {
   BetHistoryView({Key? key}) : super(key: key);


  final TextEditingController _betHistoryPageIdController =
  TextEditingController();
  final TextEditingController _betHistoryNumberController =
  TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.black,
        title: const Text('HUAWEI88'),
        leading: IconButton(onPressed: (){
          Get.back();
        }, icon: Icon(Icons.arrow_back_ios)),


      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(

              children: [
                Container(
                  height: 45,
                  color: Colors.red,
                  child: const Center(child: Text("Bet History",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 21),)),
                ),
                 const SizedBox(height: 18,),
                 Row(
                   mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    const Expanded(
                      flex: 4,
                      child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text("Betting Date from",style: TextStyle(fontSize: 17,),),
                      ),
                    ),
                    const Expanded(
                        flex: 1,
                        child: Text(":")),
                    Expanded(
                      flex: 3,
                      child: Column(
                        children: [
                          Row(

                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              MyDatePicker(),

                              Container(
                                  height: 16,
                                  width: 16,
                                  decoration: BoxDecoration(color: Colors.black,shape: BoxShape.circle),
                                  child: Icon(Icons.close,color: Colors.white,size: 14,)),
                            ],
                          ),
                          const Padding(
                            padding: EdgeInsets.only(right: 6.0),
                            child: Divider(height: 25,color: Colors.blue,),
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
                      flex: 4,
                      child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text("Betting Date to",style: TextStyle(fontSize: 17,),),
                      ),
                    ),
                    const Expanded(
                        flex: 1,
                        child: Text(":")),
                    Expanded(
                      flex: 3,
                      child: Column(
                        children: [
                          Row(

                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              MyDatePicker(),

                              Container(
                                  height: 16,
                                  width: 16,
                                  decoration: BoxDecoration(color: Colors.black,shape: BoxShape.circle),
                                  child: Icon(Icons.close,color: Colors.white,size: 14,)),
                            ],
                          ),
                          const Padding(
                            padding: EdgeInsets.only(right: 6.0),
                            child: Divider(height: 25,color: Colors.blue,),
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
                      flex: 4,
                      child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text("Result Date from",style: TextStyle(fontSize: 17,),),
                      ),
                    ),
                    Expanded(
                        flex: 1,
                        child: Text(":")),
                    Expanded(
                      flex: 3,
                      child: Column(
                        children: [
                          Row(

                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              MyDatePicker(),

                              Container(
                                  height: 16,
                                  width: 16,
                                  decoration: BoxDecoration(color: Colors.black,shape: BoxShape.circle),
                                  child: Icon(Icons.close,color: Colors.white,size: 14,)),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 6.0),
                            child: Divider(height: 25,color: Colors.blue,),
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
                      flex: 4,
                      child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text("Result Date to",style: TextStyle(fontSize: 17,),),
                      ),
                    ),
                    Expanded(
                        flex: 1,
                        child: Text(":")),
                    Expanded(
                      flex: 3,
                      child:
                      Column(
                        children: [
                          Row(

                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              MyDatePicker(),

                              Container(
                                  height: 16,
                                  width: 16,
                                  decoration: const BoxDecoration(color: Colors.black,shape: BoxShape.circle),
                                  child: const Icon(Icons.close,color: Colors.white,size: 14,)),
                            ],
                          ),
                          const Padding(
                            padding: EdgeInsets.only(right: 6.0),
                            child: Divider(height: 25,color: Colors.blue,),
                          )
                        ],
                      )



                    ),
                  ],
                ),
                  Row(
                  children: [
                    const Expanded(
                      flex: 4,
                      child: Padding(
                        padding: EdgeInsets.only(left: 8.0,right: 8,top:8,bottom: 14),
                        child: Text("Page ID ",style: TextStyle(fontSize: 17,),),
                      ),
                    ),
                    const Expanded(
                        flex: 1,
                        child: Text(":")),
                    Expanded(
                      flex: 3,
                      child: Padding(
                        padding: const EdgeInsets.only(right:24.0,left: 8,bottom: 24),
                        child: TextField(
                          controller: _betHistoryPageIdController,

                          decoration: const InputDecoration(



                            hintStyle: TextStyle(color: Colors.grey, fontSize: 19),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                  Row(
                  children: [
                    const Expanded(
                      flex: 4,
                      child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text("Number",style: TextStyle(fontSize: 17,),),
                      ),
                    ),
                    const Expanded(
                        flex: 1,
                        child: Text(":")),
                    Expanded(
                      flex: 3,
                      child: Padding(
                        padding: const EdgeInsets.only(right:24.0,left: 8,bottom: 34),
                        child: TextField(
                              controller: _betHistoryNumberController,
                          decoration: const InputDecoration(


                            hintStyle: TextStyle(color: Colors.grey, fontSize: 19),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),

              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(onPressed: (){
                Get.to(BetHistoryResultView());
              }, child: Center(child: Text("Submit",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17),))),
            )
          ],
        ),
      ),
    );
  }
}



//Date Picker
class MyDatePicker extends StatefulWidget {
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