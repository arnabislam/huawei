import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../report/views/draw_result_view.dart';

class TopupView extends GetView {
  const TopupView({Key? key}) : super(key: key);
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
      body:  Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: 45,
            color: Colors.red,
            child: const Center(child: Text("TopUp",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 21),)),
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
