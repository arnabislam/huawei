import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:intl/intl.dart';

import 'draw_result_view.dart';

class JackpotView extends StatefulWidget {
  const JackpotView({Key? key}) : super(key: key);

  @override
  State<JackpotView> createState() => _JackpotViewState();
}

class _JackpotViewState extends State<JackpotView> {
  @override
  Widget build(BuildContext context) {
    bool? _isChecked=false;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.black,
        title: const Text('HUAWEI88'),
        leading: IconButton(onPressed: (){
          Get.back();
        }, icon: Icon(Icons.arrow_back_ios)),


      ),
      body:Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(

              children: [
                Container(
                  height: 45,
                  color: Colors.red,
                  child: const Center(child: Text("Jackpot",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 21),)),
                ),
                SizedBox(height: 18,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    const Expanded(
                      flex: 4,
                      child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text("Date from",style: TextStyle(fontSize: 17,),),
                      ),
                    ),
                    Expanded(
                        flex: 1,
                        child: Text(":")),
                    Expanded(
                      flex: 3,
                      child: Row(

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
                        child: Text("Date To",style: TextStyle(fontSize: 17,),),
                      ),
                    ),
                    Expanded(
                        flex: 1,
                        child: Text(":")),
                    Expanded(
                      flex: 3,
                      child: Row(

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
                    ),
                  ],
                ),

                 Row(
                  children: [
                    Expanded(
                      flex: 4,
                      child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text("Page Id       ",style: TextStyle(fontSize: 17,),),
                      ),
                    ),
                    Expanded(
                        flex: 1,
                        child: Text(":")),
                    Expanded(
                      flex: 3,
                      child: Padding(
                        padding: EdgeInsets.only(right:24.0,left: 8,bottom: 0,),
                        child: Column(
                          children: [
                            TextField(

                              decoration: InputDecoration(


                                hintStyle: TextStyle(color: Colors.grey, fontSize: 19),
                              ),
                            ),
                            Row(
                              children: [
                                Expanded(
                                  flex: 1,
                                  child: Checkbox(
                                    value: _isChecked,
                                    tristate: true,
                                    activeColor: Colors.red,
                                    checkColor: Colors.green,
                                    onChanged: (newBool) {
                                      setState(() {
                                        _isChecked = newBool ; // Set to false if newBool is null
                                        print(_isChecked);
                                      });
                                    },
                                  ),
                                ),
                                Expanded(
                                  flex: 3,
                                    child: Text("Include Downlines")),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),

              ],
            ),
            rsubmitButton(buttonName: "Submit")
          ],
        ),
      ),
    );
  }
}
//date picker
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