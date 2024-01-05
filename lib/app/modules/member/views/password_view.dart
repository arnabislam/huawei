import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../report/views/draw_result_view.dart';

class PasswordView extends GetView {
  const PasswordView({Key? key}) : super(key: key);
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
          Column(
            children: [
              Container(
                height: 45,
                color: Colors.red,
                child: const Center(child: Text("Password",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 21),)),
              ),

              const Row(
                children: [
                  Expanded(
                    flex: 3,
                    child: Padding(
                      padding: EdgeInsets.only(left: 4.0),
                      child: Text(" Old Password",style: TextStyle(fontSize: 17,),),
                    ),
                  ),
                  Expanded(
                      flex: 1,
                      child: Text(":")),
                  Expanded(
                    flex: 3,
                    child: Padding(
                      padding: EdgeInsets.only(right: 6.0),
                      child: TextField(

                        decoration: InputDecoration(
                          hintText: "Old Password",


                          hintStyle: TextStyle(color: Colors.grey, fontSize: 15),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const Row(
                children: [
                  Expanded(
                    flex: 3,
                    child: Padding(
                      padding: EdgeInsets.only(left: 4.0),
                      child: Text("New Password ",style: TextStyle(fontSize: 17,),),
                    ),
                  ),
                  Expanded(
                      flex: 1,
                      child: Text(":")),
                  Expanded(
                    flex: 3,
                    child: Padding(
                      padding: EdgeInsets.only(right: 6.0),
                      child: TextField(

                        decoration: InputDecoration(
hintText:"New Password",

                          hintStyle: TextStyle(color: Colors.grey, fontSize: 15),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const Row(
                children: [
                  Expanded(
                    flex: 3,
                    child: Padding(
                      padding: EdgeInsets.only(left: 4.0),
                      child: Text("Retype Password ",style: TextStyle(fontSize: 17,),),
                    ),
                  ),
                  Expanded(
                      flex: 1,
                      child: Text(":")),
                  Expanded(
                    flex: 3,
                    child: Padding(
                      padding: EdgeInsets.only(right: 6.0),
                      child: TextField(

                        decoration: InputDecoration(
                          hintText: "Retype Password ",



                          hintStyle: TextStyle(color: Colors.grey, fontSize: 15),
                        ),
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
    );
  }
}
