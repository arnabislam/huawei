import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:huawei_new/app/modules/member/views/account_view.dart';
import 'package:huawei_new/app/modules/member/views/announcement_view.dart';
import 'package:huawei_new/app/modules/member/views/multi_transfer_view.dart';
import 'package:huawei_new/app/modules/member/views/password_view.dart';
import 'package:huawei_new/app/modules/member/views/topup_view.dart';

import '../../bet/views/all_view.dart';
import '../controllers/member_controller.dart';

class MemberView extends GetView<MemberController> {
  const MemberView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(

        body: Container(
            color: Colors.grey,
            child:Column(
              children: [
                InkWell(
                  onTap: (){
                    Get.to(AccountView());
                  },
                  child: Container(
                  decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(7)),
                  margin: const EdgeInsets.only(left: 5,top: 8,right: 5),
                  height: 65,

                  child:  reRow(betImage: Image.asset("images/default/document.png",color:Color(0xffffac33),height: 35,width: 35,), betText: "Account Review", betTitleText: "Account",),
              ),
                ),
                InkWell(
                  onTap: (){
                    Get.to(TopupView());
                  },
                  child: Container(
                    decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(7)),
                    margin: const EdgeInsets.only(left: 5,top: 8,right: 5),
                    height: 65,

                    child:  reRow(betImage: Image.asset("images/default/dollar.png"), betText: "Help Down;ine Topup Credit", betTitleText: "Topup",),
                  ),
                ),
                InkWell(
                  onTap: (){
                    Get.to(MultiTransferView());
                  },
                  child: Container(
                    decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(7)),
                    margin: const EdgeInsets.only(left: 5,top: 8,right: 5),
                    height: 65,

                    child:  reRow(betImage: Image.asset("images/default/double-arrow.png",color:Color(0xffffac33),height: 35,width: 35,), betText: "Manage Multi Transfer", betTitleText: "Multi Transfer",),
                  ),
                ),
                InkWell(
                  onTap: (){
                    Get.to(PasswordView());
                  },
                  child: Container(
                    decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(7)),
                    margin: const EdgeInsets.only(left: 5,top: 8,right: 5),
                    height: 65,

                    child:  reRow(betImage: Image.asset("images/default/shield.png",height: 35,width: 35,), betText: "Password Update", betTitleText: "Password",),
                  ),
                ),    InkWell(
                  onTap: (){
                    Get.to(AnnouncementView());
                  },
                  child: Container(
      decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(7)),
      margin: const EdgeInsets.only(left: 5,top: 8,right: 5),
      height: 65,

      child:  reRow(betImage: Image.asset("images/default/marketing.png",color:Color(0xffffac33),height: 35,width: 35,), betText: "Check Announcement", betTitleText: "Announcement",),
    ),
                ),

              ],
            )
        )
    );
  }
}
