import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:huawei_new/app/modules/bet/views/bet_history_result_2_view.dart';

class DrawResultView extends GetView {
  const DrawResultView({Key? key}) : super(key: key);
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
                  child: const Center(child: Text("Draw Result",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 21),)),
                ),
                SizedBox(height: 8,),
                const Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text("Draw Date:"),
                    ),
                    SizedBox(width: 6,),
                    Text("12-4-2024",style: TextStyle(fontSize: 17),),

                  ],
                ),
              ],
            ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue),
                onPressed: (){

            }, child: Center(child: Text("Submit"))),
          )
          ],
        ),
      ),
    );
  }
}

class rsubmitButton extends StatelessWidget {
  final String buttonName;
  const rsubmitButton({
    super.key,required this.buttonName
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ElevatedButton(onPressed: (){


      }, child: Center(child: Text(buttonName,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17),))),
    );
  }
}
