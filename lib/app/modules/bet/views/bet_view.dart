import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:huawei_new/app/modules/auth/views/login_view.dart';
import 'package:huawei_new/app/modules/bet/views/all_view.dart';
import 'package:huawei_new/app/modules/bet/views/bet1_view.dart';
import 'package:huawei_new/app/modules/member/views/member_view.dart';
import 'package:huawei_new/app/modules/report/views/report_view.dart';
import 'package:huawei_new/app/modules/select_target/views/select_target_view.dart';
import 'package:huawei_new/app/modules/settings/views/settings1_view.dart';

import '../controllers/bet_controller.dart';

class BetView extends GetView<BetController> {
  const BetView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.black,
        title: const Text('HUAWEI88'),
        leading: IconButton(
            onPressed: () {
              showDialog(
                context: context,
                builder: (BuildContext context) {
                  return AlertDialog(
                    title: const Text('Logout'),
                    content: const Text("Are you sure you want to Logout?"),
                    actions: [
                      ElevatedButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          child: const Text("cancel")),
                      ElevatedButton(
                          onPressed: () {
                            Get.to(LoginView());
                          },
                          child: const Text("ok"))
                    ],
                  );
                },
              );
            },
            icon: const Icon(Icons.arrow_back_ios)),
      ),
      body: Container(
          decoration: const BoxDecoration(
            color: Colors.black,
          ),
          child: DefaultTabController(
            length: 5,
            child: Scaffold(
              backgroundColor: Colors.transparent,
              appBar: const TabBar(
                isScrollable: true,
                tabs: [
                  Tab(
                    icon: Text('ALL'),
                  ),
                  Tab(
                    icon: Text('BET'),
                  ),
                  Tab(
                    icon: Text('MEMBER'),
                  ),
                  Tab(
                    icon: Text('REPORT'),
                  ),
                  Tab(
                    icon: Text('SETTINGS'),
                  ),
                ],
                indicatorSize: TabBarIndicatorSize.tab,
                indicatorPadding: EdgeInsets.all(10),
                unselectedLabelColor: Colors.grey,
                indicator: ShapeDecoration(
                  shape: StadiumBorder(),
                  color: Colors.blue,
                ),
              ),
              body: const TabBarView(
                children: [
                  AllView(),
                  Bet1View(),
                  MemberView(),
                  ReportView(),
                  Settings1View()
                ],
              ),
              floatingActionButton: Container(
                height: 45,
                width: 45,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: Colors.black, width: 1.0),
                ),
                child: FloatingActionButton(
                  onPressed: () {
                    Get.to(SelectTargetView());
                  },
                  child: Icon(
                    Icons.person_add,
                    color: Colors.black,
                  ),
                  backgroundColor: Colors.white,
                ),
              ),
            ),
          )),
    );
  }
}
