import 'package:flutter/material.dart';

import 'package:get/get.dart';

class ServerView extends GetView {
  const ServerView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HUAWEI88'),
        leading: IconButton(onPressed: (){
          Get.back();
        }, icon: Icon(Icons.arrow_back_ios)),

      ),
      body: Column(
        children: [
          Container(
            height: 45,
            color: Colors.red,
            child: const Center(child: Text("SERVER",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 21),)),
          ),
          const Row(
            children: [
              Text("Default Server  :"),
              Text("huawei.org"),
            ],
          ),
          const Row(
            children: [
              Text("Default Server  :"),
              Text("huawei"),
            ],
          )
        ],
      )
    );
  }
}
