import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../report/views/draw_result_view.dart';

class PasswordView extends GetView {
   PasswordView({Key? key}) : super(key: key);
  final TextEditingController _oldPasswordController =
  TextEditingController();
   final TextEditingController _newPasswordController =
   TextEditingController();
   final TextEditingController _rePasswordController =
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

               Row(
                children: [
                  const Expanded(
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
controller: _oldPasswordController,
                        decoration: InputDecoration(
                          hintText: "Old Password",


                          hintStyle: TextStyle(color: Colors.grey, fontSize: 15),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
               Row(
                children: [
                  const Expanded(
                    flex: 3,
                    child: Padding(
                      padding: EdgeInsets.only(left: 4.0),
                      child: Text("New Password ",style: TextStyle(fontSize: 17,),),
                    ),
                  ),
                  const Expanded(
                      flex: 1,
                      child: Text(":")),
                  Expanded(
                    flex: 3,
                    child: Padding(
                      padding: EdgeInsets.only(right: 6.0),
                      child: TextField(
                        controller: _newPasswordController,

                        decoration: const InputDecoration(
hintText:"New Password",

                          hintStyle: TextStyle(color: Colors.grey, fontSize: 15),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
               Row(
                children: [
                  const Expanded(
                    flex: 3,
                    child: Padding(
                      padding: EdgeInsets.only(left: 4.0),
                      child: Text("Retype Password ",style: TextStyle(fontSize: 17,),),
                    ),
                  ),
                  const Expanded(
                      flex: 1,
                      child: Text(":")),
                  Expanded(
                    flex: 3,
                    child: Padding(
                      padding: EdgeInsets.only(right: 6.0),
                      child: TextField(
controller: _rePasswordController,
                        decoration: const InputDecoration(
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
          const rsubmitButton(buttonName: "Submit")
        ],
      ),
    );
  }
}
