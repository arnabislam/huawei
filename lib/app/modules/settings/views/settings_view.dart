import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../bet/views/all_view.dart';
import '../../report/views/draw_result_view.dart';
import '../controllers/settings_controller.dart';

class SettingsView extends StatefulWidget {
  const SettingsView({Key? key}) : super(key: key);

  @override
  State<SettingsView> createState() => _SettingsViewState();
}

class _SettingsViewState extends State<SettingsView> {
  final TextEditingController _printerFontSizeController =
  TextEditingController();
  final TextEditingController _printerLanguageController =
  TextEditingController();
  final TextEditingController _betMethodController =
  TextEditingController();
  final TextEditingController _receiptDateController =
  TextEditingController();
  final TextEditingController _betOrderController =
  TextEditingController();
  final TextEditingController _bettingCommandController =
  TextEditingController();
  final TextEditingController _receiptRejectController =
  TextEditingController();





  bool? _isChecked=false;
  bool? isSingaporDollar=false;
  bool? isLongPress=false;
  @override
  Widget build(BuildContext context) {
    String selectedFontSize = '';

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.black,
        title: const Text('HUAWEI88'),
        leading: IconButton(onPressed: (){
          Get.back();
        }, icon: Icon(Icons.arrow_back_ios)),


      ),
      body:  Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [

          Column(
            children: [
              Container(
                height: 45,
                color: Colors.red,
                child: const Center(child: Text("Setting",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 21),)),
              ),
              SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  const Expanded(
                    flex: 3,
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text("Printer Font Size",style: TextStyle(fontSize: 15,),),
                    ),
                  ),
                  Expanded(
                      flex: 1,
                      child: Text(":")),
                  Expanded(
                    flex: 3,
                    child: InkWell(

                        onTap: (){
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
                                          title: const Text('Medium'),
                                          value: 'Medium',
                                          groupValue: selectedFontSize,
                                          onChanged: (value) {
                                            setState(() {
                                              selectedFontSize = value!;

                                            });
                                          },
                                        ),
                                        RadioListTile<String>(
                                          title: const Text('L1'),
                                          value: 'L1',
                                          groupValue: selectedFontSize,
                                          onChanged: (value) {
                                            setState(() {
                                              selectedFontSize = value!;

                                            });
                                          },
                                        ),
                                        RadioListTile<String>(
                                          title: const Text('L2'),
                                          value: 'L2',
                                          groupValue: selectedFontSize,
                                          onChanged: (value) {
                                            setState(() {
                                              selectedFontSize = value!;

                                            });
                                          },
                                        ),
                                        RadioListTile<String>(
                                          title: const Text('XL'),
                                          value: 'XL',
                                          groupValue: selectedFontSize,
                                          onChanged: (value) {
                                            setState(() {
                                              selectedFontSize = value!;

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
                            Text(selectedFontSize,style: TextStyle(fontSize: 15),),
                            Padding(
                              padding: const EdgeInsets.only(right: 6.0),
                              child: Divider(height: 25,color: Colors.blue,),
                            )
                          ],
                        )),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  const Expanded(
                    flex: 3,
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text("Printer Language",style: TextStyle(fontSize: 15,),),
                    ),
                  ),
                  Expanded(
                      flex: 1,
                      child: Text(":")),
                  Expanded(
                    flex: 3,
                    child: InkWell(

                        onTap: (){
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
                                          title: const Text('Auto'),
                                          value: 'Auto',
                                          groupValue: selectedFontSize,
                                          onChanged: (value) {
                                            setState(() {
                                              selectedFontSize = value!;

                                            });
                                          },
                                        ),
                                        RadioListTile<String>(
                                          title: const Text('L1'),
                                          value: 'L1',
                                          groupValue: selectedFontSize,
                                          onChanged: (value) {
                                            setState(() {
                                              selectedFontSize = value!;

                                            });
                                          },
                                        ),
                                        RadioListTile<String>(
                                          title: const Text('L2'),
                                          value: 'L2',
                                          groupValue: selectedFontSize,
                                          onChanged: (value) {
                                            setState(() {
                                              selectedFontSize = value!;

                                            });
                                          },
                                        ),
                                        RadioListTile<String>(
                                          title: const Text('XL'),
                                          value: 'XL',
                                          groupValue: selectedFontSize,
                                          onChanged: (value) {
                                            setState(() {
                                              selectedFontSize = value!;

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
                            Text(selectedFontSize,style: TextStyle(fontSize: 15),),
                            Padding(
                              padding: const EdgeInsets.only(right: 6.0),
                              child: Divider(height: 25,color: Colors.blue,),
                            )
                          ],
                        )),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  const Expanded(
                    flex: 3,
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text("Printer Font Size",style: TextStyle(fontSize: 15,),),
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
                          children: [
                            Checkbox(
                              value: _isChecked,

                              activeColor: Colors.red,
                              checkColor: Colors.green,
                              onChanged: (newBool) {
                                setState(() {
                                  _isChecked = newBool ; // Set to false if newBool is null
                                  print(_isChecked);
                                });
                              },
                            ),
                            Text("Malaysia Ringigit"),
                          ],
                        ),
                        Row(
                          children: [
                            Checkbox(
                              value: isSingaporDollar,

                              activeColor: Colors.red,
                              checkColor: Colors.green,
                              onChanged: (newBool) {
                                setState(() {
                                  isSingaporDollar = newBool ; // Set to false if newBool is null
                                  print(isSingaporDollar);
                                });
                              },
                            ),
                            Text("Singapore Dollar"),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  const Expanded(
                    flex: 3,
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text("Bet Method",style: TextStyle(fontSize: 15,),),
                    ),
                  ),
                  Expanded(
                      flex: 1,
                      child: Text(":")),
                  Expanded(
                    flex: 3,
                    child: InkWell(

                        onTap: (){
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
                                          title: const Text('Multiply'),
                                          value: 'Multiply',
                                          groupValue: selectedFontSize,
                                          onChanged: (value) {
                                            setState(() {
                                              selectedFontSize = value!;

                                            });
                                          },
                                        ),
                                        RadioListTile<String>(
                                          title: const Text('Divide'),
                                          value: 'Divide',
                                          groupValue: selectedFontSize,
                                          onChanged: (value) {
                                            setState(() {
                                              selectedFontSize = value!;

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
                            Text(selectedFontSize,style: TextStyle(fontSize: 15),),
                            Padding(
                              padding: const EdgeInsets.only(right: 6.0),
                              child: Divider(height: 25,color: Colors.blue,),
                            )
                          ],
                        )),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  const Expanded(
                    flex: 3,
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text("Receipt Date",style: TextStyle(fontSize: 15,),),
                    ),
                  ),
                  Expanded(
                      flex: 1,
                      child: Text(":")),
                  Expanded(
                    flex: 3,
                    child: InkWell(

                        onTap: (){
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
                                          title: const Text('yyyy'),
                                          value: 'yyyy',
                                          groupValue: selectedFontSize,
                                          onChanged: (value) {
                                            setState(() {
                                              selectedFontSize = value!;

                                            });
                                          },
                                        ),
                                        RadioListTile<String>(
                                          title: const Text('99'),
                                          value: '99',
                                          groupValue: selectedFontSize,
                                          onChanged: (value) {
                                            setState(() {
                                              selectedFontSize = value!;

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
                            Text(selectedFontSize,style: TextStyle(fontSize: 15),),
                            Padding(
                              padding: const EdgeInsets.only(right: 6.0),
                              child: Divider(height: 25,color: Colors.blue,),
                            )
                          ],
                        )),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  const Expanded(
                    flex: 3,
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text("Bet Order",style: TextStyle(fontSize: 15,),),
                    ),
                  ),
                  Expanded(
                      flex: 1,
                      child: Text(":")),
                  Expanded(
                    flex: 3,
                    child: InkWell(

                        onTap: (){
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
                                          title: const Text('Auto'),
                                          value: 'Auto',
                                          groupValue: selectedFontSize,
                                          onChanged: (value) {
                                            setState(() {
                                              selectedFontSize = value!;

                                            });
                                          },
                                        ),
                                        RadioListTile<String>(
                                          title: const Text('L1'),
                                          value: 'L1',
                                          groupValue: selectedFontSize,
                                          onChanged: (value) {
                                            setState(() {
                                              selectedFontSize = value!;

                                            });
                                          },
                                        ),
                                        RadioListTile<String>(
                                          title: const Text('L2'),
                                          value: 'L2',
                                          groupValue: selectedFontSize,
                                          onChanged: (value) {
                                            setState(() {
                                              selectedFontSize = value!;

                                            });
                                          },
                                        ),
                                        RadioListTile<String>(
                                          title: const Text('XL'),
                                          value: 'XL',
                                          groupValue: selectedFontSize,
                                          onChanged: (value) {
                                            setState(() {
                                              selectedFontSize = value!;

                                            });
                                          },
                                        ),
                                        RadioListTile<String>(
                                          title: const Text('XL'),
                                          value: 'XL',
                                          groupValue: selectedFontSize,
                                          onChanged: (value) {
                                            setState(() {
                                              selectedFontSize = value!;

                                            });
                                          },
                                        ),
                                        RadioListTile<String>(
                                          title: const Text('XL'),
                                          value: 'XL',
                                          groupValue: selectedFontSize,
                                          onChanged: (value) {
                                            setState(() {
                                              selectedFontSize = value!;

                                            });
                                          },
                                        ),
                                        RadioListTile<String>(
                                          title: const Text('XL'),
                                          value: 'XL',
                                          groupValue: selectedFontSize,
                                          onChanged: (value) {
                                            setState(() {
                                              selectedFontSize = value!;

                                            });
                                          },
                                        ),
                                        RadioListTile<String>(
                                          title: const Text('XL'),
                                          value: 'XL',
                                          groupValue: selectedFontSize,
                                          onChanged: (value) {
                                            setState(() {
                                              selectedFontSize = value!;

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
                            Text(selectedFontSize,style: TextStyle(fontSize: 15),),
                            Padding(
                              padding: const EdgeInsets.only(right: 6.0),
                              child: Divider(height: 25,color: Colors.blue,),
                            )
                          ],
                        )),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  const Expanded(
                    flex: 3,
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text("Betting Command Format",style: TextStyle(fontSize: 15,),),
                    ),
                  ),
                  Expanded(
                      flex: 1,
                      child: Text(":")),
                  Expanded(
                    flex: 3,
                    child: InkWell(

                        onTap: (){
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
                                          title: const Text('Default'),
                                          value: 'Default',
                                          groupValue: selectedFontSize,
                                          onChanged: (value) {
                                            setState(() {
                                              selectedFontSize = value!;

                                            });
                                          },
                                        ),
                                        RadioListTile<String>(
                                          title: const Text('Brunei'),
                                          value: 'Brunei',
                                          groupValue: selectedFontSize,
                                          onChanged: (value) {
                                            setState(() {
                                              selectedFontSize = value!;

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
                            Text(selectedFontSize,style: TextStyle(fontSize: 15),),
                            Padding(
                              padding: const EdgeInsets.only(right: 6.0),
                              child: Divider(height: 25,color: Colors.blue,),
                            )
                          ],
                        )),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  const Expanded(
                    flex: 3,
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text("Receipt Rejects Display",style: TextStyle(fontSize: 15,),),
                    ),
                  ),
                  Expanded(
                      flex: 1,
                      child: Text(":")),
                  Expanded(
                    flex: 3,
                    child: InkWell(

                        onTap: (){
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
                                          title: const Text('Default'),
                                          value: 'Default',
                                          groupValue: selectedFontSize,
                                          onChanged: (value) {
                                            setState(() {
                                              selectedFontSize = value!;

                                            });
                                          },
                                        ),
                                        RadioListTile<String>(
                                          title: const Text('Reject Summary'),
                                          value: 'Reject Summary',
                                          groupValue: selectedFontSize,
                                          onChanged: (value) {
                                            setState(() {
                                              selectedFontSize = value!;

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
                            Text(selectedFontSize,style: TextStyle(fontSize: 15),),
                            Padding(
                              padding: const EdgeInsets.only(right: 6.0),
                              child: Divider(height: 25,color: Colors.blue,),
                            )
                          ],
                        )),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  const Expanded(
                    flex: 3,
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text("Submit Bet \nRequired \n"
                          "Long Press",style: TextStyle(fontSize: 15,),),
                    ),
                  ),
                  Expanded(
                      flex: 1,
                      child: Text(":")),
                  Expanded(
                    flex: 3,
                    child:   Checkbox(
                      value: isLongPress,

                      activeColor: Colors.red,
                      checkColor: Colors.green,
                      onChanged: (newBool) {
                        setState(() {
                          isLongPress = newBool ; // Set to false if newBool is null
                          print(isLongPress);
                        });
                      },
                    ),
                  ),
                ],
              ),

            ],
          ),
          InkWell(


              onTap: (){
                Get.back();
              },
              child: rsubmitButton(buttonName: "Back"))
        ],
      ),
    );
  }
}
