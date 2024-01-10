import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:huawei_new/app/modules/bet/views/bet_history_view.dart';
import 'package:huawei_new/app/modules/bet/views/bet_mobile_sgd_view.dart';
import 'package:huawei_new/app/modules/bet/views/betmobile_view.dart';

import 'all_view.dart';

class Bet1View extends GetView {
  const Bet1View({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Container(
          color: Colors.grey,
          child:Column(
            children: [ InkWell(

              onTap: (){
                Get.to(BetmobileView());
              },
              child: Container(
                decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(7)),
                margin: const EdgeInsets.only(left: 5,top: 8,right: 5),
                height: 65,

                child:  reRow(betImage: Image.asset("images/default/add.png",color:Color(0xffffac33),height: 35,width: 35,), betText: "Bet in Mobile format MYR Curency", betTitleText: "Bet Mobile MYR",),
              ),
            ),
              InkWell(
                onTap: (){
                  Get.to(BetMobileSgdView());
                },
                child: Container(
                  decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(7)),
                  margin: const EdgeInsets.only(left: 5,top: 8,right: 5),
                  height: 65,

                  child:  reRow(betImage: Image.asset("images/default/add.png",color:Color(0xffffac33),height: 35,width: 35,), betText: "Bet in Mobile format SGD Curency", betTitleText: "Bet Mobile SGD-3.48",),
                ),
              ),
              InkWell(
                onTap: (){
                  Get.to(BetHistoryView());
                },
                child: Container(
                  decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(7)),
                  margin: const EdgeInsets.only(left: 5,top: 8,right: 5),
                  height: 65,

                  child:  reRow(betImage: Image.asset("images/default/dollar.png"), betText: "Bet History Review", betTitleText: "Bet History",),
                ),
              ),
            ],
          )
      )
    );
  }
}
