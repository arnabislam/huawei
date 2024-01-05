import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:huawei_new/app/modules/settings/views/printer_view.dart';
import 'package:huawei_new/app/modules/settings/views/settings_view.dart';

import '../../bet/views/all_view.dart';

class Settings1View extends GetView {
  const Settings1View({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(

        body:  Container(
            color: Colors.grey,
            child:Column(
              children: [
                InkWell(
                  onTap: (){
                    Get.to(SettingsView());
                  },
                  child: Container(
                    decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(7)),
                    margin: const EdgeInsets.only(left: 5,top: 8,right: 5),
                    height: 65,

                    child:  reRow(betImage: Image.asset("images/default/content-management.png",color:Color(0xffffac33),height: 35,width: 35,), betText: "Settings Change", betTitleText: "Setting",),
                  ),
                ),
                InkWell(
                  onTap: (){
                    Get.to(PrinterView());
                  },
                  child: Container(
                    decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(7)),
                    margin: const EdgeInsets.only(left: 5,top: 8,right: 5),
                    height: 65,

                    child:  reRow(betImage: Image.asset("images/default/printer.png",color:Color(0xffffac33),height: 35,width: 35,), betText: "Printer Setup", betTitleText: "Printer",),
                  ),
                ),

              ],
            )
        )
    );
  }
}
