import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:intl/intl.dart';

import '../../auth/controllers/auth_controller.dart';
import 'draw_result_view.dart';

class WinNumberView extends StatefulWidget {
  const WinNumberView({Key? key}) : super(key: key);

  @override
  State<WinNumberView> createState() => _WinNumberViewState();
}

class _WinNumberViewState extends State<WinNumberView> {
  bool? _isChecked=false;
  bool? isMagnum=false;
  bool? isPmp=false;
  bool? isToto=false;
  bool? isSingapore=false;
  bool? isSabah=false;
  bool? isSandakan=false;
  bool? isSarwak=false;
  bool? isGdLotto=false;
  bool? isNineLotto=false;
  String _selectedBet = '';

  @override
  Widget build(BuildContext context) {


 //   final authctrl = Get.put(AuthController());



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
                  child: const Center(child: Text("Win Lose",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 21),)),
                ),
                const SizedBox(height: 18,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    const Expanded(
                      flex: 2,
                      child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text("Date From",style: TextStyle(fontSize: 17,),),
                      ),
                    ),
                    const Expanded(
                        flex: 1,
                        child: Text(":")),
                    Expanded(
                      flex: 3,
                      child: Column(
                        children: [
                          MyDatePicker(),
                          Padding(
                            padding: const EdgeInsets.only(right: 10.0),
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
                      flex: 2,
                      child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text("Date To",style: TextStyle(fontSize: 17,),),
                      ),
                    ),
                    const Expanded(
                        flex: 1,
                        child: Text(":")),
                    Expanded(
                      flex: 3,
                      child: Column(
                        children: [
                          MyDatePicker(),
                          Padding(
                            padding: const EdgeInsets.only(right: 10.0),
                            child: Divider(height: 25,color: Colors.blue,),
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
                        padding: EdgeInsets.only(left: 8.0,right: 8,top:8,bottom: 14),
                        child: Text("Currency",style: TextStyle(fontSize: 17,),),
                      ),
                    ),
                    const Expanded(
                        flex: 1,
                        child: Text(":")),
                    Expanded(
                      flex: 3,
                      child: InkWell(
                        onTap: () {
                          showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return AlertDialog(

                                content: StatefulBuilder(
                                  builder: (BuildContext context, StateSetter setState) {
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


                                        // You can add more RadioListTile widgets for additional genders
                                      ],
                                    );
                                  },
                                ),
                                actions: [
                                  ElevatedButton(
                                    child: const Text('Cancel'),
                                    onPressed: () {
                                      Navigator.of(context).pop();
                                    },
                                  ),
                                  ElevatedButton(
                                    child: const Text('Save'),
                                    onPressed: () {

                                      Navigator.of(context).pop();
                                    },
                                  ),
                                ],

                              );
                            },
                          );
                        },
                        child: Column(
                          children: [
                            Text('$_selectedBet'),
                            const Padding(
                              padding: EdgeInsets.only(right: 10.0),
                              child: Divider(height: 25,color: Colors.blue,),
                            )
                          ],
                        ), // Fixed the typo here
                      ),

                    ),
                  ],
                ),
                SizedBox(height: 20,),
                Container(
                  height: MediaQuery.sizeOf(context).height*.35,
                  width:  MediaQuery.sizeOf(context).width*.9,
                  color: Color(0xfffffae7),
                  child: Column(
                    children: [
                      Container(
                        height: MediaQuery.sizeOf(context).height*.04,
                        width:  MediaQuery.sizeOf(context).width*.9,

                        color: Color(0xff48486e),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text("Draw Type ",style: TextStyle(color: Colors.white,fontSize: 17,fontWeight: FontWeight.w500),),
                            Checkbox(
                              value: _isChecked,

                              activeColor: Colors.red,
                              checkColor: Colors.green,
                              onChanged: (newBool) {
                                setState(() {
                                  _isChecked = newBool;
                                  print(_isChecked);
                                  ;                                });
                              },
                            ),
                            Text("Select/Deselect All",style: TextStyle(color: Colors.white,fontSize: 17,fontWeight: FontWeight.w500),),
                          ],
                        ),
                      ),
                      Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Expanded(
                                flex: 1,
                                child: Row(
                                  children: [
                                    Checkbox(
                                      value: isMagnum,

                                      activeColor: Colors.red,
                                      checkColor: Colors.green,
                                      onChanged: (newBool) {
                                        setState(() {
                                          isMagnum = newBool; // Set to false if newBool is null

                                        });
                                      },
                                    ),
                                    Text("Magnum"),
                                  ],
                                ),
                              ),
                              Expanded(
                                flex: 1,
                                child: Row(
                                  children: [
                                    Checkbox(
                                      value: isPmp,

                                      activeColor: Colors.red,
                                      checkColor: Colors.green,
                                      onChanged: (newBool) {
                                        setState(() {
                                          isPmp = newBool ; // Set to false if newBool is null
                                          print(isPmp);
                                        });
                                      },
                                    ),
                                    Text("PMP"),
                                  ],
                                ),
                              ),


                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Expanded(
                                flex: 1,
                                child: Row(
                                  children: [
                                    Checkbox(
                                      value: isToto,

                                      activeColor: Colors.red,
                                      checkColor: Colors.green,
                                      onChanged: (newBool) {
                                        setState(() {
                                          isToto = newBool ; // Set to false if newBool is null
                                          print(isToto);
                                        });
                                      },
                                    ),
                                    Text("Toto"),
                                  ],
                                ),
                              ),
                              Expanded(
                                flex: 1,
                                child: Row(
                                  children: [
                                    Checkbox(
                                      value: isSingapore,

                                      activeColor: Colors.red,
                                      checkColor: Colors.green,
                                      onChanged: (newBool) {
                                        setState(() {
                                          isSingapore = newBool ; // Set to false if newBool is null
                                          print(isSingapore);
                                        });
                                      },
                                    ),
                                    Text("Singapore"),
                                  ],
                                ),
                              ),


                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Expanded(
                                flex: 1,
                                child: Row(
                                  children: [
                                    Checkbox(
                                      value: isSabah,

                                      activeColor: Colors.red,
                                      checkColor: Colors.green,
                                      onChanged: (newBool) {
                                        setState(() {
                                          isSabah = newBool ; // Set to false if newBool is null
                                          print(isSabah);
                                        });
                                      },
                                    ),
                                    Text("Sabah"),
                                  ],
                                ),
                              ),
                              Expanded(
                                flex: 1,
                                child: Row(
                                  children: [
                                    Checkbox(
                                      value: isSandakan,

                                      activeColor: Colors.red,
                                      checkColor: Colors.green,
                                      onChanged: (newBool) {
                                        setState(() {
                                          isSandakan = newBool ; // Set to false if newBool is null
                                          print(isSandakan);
                                        });
                                      },
                                    ),
                                    Text("Sandakan"),
                                  ],
                                ),
                              ),


                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Expanded(
                                flex: 1,
                                child: Row(
                                  children: [
                                    Checkbox(
                                      value: isSarwak,

                                      activeColor: Colors.red,
                                      checkColor: Colors.green,
                                      onChanged: (newBool) {
                                        setState(() {
                                          isSarwak = newBool ; // Set to false if newBool is null
                                          print(isSarwak);
                                        });
                                      },
                                    ),
                                    Text("Sarawak"),
                                  ],
                                ),
                              ),
                              Expanded(
                                flex: 1,
                                child: Row(
                                  children: [
                                    Checkbox(
                                      value: isGdLotto,

                                      activeColor: Colors.red,
                                      checkColor: Colors.green,
                                      onChanged: (newBool) {
                                        setState(() {
                                          isGdLotto = newBool ; // Set to false if newBool is null
                                          print(isGdLotto);
                                        });
                                      },
                                    ),
                                    Text("GD Lotto"),
                                  ],
                                ),
                              ),


                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Expanded(
                                flex: 1,
                                child: Row(
                                  children: [
                                    Checkbox(
                                      value: isNineLotto,

                                      activeColor: Colors.red,
                                      checkColor: Colors.green,
                                      onChanged: (newBool) {
                                        setState(() {
                                          isNineLotto = newBool ; // Set to false if newBool is null
                                          print(isNineLotto);
                                        });
                                      },
                                    ),
                                    Text("Nine Lotto"),
                                  ],
                                ),
                              ),



                            ],
                          ),


                        ],
                      ),
                    ],
                  ),
                )

              ],
            ),
            const rsubmitButton(buttonName: "Submit")
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