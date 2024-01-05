import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/select_target_controller.dart';

class SelectTargetView extends StatefulWidget {
  const SelectTargetView({Key? key}) : super(key: key);

  @override
  State<SelectTargetView> createState() => _SelectTargetViewState();
}

class _SelectTargetViewState extends State<SelectTargetView> {
  String selectedTarget = 'Hw6365(own)';
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
      body:  Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                Container(
                  height: 45,
                  color: Colors.red,
                  child: const Center(child: Text("Select Target",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 21),)),
                ),

                SizedBox(height: 15,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    const Expanded(
                      flex: 1,
                      child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text("Target:",style: TextStyle(fontSize: 17,),),
                      ),
                    ),

                    Expanded(
                      flex: 4,
                      child: Column(
                        children: [
                          InkWell(


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
                                                title: const Text('Hw6365(own)'),
                                                value: 'Hw6365(own)',
                                                groupValue: selectedTarget,
                                                onChanged: (value) {
                                                  setState(() {
                                                    selectedTarget = value!;

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
                              child: Text("Hw6365(own)",style: TextStyle(fontSize: 15),)),
                          Padding(
                            padding: const EdgeInsets.only(right: 10.0),
                            child: Divider(height: 25,color: Colors.blue,),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),



            Column(
              children: [

                Padding(
                  padding: const EdgeInsets.only(left: 8.0,right: 8,top: 2,bottom: 2),
                  child: ElevatedButton(onPressed: (){}, child: Center(child: Text("Clear",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17),))),
                ),


                Padding(
                  padding: const EdgeInsets.only(left: 8.0,right: 8,top: 2,bottom: 2),
                  child: ElevatedButton(onPressed: (){}, child: Center(child: Text("Select",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17),))),
                ),
              ],
            ),

          ],
        ),
      ),
    );
  }
}
