import 'package:date_picker_plus/date_picker_plus.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:intl/intl.dart';

import '../../auth/controllers/auth_controller.dart';
import 'draw_result_view.dart';

class WinLoseView extends StatefulWidget {
  const WinLoseView({Key? key}) : super(key: key);

  @override
  State<WinLoseView> createState() => _WinLoseViewState();
}

class _WinLoseViewState extends State<WinLoseView> {
  @override
  Widget build(BuildContext context) {
    String _selectedBet = 'Show All';
    bool? _isChecked=false;
    final authctrl = Get.put(AuthController());

//birthday date
//     Future<void> _selectDate() async {
//       final DateTime? picked = await showDatePicker(
//         context: context,
//         initialDate: selectedDate ?? DateTime.now(),
//         firstDate: DateTime(2000),
//         lastDate: DateTime(2100),
//       );
//
//       if (picked != null && picked != selectedDate) {
//         setState(() {
//           selectedDate = picked;
//           // profileUpdateController.updateBirthday(
//           //     birthDay:
//           DateFormat("dd-MM-yyyy").format(selectedDate!).toString();
//         });
//       }
//     }

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
                SizedBox(height: 18,),
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
                    Expanded(
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
                              tristate: true,
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
                                      value: _isChecked,
                                      tristate: true,
                                      activeColor: Colors.red,
                                      checkColor: Colors.green,
                                      onChanged: (newBool) {
                                        setState(() {
                                          _isChecked = newBool; // Set to false if newBool is null
                                          print(_isChecked);
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
                                    Text("Toto"),
                                  ],
                                ),
                              ),
                              Expanded(
                                flex: 1,
                                child: Row(
                                  children: [
                                    Checkbox(
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
                                    Text("Sabah"),
                                  ],
                                ),
                              ),
                              Expanded(
                                flex: 1,
                                child: Row(
                                  children: [
                                    Checkbox(
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
                                    Text("Sarawak"),
                                  ],
                                ),
                              ),
                              Expanded(
                                flex: 1,
                                child: Row(
                                  children: [
                                    Checkbox(
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