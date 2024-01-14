import 'package:flutter/material.dart';

import 'package:get/get.dart';

class WinloseReportView extends GetView {
  const WinloseReportView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.black,
        title: const Text('HUAWEI88'),
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: Icon(Icons.arrow_back_ios),
        ),
      ),
      body:Column(children: [
        Container(
          height: 45,
          color: Colors.red,
          child: const Center(
            child: Text(
              "Win Lose",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 21,
              ),
            ),
          ),
        ),
        SizedBox(height: 25,),
        Container(
          margin: EdgeInsets.all(9),
          height: MediaQuery.sizeOf(context).height/4.5,
          width: double.infinity,
       decoration: BoxDecoration(
         border: Border.all(width: 1,color: Colors.grey)
       ),
          child: const Column(
            children: [
              Text("Master Report ",style: TextStyle(color: Colors.red,fontWeight: FontWeight.bold,fontSize: 21),),
              Text("21-05-2024",style: TextStyle(color: Colors.red,fontWeight: FontWeight.bold,fontSize: 21),),
              Row(
               mainAxisAlignment: MainAxisAlignment.start
                ,
                children: [
                  Expanded(
                      flex: 2,
                      child: Text("Turn Over")),
                  Expanded(
                      flex: 1,
                      child: Text(":")),
                  Expanded(
                      flex: 1,
                      child: Text("123")),
                ],
              ),
              SizedBox(height: 5,),
              Row(
                mainAxisAlignment: MainAxisAlignment.start
                ,
                children: [
                  Expanded(
                      flex: 2,
                      child: Text("Strike Win")),
                  Expanded(
                      flex: 1,
                      child: Text(":")),
                  Expanded(
                      flex: 1,
                      child: Text("123")),
                ],
              ),
              SizedBox(height: 5,),
              Row(
                mainAxisAlignment: MainAxisAlignment.start
                ,
                children: [
                  Expanded(
                      flex: 2,
                      child: Text("Commission")),
                  Expanded(
                      flex: 1,
                      child: Text(":")),
                  Expanded(
                      flex: 1,
                      child: Text("123")),
                ],
              ),
              SizedBox(height: 5,),
              Row(
                mainAxisAlignment: MainAxisAlignment.start
                ,
                children: [
                  Expanded(
                      flex: 2,
                      child: Text("Total")),
                  Expanded(
                      flex: 1,
                      child: Text(":")),
                  Expanded(
                      flex: 1,
                      child: Text("123")),
                ],
              ),
              SizedBox(height: 5,),
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.all(9),
          height: MediaQuery.sizeOf(context).height/4.5,
          width: double.infinity,
       decoration: BoxDecoration(
         border: Border.all(width: 1,color: Colors.grey)
       ),
          child: const Column(
            children: [
              Text("PlaceOut",style: TextStyle(color: Colors.red,fontWeight: FontWeight.bold,fontSize: 21),),
              Text("21-05-2024",style: TextStyle(color: Colors.red,fontWeight: FontWeight.bold,fontSize: 21),),
              Row(
               mainAxisAlignment: MainAxisAlignment.start
                ,
                children: [
                  Expanded(
                      flex: 2,
                      child: Text("Turn Over")),
                  Expanded(
                      flex: 1,
                      child: Text(":")),
                  Expanded(
                      flex: 1,
                      child: Text("123")),
                ],
              ),
              SizedBox(height: 5,),
              Row(
                mainAxisAlignment: MainAxisAlignment.start
                ,
                children: [
                  Expanded(
                      flex: 2,
                      child: Text("Strike Win")),
                  Expanded(
                      flex: 1,
                      child: Text(":")),
                  Expanded(
                      flex: 1,
                      child: Text("123")),
                ],
              ),
              SizedBox(height: 5,),
              Row(
                mainAxisAlignment: MainAxisAlignment.start
                ,
                children: [
                  Expanded(
                      flex: 2,
                      child: Text("Commission")),
                  Expanded(
                      flex: 1,
                      child: Text(":")),
                  Expanded(
                      flex: 1,
                      child: Text("123")),
                ],
              ),
              SizedBox(height: 5,),
              Row(
                mainAxisAlignment: MainAxisAlignment.start
                ,
                children: [
                  Expanded(
                      flex: 2,
                      child: Text("Sub net")),
                  Expanded(
                      flex: 1,
                      child: Text(":")),
                  Expanded(
                      flex: 1,
                      child: Text("123")),
                ],
              ),
              SizedBox(height: 5,),
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.all(9),
          height: MediaQuery.sizeOf(context).height/4.5,
          width: double.infinity,
       decoration: BoxDecoration(
         border: Border.all(width: 1,color: Colors.grey)
       ),
          child: const Column(
            children: [
              Text("Total",style: TextStyle(color: Colors.red,fontWeight: FontWeight.bold,fontSize: 21),),
              Text("21-05-2024",style: TextStyle(color: Colors.red,fontWeight: FontWeight.bold,fontSize: 21),),
              Row(
               mainAxisAlignment: MainAxisAlignment.start
                ,
                children: [
                  Expanded(
                      flex: 2,
                      child: Text("Turn Over")),
                  Expanded(
                      flex: 1,
                      child: Text(":")),
                  Expanded(
                      flex: 1,
                      child: Text("123")),
                ],
              ),
              SizedBox(height: 5,),
              Row(
                mainAxisAlignment: MainAxisAlignment.start
                ,
                children: [
                  Expanded(
                      flex: 2,
                      child: Text("Net Profit"
                          )),
                  Expanded(
                      flex: 1,
                      child: Text(":")),
                  Expanded(
                      flex: 1,
                      child: Text("123")),
                ],
              ),

            ],
          ),
        ),
        SizedBox(height: 5,),
        Padding(
          padding:  EdgeInsets.all(8.0),
          child: ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
              onPressed: (){
                Get.back();
              }, child: Center(child: Text("Back",style: TextStyle(color: Colors.white),))),
        )
      ],)
    );
  }
}
