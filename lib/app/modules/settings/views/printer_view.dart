import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../report/views/draw_result_view.dart';

class PrinterView extends GetView {
  const PrinterView({Key? key}) : super(key: key);
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
                  child: const Center(child: Text("MultiTransfer",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 21),)),
                ),
                Text("Selected Printer : None",style: TextStyle(color: Colors.red,fontSize: 18 ),)
              ],
            ),



            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 8.0,right: 8,top: 2,bottom: 2),
                  child: ElevatedButton(onPressed: (){}, child: Center(child: Text("Scan For Printers",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17),))),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0,right: 8,top: 2,bottom: 2),
                  child: ElevatedButton(onPressed: (){}, child: Center(child: Text("Test Print",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17),))),
                ),


                Padding(
                  padding: const EdgeInsets.only(left: 8.0,right: 8,top: 2,bottom: 2),
                  child: ElevatedButton(onPressed: (){}, child: Center(child: Text("Back",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17),))),
                ),
              ],
            ),

          ],
        ),
      ),
    );
  }
}
