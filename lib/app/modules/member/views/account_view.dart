import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../auth/controllers/auth_controller.dart';

class AccountView extends GetView {
  AccountView({Key? key}) : super(key: key);
  AuthController authController = Get.find();
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
            icon: const Icon(Icons.arrow_back_ios)),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          child: Column(
            children: [
              Container(
                height: 45,
                color: Colors.red,
                child: const Center(
                    child: Text(
                  "Account",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 21),
                )),
              ),
              const SizedBox(
                height: 15,
              ),
              accountRow(
                  accountTitle: "Username",
                  accountText: authController
                      .profile.value.user!.usernameOwnerName!
                      .toString()),
              const accountRow(accountTitle: "Role", accountText: "Agent"),
              accountRow(
                  accountTitle: "Credit Limit",
                  accountText: authController.profile.value.user!.crediteLimit
                      .toString()),
              accountRow(
                  accountTitle: "Credit Used",
                  accountText:
                      authController.profile.value.user!.creditUsed.toString()),
              accountRow(
                  accountTitle: "Available Credit",
                  accountText: authController
                      .profile.value.user!.availableCredit
                      .toString()),

              accountRow(
                  accountTitle: "My Commission",
                  accountText: authController.profile.value.user!.userComition
                      .toString()),
              accountRow(
                  accountTitle: "Company Commission",
                  accountText: authController
                      .profile.value.user!.companyComition
                      .toString()),
              accountRow(
                  accountTitle: "Status",
                  accountText:
                      authController.profile.value.user!.status.toString()),

              SizedBox(
                height: 20,
              ),
              Text(
                "Package F",
                style: TextStyle(
                    fontSize: 25,
                    color: Colors.red,
                    fontWeight: FontWeight.bold),
              ),

              Padding(
                padding: const EdgeInsets.only(left: 25.0, right: 25),
                child: Table(
                  columnWidths: const {
                    0: FlexColumnWidth(0.13),
                    1: FlexColumnWidth(1.0),
                  },
                  border: TableBorder.all(
                      color: Colors.black, style: BorderStyle.solid, width: 1),

                  children: const [
                    TableRow(children: [
                      firstRow(
                        titleRow: 'B',
                      ),
                      tableContainer(
                        text1: '32+10%',
                        text2: '1000.00',
                        text3: '500.00',
                        text4: '2500.00',
                        text5: '200.00',
                        text6: '60.00',
                      ),
                      //  tableContainer(text1: '32+10%', text2: '1000.00', text3: '500.00', text4: '2500.00', text5: '200.00', text6: '60.00',),
                    ]),
                    TableRow(children: [
                      firstRow(
                        titleRow: 'B',
                      ),
                      tableContainer(
                        text1: '32+10%',
                        text2: '1000.00',
                        text3: '500.00',
                        text4: '2500.00',
                        text5: '200.00',
                        text6: '60.00',
                      ),
                      //  tableContainer(text1: '32+10%', text2: '1000.00', text3: '500.00', text4: '2500.00', text5: '200.00', text6: '60.00',),
                    ]),
                    TableRow(children: [
                      firstRow(
                        titleRow: 'S',
                      ),
                      tableContainer(
                        text1: '32+10%',
                        text2: '1000.00',
                        text3: '500.00',
                        text4: '2500.00',
                        text5: '200.00',
                        text6: '60.00',
                      ),
                      //  tableContainer(text1: '32+10%', text2: '1000.00', text3: '500.00', text4: '2500.00', text5: '200.00', text6: '60.00',),
                    ]),
                    TableRow(children: [
                      firstRow(
                        titleRow: '4A',
                      ),
                      tableContainer(
                        text1: '32+10%',
                        text2: '1000.00',
                        text3: '500.00',
                        text4: '2500.00',
                        text5: '200.00',
                        text6: '60.00',
                      ),
                      //  tableContainer(text1: '32+10%', text2: '1000.00', text3: '500.00', text4: '2500.00', text5: '200.00', text6: '60.00',),
                    ]),
                    TableRow(children: [
                      firstRow(
                        titleRow: '4B',
                      ),
                      tableContainer(
                        text1: '32+10%',
                        text2: '1000.00',
                        text3: '500.00',
                        text4: '2500.00',
                        text5: '200.00',
                        text6: '60.00',
                      ),
                      //  tableContainer(text1: '32+10%', text2: '1000.00', text3: '500.00', text4: '2500.00', text5: '200.00', text6: '60.00',),
                    ]),
                    TableRow(children: [
                      firstRow(
                        titleRow: '4C',
                      ),
                      tableContainer(
                        text1: '32+10%',
                        text2: '1000.00',
                        text3: '500.00',
                        text4: '2500.00',
                        text5: '200.00',
                        text6: '60.00',
                      ),
                      //  tableContainer(text1: '32+10%', text2: '1000.00', text3: '500.00', text4: '2500.00', text5: '200.00', text6: '60.00',),
                    ]),
                    TableRow(children: [
                      firstRow(
                        titleRow: '4D',
                      ),
                      tableContainer(
                        text1: '32+10%',
                        text2: '1000.00',
                        text3: '500.00',
                        text4: '2500.00',
                        text5: '200.00',
                        text6: '60.00',
                      ),
                      //  tableContainer(text1: '32+10%', text2: '1000.00', text3: '500.00', text4: '2500.00', text5: '200.00', text6: '60.00',),
                    ]),
                    TableRow(children: [
                      firstRow(
                        titleRow: '4E',
                      ),
                      tableContainer(
                        text1: '32+10%',
                        text2: '1000.00',
                        text3: '500.00',
                        text4: '2500.00',
                        text5: '200.00',
                        text6: '60.00',
                      ),
                      //  tableContainer(text1: '32+10%', text2: '1000.00', text3: '500.00', text4: '2500.00', text5: '200.00', text6: '60.00',),
                    ]),
                    TableRow(children: [
                      firstRow(
                        titleRow: 'B',
                      ),
                      tableContainer(
                        text1: '32+10%',
                        text2: '1000.00',
                        text3: '500.00',
                        text4: '2500.00',
                        text5: '200.00',
                        text6: '60.00',
                      ),
                      //  tableContainer(text1: '32+10%', text2: '1000.00', text3: '500.00', text4: '2500.00', text5: '200.00', text6: '60.00',),
                    ]),
                    TableRow(children: [
                      firstRow(
                        titleRow: '3A',
                      ),
                      tableContainer(
                        text1: '32+10%',
                        text2: '1000.00',
                        text3: '500.00',
                        text4: '2500.00',
                        text5: '200.00',
                        text6: '60.00',
                      ),
                      //  tableContainer(text1: '32+10%', text2: '1000.00', text3: '500.00', text4: '2500.00', text5: '200.00', text6: '60.00',),
                    ]),
                    TableRow(children: [
                      firstRow(
                        titleRow: '3ABC',
                      ),
                      tableContainer(
                        text1: '32+10%',
                        text2: '1000.00',
                        text3: '500.00',
                        text4: '2500.00',
                        text5: '200.00',
                        text6: '60.00',
                      ),
                      //  tableContainer(text1: '32+10%', text2: '1000.00', text3: '500.00', text4: '2500.00', text5: '200.00', text6: '60.00',),
                    ]),
                    TableRow(children: [
                      firstRow(
                        titleRow: '3B',
                      ),
                      tableContainer(
                        text1: '32+10%',
                        text2: '1000.00',
                        text3: '500.00',
                        text4: '2500.00',
                        text5: '200.00',
                        text6: '60.00',
                      ),
                      //  tableContainer(text1: '32+10%', text2: '1000.00', text3: '500.00', text4: '2500.00', text5: '200.00', text6: '60.00',),
                    ]),
                    TableRow(children: [
                      firstRow(
                        titleRow: '3C',
                      ),
                      tableContainer(
                        text1: '32+10%',
                        text2: '1000.00',
                        text3: '500.00',
                        text4: '2500.00',
                        text5: '200.00',
                        text6: '60.00',
                      ),
                      //  tableContainer(text1: '32+10%', text2: '1000.00', text3: '500.00', text4: '2500.00', text5: '200.00', text6: '60.00',),
                    ]),
                    TableRow(children: [
                      firstRow(
                        titleRow: '3D',
                      ),
                      tableContainer(
                        text1: '32+10%',
                        text2: '1000.00',
                        text3: '500.00',
                        text4: '2500.00',
                        text5: '200.00',
                        text6: '60.00',
                      ),
                      //  tableContainer(text1: '32+10%', text2: '1000.00', text3: '500.00', text4: '2500.00', text5: '200.00', text6: '60.00',),
                    ]),
                    TableRow(children: [
                      firstRow(
                        titleRow: '3E',
                      ),
                      tableContainer(
                        text1: '32+10%',
                        text2: '1000.00',
                        text3: '500.00',
                        text4: '2500.00',
                        text5: '200.00',
                        text6: '60.00',
                      ),
                      //  tableContainer(text1: '32+10%', text2: '1000.00', text3: '500.00', text4: '2500.00', text5: '200.00', text6: '60.00',),
                    ]),
                    TableRow(children: [
                      firstRow(
                        titleRow: '2A',
                      ),
                      tableContainer(
                        text1: '32+10%',
                        text2: '1000.00',
                        text3: '500.00',
                        text4: '2500.00',
                        text5: '200.00',
                        text6: '60.00',
                      ),
                      //  tableContainer(text1: '32+10%', text2: '1000.00', text3: '500.00', text4: '2500.00', text5: '200.00', text6: '60.00',),
                    ]),
                    TableRow(children: [
                      firstRow(
                        titleRow: '2B',
                      ),
                      tableContainer(
                        text1: '32+10%',
                        text2: '1000.00',
                        text3: '500.00',
                        text4: '2500.00',
                        text5: '200.00',
                        text6: '60.00',
                      ),
                      //  tableContainer(text1: '32+10%', text2: '1000.00', text3: '500.00', text4: '2500.00', text5: '200.00', text6: '60.00',),
                    ]),
                    TableRow(children: [
                      firstRow(
                        titleRow: '2ABC',
                      ),
                      tableContainer(
                        text1: '32+10%',
                        text2: '1000.00',
                        text3: '500.00',
                        text4: '2500.00',
                        text5: '200.00',
                        text6: '60.00',
                      ),
                      //  tableContainer(text1: '32+10%', text2: '1000.00', text3: '500.00', text4: '2500.00', text5: '200.00', text6: '60.00',),
                    ]),
                    TableRow(children: [
                      firstRow(
                        titleRow: '2D',
                      ),
                      tableContainer(
                        text1: '32+10%',
                        text2: '1000.00',
                        text3: '500.00',
                        text4: '2500.00',
                        text5: '200.00',
                        text6: '60.00',
                      ),
                      //  tableContainer(text1: '32+10%', text2: '1000.00', text3: '500.00', text4: '2500.00', text5: '200.00', text6: '60.00',),
                    ]),
                    TableRow(children: [
                      firstRow(
                        titleRow: '2E',
                      ),
                      tableContainer(
                        text1: '32+10%',
                        text2: '1000.00',
                        text3: '500.00',
                        text4: '2500.00',
                        text5: '200.00',
                        text6: '60.00',
                      ),
                      //  tableContainer(text1: '32+10%', text2: '1000.00', text3: '500.00', text4: '2500.00', text5: '200.00', text6: '60.00',),
                    ]),
                    TableRow(children: [
                      firstRow(
                        titleRow: '2EX',
                      ),
                      tableContainer(
                        text1: '32+10%',
                        text2: '1000.00',
                        text3: '500.00',
                        text4: '2500.00',
                        text5: '200.00',
                        text6: '60.00',
                      ),
                      //  tableContainer(text1: '32+10%', text2: '1000.00', text3: '500.00', text4: '2500.00', text5: '200.00', text6: '60.00',),
                    ]),
                    TableRow(children: [
                      firstRow(
                        titleRow: '5D',
                      ),
                      tableContainer(
                        text1: '32+10%',
                        text2: '1000.00',
                        text3: '500.00',
                        text4: '2500.00',
                        text5: '200.00',
                        text6: '60.00',
                      ),
                      //  tableContainer(text1: '32+10%', text2: '1000.00', text3: '500.00', text4: '2500.00', text5: '200.00', text6: '60.00',),
                    ]),
                    TableRow(children: [
                      firstRow(
                        titleRow: '6D',
                      ),
                      tableContainer(
                        text1: '32+10%',
                        text2: '1000.00',
                        text3: '500.00',
                        text4: '2500.00',
                        text5: '200.00',
                        text6: '60.00',
                      ),
                      //  tableContainer(text1: '32+10%', text2: '1000.00', text3: '500.00', text4: '2500.00', text5: '200.00', text6: '60.00',),
                    ]),
                  ],
                  // children: const [
                  //   TableRow(children: [
                  //     firstRow(titleRow: 'B',),
                  //     tableContainer(text1: '32+10%', text2: '1000.00', text3: '500.00', text4: '2500.00', text5: '200.00', text6: '60.00',),
                  //   //  tableContainer(text1: '32+10%', text2: '1000.00', text3: '500.00', text4: '2500.00', text5: '200.00', text6: '60.00',),
                  //
                  //   ]),
                  //   TableRow(children: [
                  //     firstRow(titleRow: 'S',),
                  //     tableContainer(text1: '32+10%', text2: '1000.00', text3: '500.00', text4: '2500.00', text5: '200.00', text6: '60.00',),
                  //     //  tableContainer(text1: '32+10%', text2: '1000.00', text3: '500.00', text4: '2500.00', text5: '200.00', text6: '60.00',),
                  //
                  //   ]),
                  //   TableRow(children: [
                  //     firstRow(titleRow: '4A',),
                  //     tableContainer(text1: '32+10%', text2: '1000.00', text3: '500.00', text4: '2500.00', text5: '200.00', text6: '60.00',),
                  //     //  tableContainer(text1: '32+10%', text2: '1000.00', text3: '500.00', text4: '2500.00', text5: '200.00', text6: '60.00',),
                  //
                  //   ]),
                  //   TableRow(children: [
                  //     firstRow(titleRow: '4B',),
                  //     tableContainer(text1: '32+10%', text2: '1000.00', text3: '500.00', text4: '2500.00', text5: '200.00', text6: '60.00',),
                  //     //  tableContainer(text1: '32+10%', text2: '1000.00', text3: '500.00', text4: '2500.00', text5: '200.00', text6: '60.00',),
                  //
                  //   ]),
                  //   TableRow(children: [
                  //     firstRow(titleRow: '4C',),
                  //     tableContainer(text1: '32+10%', text2: '1000.00', text3: '500.00', text4: '2500.00', text5: '200.00', text6: '60.00',),
                  //     //  tableContainer(text1: '32+10%', text2: '1000.00', text3: '500.00', text4: '2500.00', text5: '200.00', text6: '60.00',),
                  //
                  //   ]),
                  //   TableRow(children: [
                  //     firstRow(titleRow: '4D',),
                  //     tableContainer(text1: '32+10%', text2: '1000.00', text3: '500.00', text4: '2500.00', text5: '200.00', text6: '60.00',),
                  //     //  tableContainer(text1: '32+10%', text2: '1000.00', text3: '500.00', text4: '2500.00', text5: '200.00', text6: '60.00',),
                  //
                  //   ]),
                  //   TableRow(children: [
                  //     firstRow(titleRow: '4D',),
                  //     tableContainer(text1: '32+10%', text2: '1000.00', text3: '500.00', text4: '2500.00', text5: '200.00', text6: '60.00',),
                  //     //  tableContainer(text1: '32+10%', text2: '1000.00', text3: '500.00', text4: '2500.00', text5: '200.00', text6: '60.00',),
                  //
                  //   ]),
                  //   TableRow(children: [
                  //     firstRow(titleRow: '4E',),
                  //     tableContainer(text1: '32+10%', text2: '1000.00', text3: '500.00', text4: '2500.00', text5: '200.00', text6: '60.00',),
                  //     //  tableContainer(text1: '32+10%', text2: '1000.00', text3: '500.00', text4: '2500.00', text5: '200.00', text6: '60.00',),
                  //
                  //   ]),TableRow(children: [
                  //     firstRow(titleRow: 'B',),
                  //     tableContainer(text1: '32+10%', text2: '1000.00', text3: '500.00', text4: '2500.00', text5: '200.00', text6: '60.00',),
                  //     //  tableContainer(text1: '32+10%', text2: '1000.00', text3: '500.00', text4: '2500.00', text5: '200.00', text6: '60.00',),
                  //
                  //   ]),
                  //   TableRow(children: [
                  //     firstRow(titleRow: '3A',),
                  //     tableContainer(text1: '32+10%', text2: '1000.00', text3: '500.00', text4: '2500.00', text5: '200.00', text6: '60.00',),
                  //     //  tableContainer(text1: '32+10%', text2: '1000.00', text3: '500.00', text4: '2500.00', text5: '200.00', text6: '60.00',),
                  //
                  //   ]),
                  //   TableRow(children: [
                  //     firstRow(titleRow: '3ABC',),
                  //     tableContainer(text1: '32+10%', text2: '1000.00', text3: '500.00', text4: '2500.00', text5: '200.00', text6: '60.00',),
                  //     //  tableContainer(text1: '32+10%', text2: '1000.00', text3: '500.00', text4: '2500.00', text5: '200.00', text6: '60.00',),
                  //
                  //   ]),
                  //   TableRow(children: [
                  //     firstRow(titleRow: '3B',),
                  //     tableContainer(text1: '32+10%', text2: '1000.00', text3: '500.00', text4: '2500.00', text5: '200.00', text6: '60.00',),
                  //     //  tableContainer(text1: '32+10%', text2: '1000.00', text3: '500.00', text4: '2500.00', text5: '200.00', text6: '60.00',),
                  //
                  //   ]),
                  //   TableRow(children: [
                  //     firstRow(titleRow: '3B',),
                  //     tableContainer(text1: '32+10%', text2: '1000.00', text3: '500.00', text4: '2500.00', text5: '200.00', text6: '60.00',),
                  //     //  tableContainer(text1: '32+10%', text2: '1000.00', text3: '500.00', text4: '2500.00', text5: '200.00', text6: '60.00',),
                  //
                  //   ]),
                  //   TableRow(children: [
                  //     firstRow(titleRow: '3D',),
                  //     tableContainer(text1: '32+10%', text2: '1000.00', text3: '500.00', text4: '2500.00', text5: '200.00', text6: '60.00',),
                  //     //  tableContainer(text1: '32+10%', text2: '1000.00', text3: '500.00', text4: '2500.00', text5: '200.00', text6: '60.00',),
                  //
                  //   ]),
                  //   TableRow(children: [
                  //     firstRow(titleRow: '3E',),
                  //     tableContainer(text1: '32+10%', text2: '1000.00', text3: '500.00', text4: '2500.00', text5: '200.00', text6: '60.00',),
                  //     //  tableContainer(text1: '32+10%', text2: '1000.00', text3: '500.00', text4: '2500.00', text5: '200.00', text6: '60.00',),
                  //
                  //   ]),TableRow(children: [
                  //     firstRow(titleRow: '2A',),
                  //     tableContainer(text1: '32+10%', text2: '1000.00', text3: '500.00', text4: '2500.00', text5: '200.00', text6: '60.00',),
                  //     //  tableContainer(text1: '32+10%', text2: '1000.00', text3: '500.00', text4: '2500.00', text5: '200.00', text6: '60.00',),
                  //
                  //   ]),
                  //   TableRow(children: [
                  //     firstRow(titleRow: '2B',),
                  //     tableContainer(text1: '32+10%', text2: '1000.00', text3: '500.00', text4: '2500.00', text5: '200.00', text6: '60.00',),
                  //     //  tableContainer(text1: '32+10%', text2: '1000.00', text3: '500.00', text4: '2500.00', text5: '200.00', text6: '60.00',),
                  //
                  //   ]),TableRow(children: [
                  //     firstRow(titleRow: '2C',),
                  //     tableContainer(text1: '32+10%', text2: '1000.00', text3: '500.00', text4: '2500.00', text5: '200.00', text6: '60.00',),
                  //     //  tableContainer(text1: '32+10%', text2: '1000.00', text3: '500.00', text4: '2500.00', text5: '200.00', text6: '60.00',),
                  //
                  //   ]),
                  //   TableRow(children: [
                  //     firstRow(titleRow: '2ABC',),
                  //     tableContainer(text1: '32+10%', text2: '1000.00', text3: '500.00', text4: '2500.00', text5: '200.00', text6: '60.00',),
                  //     //  tableContainer(text1: '32+10%', text2: '1000.00', text3: '500.00', text4: '2500.00', text5: '200.00', text6: '60.00',),
                  //
                  //   ]),TableRow(children: [
                  //     firstRow(titleRow: '2D',),
                  //     tableContainer(text1: '32+10%', text2: '1000.00', text3: '500.00', text4: '2500.00', text5: '200.00', text6: '60.00',),
                  //     //  tableContainer(text1: '32+10%', text2: '1000.00', text3: '500.00', text4: '2500.00', text5: '200.00', text6: '60.00',),
                  //
                  //   ]),
                  //   TableRow(children: [
                  //     firstRow(titleRow: '2E',),
                  //     tableContainer(text1: '32+10%', text2: '1000.00', text3: '500.00', text4: '2500.00', text5: '200.00', text6: '60.00',),
                  //     //  tableContainer(text1: '32+10%', text2: '1000.00', text3: '500.00', text4: '2500.00', text5: '200.00', text6: '60.00',),
                  //
                  //   ]),
                  //   TableRow(children: [
                  //     firstRow(titleRow: '2EX',),
                  //     tableContainer(text1: '32+10%', text2: '1000.00', text3: '500.00', text4: '2500.00', text5: '200.00', text6: '60.00',),
                  //     //  tableContainer(text1: '32+10%', text2: '1000.00', text3: '500.00', text4: '2500.00', text5: '200.00', text6: '60.00',),TableRow(children: [
                  //     firstRow(titleRow: '5D',),
                  //     tableContainer(text1: '32+10%', text2: '1000.00', text3: '500.00', text4: '2500.00', text5: '200.00', text6: '60.00',),
                  //     //  tableContainer(text1: '32+10%', text2: '1000.00', text3: '500.00', text4: '2500.00', text5: '200.00', text6: '60.00',),TableRow(children: [
                  //     firstRow(titleRow: '6D',),
                  //     tableContainer(text1: '32+10%', text2: '1000.00', text3: '500.00', text4: '2500.00', text5: '200.00', text6: '60.00',),
                  //     //  tableContainer(text1: '32+10%', text2: '1000.00', text3: '500.00', text4: '2500.00', text5: '200.00', text6: '60.00',),
                  //
                  //   ]),
                  //
                  //
                  //
                  //
                  //
                  //
                  //
                  //
                  //
                  //
                  //
                  // ],
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              const Text(
                "Package GD LOTTO",
                style: TextStyle(
                    fontSize: 25,
                    color: Colors.red,
                    fontWeight: FontWeight.bold),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 25.0, right: 25),
                child: Table(
                  columnWidths: const {
                    0: FlexColumnWidth(0.13),
                    1: FlexColumnWidth(1.0),
                  },
                  border: TableBorder.all(
                      color: Colors.black, style: BorderStyle.solid, width: 1),

                  children: const [
                    TableRow(children: [
                      firstRow(
                        titleRow: 'B',
                      ),
                      tableContainer(
                        text1: '32+10%',
                        text2: '1000.00',
                        text3: '500.00',
                        text4: '2500.00',
                        text5: '200.00',
                        text6: '60.00',
                      ),
                      //  tableContainer(text1: '32+10%', text2: '1000.00', text3: '500.00', text4: '2500.00', text5: '200.00', text6: '60.00',),
                    ]),
                    TableRow(children: [
                      firstRow(
                        titleRow: 'B',
                      ),
                      tableContainer(
                        text1: '32+10%',
                        text2: '1000.00',
                        text3: '500.00',
                        text4: '2500.00',
                        text5: '200.00',
                        text6: '60.00',
                      ),
                      //  tableContainer(text1: '32+10%', text2: '1000.00', text3: '500.00', text4: '2500.00', text5: '200.00', text6: '60.00',),
                    ]),
                    TableRow(children: [
                      firstRow(
                        titleRow: 'S',
                      ),
                      tableContainer(
                        text1: '32+10%',
                        text2: '1000.00',
                        text3: '500.00',
                        text4: '2500.00',
                        text5: '200.00',
                        text6: '60.00',
                      ),
                      //  tableContainer(text1: '32+10%', text2: '1000.00', text3: '500.00', text4: '2500.00', text5: '200.00', text6: '60.00',),
                    ]),
                    TableRow(children: [
                      firstRow(
                        titleRow: '4A',
                      ),
                      tableContainer(
                        text1: '32+10%',
                        text2: '1000.00',
                        text3: '500.00',
                        text4: '2500.00',
                        text5: '200.00',
                        text6: '60.00',
                      ),
                      //  tableContainer(text1: '32+10%', text2: '1000.00', text3: '500.00', text4: '2500.00', text5: '200.00', text6: '60.00',),
                    ]),
                    TableRow(children: [
                      firstRow(
                        titleRow: '4B',
                      ),
                      tableContainer(
                        text1: '32+10%',
                        text2: '1000.00',
                        text3: '500.00',
                        text4: '2500.00',
                        text5: '200.00',
                        text6: '60.00',
                      ),
                      //  tableContainer(text1: '32+10%', text2: '1000.00', text3: '500.00', text4: '2500.00', text5: '200.00', text6: '60.00',),
                    ]),
                    TableRow(children: [
                      firstRow(
                        titleRow: '4C',
                      ),
                      tableContainer(
                        text1: '32+10%',
                        text2: '1000.00',
                        text3: '500.00',
                        text4: '2500.00',
                        text5: '200.00',
                        text6: '60.00',
                      ),
                      //  tableContainer(text1: '32+10%', text2: '1000.00', text3: '500.00', text4: '2500.00', text5: '200.00', text6: '60.00',),
                    ]),
                    TableRow(children: [
                      firstRow(
                        titleRow: '4D',
                      ),
                      tableContainer(
                        text1: '32+10%',
                        text2: '1000.00',
                        text3: '500.00',
                        text4: '2500.00',
                        text5: '200.00',
                        text6: '60.00',
                      ),
                      //  tableContainer(text1: '32+10%', text2: '1000.00', text3: '500.00', text4: '2500.00', text5: '200.00', text6: '60.00',),
                    ]),
                    TableRow(children: [
                      firstRow(
                        titleRow: '4E',
                      ),
                      tableContainer(
                        text1: '32+10%',
                        text2: '1000.00',
                        text3: '500.00',
                        text4: '2500.00',
                        text5: '200.00',
                        text6: '60.00',
                      ),
                      //  tableContainer(text1: '32+10%', text2: '1000.00', text3: '500.00', text4: '2500.00', text5: '200.00', text6: '60.00',),
                    ]),
                    TableRow(children: [
                      firstRow(
                        titleRow: 'B',
                      ),
                      tableContainer(
                        text1: '32+10%',
                        text2: '1000.00',
                        text3: '500.00',
                        text4: '2500.00',
                        text5: '200.00',
                        text6: '60.00',
                      ),
                      //  tableContainer(text1: '32+10%', text2: '1000.00', text3: '500.00', text4: '2500.00', text5: '200.00', text6: '60.00',),
                    ]),
                    TableRow(children: [
                      firstRow(
                        titleRow: '3A',
                      ),
                      tableContainer(
                        text1: '32+10%',
                        text2: '1000.00',
                        text3: '500.00',
                        text4: '2500.00',
                        text5: '200.00',
                        text6: '60.00',
                      ),
                      //  tableContainer(text1: '32+10%', text2: '1000.00', text3: '500.00', text4: '2500.00', text5: '200.00', text6: '60.00',),
                    ]),
                    TableRow(children: [
                      firstRow(
                        titleRow: '3ABC',
                      ),
                      tableContainer(
                        text1: '32+10%',
                        text2: '1000.00',
                        text3: '500.00',
                        text4: '2500.00',
                        text5: '200.00',
                        text6: '60.00',
                      ),
                      //  tableContainer(text1: '32+10%', text2: '1000.00', text3: '500.00', text4: '2500.00', text5: '200.00', text6: '60.00',),
                    ]),
                    TableRow(children: [
                      firstRow(
                        titleRow: '3B',
                      ),
                      tableContainer(
                        text1: '32+10%',
                        text2: '1000.00',
                        text3: '500.00',
                        text4: '2500.00',
                        text5: '200.00',
                        text6: '60.00',
                      ),
                      //  tableContainer(text1: '32+10%', text2: '1000.00', text3: '500.00', text4: '2500.00', text5: '200.00', text6: '60.00',),
                    ]),
                    TableRow(children: [
                      firstRow(
                        titleRow: '3C',
                      ),
                      tableContainer(
                        text1: '32+10%',
                        text2: '1000.00',
                        text3: '500.00',
                        text4: '2500.00',
                        text5: '200.00',
                        text6: '60.00',
                      ),
                      //  tableContainer(text1: '32+10%', text2: '1000.00', text3: '500.00', text4: '2500.00', text5: '200.00', text6: '60.00',),
                    ]),
                    TableRow(children: [
                      firstRow(
                        titleRow: '3D',
                      ),
                      tableContainer(
                        text1: '32+10%',
                        text2: '1000.00',
                        text3: '500.00',
                        text4: '2500.00',
                        text5: '200.00',
                        text6: '60.00',
                      ),
                      //  tableContainer(text1: '32+10%', text2: '1000.00', text3: '500.00', text4: '2500.00', text5: '200.00', text6: '60.00',),
                    ]),
                    TableRow(children: [
                      firstRow(
                        titleRow: '3E',
                      ),
                      tableContainer(
                        text1: '32+10%',
                        text2: '1000.00',
                        text3: '500.00',
                        text4: '2500.00',
                        text5: '200.00',
                        text6: '60.00',
                      ),
                      //  tableContainer(text1: '32+10%', text2: '1000.00', text3: '500.00', text4: '2500.00', text5: '200.00', text6: '60.00',),
                    ]),
                    TableRow(children: [
                      firstRow(
                        titleRow: '2A',
                      ),
                      tableContainer(
                        text1: '32+10%',
                        text2: '1000.00',
                        text3: '500.00',
                        text4: '2500.00',
                        text5: '200.00',
                        text6: '60.00',
                      ),
                      //  tableContainer(text1: '32+10%', text2: '1000.00', text3: '500.00', text4: '2500.00', text5: '200.00', text6: '60.00',),
                    ]),
                    TableRow(children: [
                      firstRow(
                        titleRow: '2B',
                      ),
                      tableContainer(
                        text1: '32+10%',
                        text2: '1000.00',
                        text3: '500.00',
                        text4: '2500.00',
                        text5: '200.00',
                        text6: '60.00',
                      ),
                      //  tableContainer(text1: '32+10%', text2: '1000.00', text3: '500.00', text4: '2500.00', text5: '200.00', text6: '60.00',),
                    ]),
                    TableRow(children: [
                      firstRow(
                        titleRow: '2ABC',
                      ),
                      tableContainer(
                        text1: '32+10%',
                        text2: '1000.00',
                        text3: '500.00',
                        text4: '2500.00',
                        text5: '200.00',
                        text6: '60.00',
                      ),
                      //  tableContainer(text1: '32+10%', text2: '1000.00', text3: '500.00', text4: '2500.00', text5: '200.00', text6: '60.00',),
                    ]),
                    TableRow(children: [
                      firstRow(
                        titleRow: '2D',
                      ),
                      tableContainer(
                        text1: '32+10%',
                        text2: '1000.00',
                        text3: '500.00',
                        text4: '2500.00',
                        text5: '200.00',
                        text6: '60.00',
                      ),
                      //  tableContainer(text1: '32+10%', text2: '1000.00', text3: '500.00', text4: '2500.00', text5: '200.00', text6: '60.00',),
                    ]),
                    TableRow(children: [
                      firstRow(
                        titleRow: '2E',
                      ),
                      tableContainer(
                        text1: '32+10%',
                        text2: '1000.00',
                        text3: '500.00',
                        text4: '2500.00',
                        text5: '200.00',
                        text6: '60.00',
                      ),
                      //  tableContainer(text1: '32+10%', text2: '1000.00', text3: '500.00', text4: '2500.00', text5: '200.00', text6: '60.00',),
                    ]),
                    TableRow(children: [
                      firstRow(
                        titleRow: '2EX',
                      ),
                      tableContainer(
                        text1: '32+10%',
                        text2: '1000.00',
                        text3: '500.00',
                        text4: '2500.00',
                        text5: '200.00',
                        text6: '60.00',
                      ),
                      //  tableContainer(text1: '32+10%', text2: '1000.00', text3: '500.00', text4: '2500.00', text5: '200.00', text6: '60.00',),
                    ]),
                    TableRow(children: [
                      firstRow(
                        titleRow: '5D',
                      ),
                      tableContainer(
                        text1: '32+10%',
                        text2: '1000.00',
                        text3: '500.00',
                        text4: '2500.00',
                        text5: '200.00',
                        text6: '60.00',
                      ),
                      //  tableContainer(text1: '32+10%', text2: '1000.00', text3: '500.00', text4: '2500.00', text5: '200.00', text6: '60.00',),
                    ]),
                    TableRow(children: [
                      firstRow(
                        titleRow: '6D',
                      ),
                      tableContainer(
                        text1: '32+10%',
                        text2: '1000.00',
                        text3: '500.00',
                        text4: '2500.00',
                        text5: '200.00',
                        text6: '60.00',
                      ),
                      //  tableContainer(text1: '32+10%', text2: '1000.00', text3: '500.00', text4: '2500.00', text5: '200.00', text6: '60.00',),
                    ]),
                  ],
                  // children: const [
                  //   TableRow(children: [
                  //     firstRow(titleRow: 'B',),
                  //     tableContainer(text1: '32+10%', text2: '1000.00', text3: '500.00', text4: '2500.00', text5: '200.00', text6: '60.00',),
                  //   //  tableContainer(text1: '32+10%', text2: '1000.00', text3: '500.00', text4: '2500.00', text5: '200.00', text6: '60.00',),
                  //
                  //   ]),
                  //   TableRow(children: [
                  //     firstRow(titleRow: 'S',),
                  //     tableContainer(text1: '32+10%', text2: '1000.00', text3: '500.00', text4: '2500.00', text5: '200.00', text6: '60.00',),
                  //     //  tableContainer(text1: '32+10%', text2: '1000.00', text3: '500.00', text4: '2500.00', text5: '200.00', text6: '60.00',),
                  //
                  //   ]),
                  //   TableRow(children: [
                  //     firstRow(titleRow: '4A',),
                  //     tableContainer(text1: '32+10%', text2: '1000.00', text3: '500.00', text4: '2500.00', text5: '200.00', text6: '60.00',),
                  //     //  tableContainer(text1: '32+10%', text2: '1000.00', text3: '500.00', text4: '2500.00', text5: '200.00', text6: '60.00',),
                  //
                  //   ]),
                  //   TableRow(children: [
                  //     firstRow(titleRow: '4B',),
                  //     tableContainer(text1: '32+10%', text2: '1000.00', text3: '500.00', text4: '2500.00', text5: '200.00', text6: '60.00',),
                  //     //  tableContainer(text1: '32+10%', text2: '1000.00', text3: '500.00', text4: '2500.00', text5: '200.00', text6: '60.00',),
                  //
                  //   ]),
                  //   TableRow(children: [
                  //     firstRow(titleRow: '4C',),
                  //     tableContainer(text1: '32+10%', text2: '1000.00', text3: '500.00', text4: '2500.00', text5: '200.00', text6: '60.00',),
                  //     //  tableContainer(text1: '32+10%', text2: '1000.00', text3: '500.00', text4: '2500.00', text5: '200.00', text6: '60.00',),
                  //
                  //   ]),
                  //   TableRow(children: [
                  //     firstRow(titleRow: '4D',),
                  //     tableContainer(text1: '32+10%', text2: '1000.00', text3: '500.00', text4: '2500.00', text5: '200.00', text6: '60.00',),
                  //     //  tableContainer(text1: '32+10%', text2: '1000.00', text3: '500.00', text4: '2500.00', text5: '200.00', text6: '60.00',),
                  //
                  //   ]),
                  //   TableRow(children: [
                  //     firstRow(titleRow: '4D',),
                  //     tableContainer(text1: '32+10%', text2: '1000.00', text3: '500.00', text4: '2500.00', text5: '200.00', text6: '60.00',),
                  //     //  tableContainer(text1: '32+10%', text2: '1000.00', text3: '500.00', text4: '2500.00', text5: '200.00', text6: '60.00',),
                  //
                  //   ]),
                  //   TableRow(children: [
                  //     firstRow(titleRow: '4E',),
                  //     tableContainer(text1: '32+10%', text2: '1000.00', text3: '500.00', text4: '2500.00', text5: '200.00', text6: '60.00',),
                  //     //  tableContainer(text1: '32+10%', text2: '1000.00', text3: '500.00', text4: '2500.00', text5: '200.00', text6: '60.00',),
                  //
                  //   ]),TableRow(children: [
                  //     firstRow(titleRow: 'B',),
                  //     tableContainer(text1: '32+10%', text2: '1000.00', text3: '500.00', text4: '2500.00', text5: '200.00', text6: '60.00',),
                  //     //  tableContainer(text1: '32+10%', text2: '1000.00', text3: '500.00', text4: '2500.00', text5: '200.00', text6: '60.00',),
                  //
                  //   ]),
                  //   TableRow(children: [
                  //     firstRow(titleRow: '3A',),
                  //     tableContainer(text1: '32+10%', text2: '1000.00', text3: '500.00', text4: '2500.00', text5: '200.00', text6: '60.00',),
                  //     //  tableContainer(text1: '32+10%', text2: '1000.00', text3: '500.00', text4: '2500.00', text5: '200.00', text6: '60.00',),
                  //
                  //   ]),
                  //   TableRow(children: [
                  //     firstRow(titleRow: '3ABC',),
                  //     tableContainer(text1: '32+10%', text2: '1000.00', text3: '500.00', text4: '2500.00', text5: '200.00', text6: '60.00',),
                  //     //  tableContainer(text1: '32+10%', text2: '1000.00', text3: '500.00', text4: '2500.00', text5: '200.00', text6: '60.00',),
                  //
                  //   ]),
                  //   TableRow(children: [
                  //     firstRow(titleRow: '3B',),
                  //     tableContainer(text1: '32+10%', text2: '1000.00', text3: '500.00', text4: '2500.00', text5: '200.00', text6: '60.00',),
                  //     //  tableContainer(text1: '32+10%', text2: '1000.00', text3: '500.00', text4: '2500.00', text5: '200.00', text6: '60.00',),
                  //
                  //   ]),
                  //   TableRow(children: [
                  //     firstRow(titleRow: '3B',),
                  //     tableContainer(text1: '32+10%', text2: '1000.00', text3: '500.00', text4: '2500.00', text5: '200.00', text6: '60.00',),
                  //     //  tableContainer(text1: '32+10%', text2: '1000.00', text3: '500.00', text4: '2500.00', text5: '200.00', text6: '60.00',),
                  //
                  //   ]),
                  //   TableRow(children: [
                  //     firstRow(titleRow: '3D',),
                  //     tableContainer(text1: '32+10%', text2: '1000.00', text3: '500.00', text4: '2500.00', text5: '200.00', text6: '60.00',),
                  //     //  tableContainer(text1: '32+10%', text2: '1000.00', text3: '500.00', text4: '2500.00', text5: '200.00', text6: '60.00',),
                  //
                  //   ]),
                  //   TableRow(children: [
                  //     firstRow(titleRow: '3E',),
                  //     tableContainer(text1: '32+10%', text2: '1000.00', text3: '500.00', text4: '2500.00', text5: '200.00', text6: '60.00',),
                  //     //  tableContainer(text1: '32+10%', text2: '1000.00', text3: '500.00', text4: '2500.00', text5: '200.00', text6: '60.00',),
                  //
                  //   ]),TableRow(children: [
                  //     firstRow(titleRow: '2A',),
                  //     tableContainer(text1: '32+10%', text2: '1000.00', text3: '500.00', text4: '2500.00', text5: '200.00', text6: '60.00',),
                  //     //  tableContainer(text1: '32+10%', text2: '1000.00', text3: '500.00', text4: '2500.00', text5: '200.00', text6: '60.00',),
                  //
                  //   ]),
                  //   TableRow(children: [
                  //     firstRow(titleRow: '2B',),
                  //     tableContainer(text1: '32+10%', text2: '1000.00', text3: '500.00', text4: '2500.00', text5: '200.00', text6: '60.00',),
                  //     //  tableContainer(text1: '32+10%', text2: '1000.00', text3: '500.00', text4: '2500.00', text5: '200.00', text6: '60.00',),
                  //
                  //   ]),TableRow(children: [
                  //     firstRow(titleRow: '2C',),
                  //     tableContainer(text1: '32+10%', text2: '1000.00', text3: '500.00', text4: '2500.00', text5: '200.00', text6: '60.00',),
                  //     //  tableContainer(text1: '32+10%', text2: '1000.00', text3: '500.00', text4: '2500.00', text5: '200.00', text6: '60.00',),
                  //
                  //   ]),
                  //   TableRow(children: [
                  //     firstRow(titleRow: '2ABC',),
                  //     tableContainer(text1: '32+10%', text2: '1000.00', text3: '500.00', text4: '2500.00', text5: '200.00', text6: '60.00',),
                  //     //  tableContainer(text1: '32+10%', text2: '1000.00', text3: '500.00', text4: '2500.00', text5: '200.00', text6: '60.00',),
                  //
                  //   ]),TableRow(children: [
                  //     firstRow(titleRow: '2D',),
                  //     tableContainer(text1: '32+10%', text2: '1000.00', text3: '500.00', text4: '2500.00', text5: '200.00', text6: '60.00',),
                  //     //  tableContainer(text1: '32+10%', text2: '1000.00', text3: '500.00', text4: '2500.00', text5: '200.00', text6: '60.00',),
                  //
                  //   ]),
                  //   TableRow(children: [
                  //     firstRow(titleRow: '2E',),
                  //     tableContainer(text1: '32+10%', text2: '1000.00', text3: '500.00', text4: '2500.00', text5: '200.00', text6: '60.00',),
                  //     //  tableContainer(text1: '32+10%', text2: '1000.00', text3: '500.00', text4: '2500.00', text5: '200.00', text6: '60.00',),
                  //
                  //   ]),
                  //   TableRow(children: [
                  //     firstRow(titleRow: '2EX',),
                  //     tableContainer(text1: '32+10%', text2: '1000.00', text3: '500.00', text4: '2500.00', text5: '200.00', text6: '60.00',),
                  //     //  tableContainer(text1: '32+10%', text2: '1000.00', text3: '500.00', text4: '2500.00', text5: '200.00', text6: '60.00',),TableRow(children: [
                  //     firstRow(titleRow: '5D',),
                  //     tableContainer(text1: '32+10%', text2: '1000.00', text3: '500.00', text4: '2500.00', text5: '200.00', text6: '60.00',),
                  //     //  tableContainer(text1: '32+10%', text2: '1000.00', text3: '500.00', text4: '2500.00', text5: '200.00', text6: '60.00',),TableRow(children: [
                  //     firstRow(titleRow: '6D',),
                  //     tableContainer(text1: '32+10%', text2: '1000.00', text3: '500.00', text4: '2500.00', text5: '200.00', text6: '60.00',),
                  //     //  tableContainer(text1: '32+10%', text2: '1000.00', text3: '500.00', text4: '2500.00', text5: '200.00', text6: '60.00',),
                  //
                  //   ]),
                  //
                  //
                  //
                  //
                  //
                  //
                  //
                  //
                  //
                  //
                  //
                  // ],
                ),
              ),

              const SizedBox(
                height: 15,
              ),
              const Text(
                "Package NINE",
                style: TextStyle(
                    fontSize: 25,
                    color: Colors.red,
                    fontWeight: FontWeight.bold),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 25.0, right: 25),
                child: Table(
                  columnWidths: const {
                    0: FlexColumnWidth(0.13),
                    1: FlexColumnWidth(1.0),
                  },
                  border: TableBorder.all(
                      color: Colors.black, style: BorderStyle.solid, width: 1),

                  children: const [
                    TableRow(children: [
                      firstRow(
                        titleRow: 'B',
                      ),
                      tableContainer(
                        text1: '32+10%',
                        text2: '1000.00',
                        text3: '500.00',
                        text4: '2500.00',
                        text5: '200.00',
                        text6: '60.00',
                      ),
                      //  tableContainer(text1: '32+10%', text2: '1000.00', text3: '500.00', text4: '2500.00', text5: '200.00', text6: '60.00',),
                    ]),
                    TableRow(children: [
                      firstRow(
                        titleRow: 'B',
                      ),
                      tableContainer(
                        text1: '32+10%',
                        text2: '1000.00',
                        text3: '500.00',
                        text4: '2500.00',
                        text5: '200.00',
                        text6: '60.00',
                      ),
                      //  tableContainer(text1: '32+10%', text2: '1000.00', text3: '500.00', text4: '2500.00', text5: '200.00', text6: '60.00',),
                    ]),
                    TableRow(children: [
                      firstRow(
                        titleRow: 'S',
                      ),
                      tableContainer(
                        text1: '32+10%',
                        text2: '1000.00',
                        text3: '500.00',
                        text4: '2500.00',
                        text5: '200.00',
                        text6: '60.00',
                      ),
                      //  tableContainer(text1: '32+10%', text2: '1000.00', text3: '500.00', text4: '2500.00', text5: '200.00', text6: '60.00',),
                    ]),
                    TableRow(children: [
                      firstRow(
                        titleRow: '4A',
                      ),
                      tableContainer(
                        text1: '32+10%',
                        text2: '1000.00',
                        text3: '500.00',
                        text4: '2500.00',
                        text5: '200.00',
                        text6: '60.00',
                      ),
                      //  tableContainer(text1: '32+10%', text2: '1000.00', text3: '500.00', text4: '2500.00', text5: '200.00', text6: '60.00',),
                    ]),
                    TableRow(children: [
                      firstRow(
                        titleRow: '4B',
                      ),
                      tableContainer(
                        text1: '32+10%',
                        text2: '1000.00',
                        text3: '500.00',
                        text4: '2500.00',
                        text5: '200.00',
                        text6: '60.00',
                      ),
                      //  tableContainer(text1: '32+10%', text2: '1000.00', text3: '500.00', text4: '2500.00', text5: '200.00', text6: '60.00',),
                    ]),
                    TableRow(children: [
                      firstRow(
                        titleRow: '4C',
                      ),
                      tableContainer(
                        text1: '32+10%',
                        text2: '1000.00',
                        text3: '500.00',
                        text4: '2500.00',
                        text5: '200.00',
                        text6: '60.00',
                      ),
                      //  tableContainer(text1: '32+10%', text2: '1000.00', text3: '500.00', text4: '2500.00', text5: '200.00', text6: '60.00',),
                    ]),
                    TableRow(children: [
                      firstRow(
                        titleRow: '4D',
                      ),
                      tableContainer(
                        text1: '32+10%',
                        text2: '1000.00',
                        text3: '500.00',
                        text4: '2500.00',
                        text5: '200.00',
                        text6: '60.00',
                      ),
                      //  tableContainer(text1: '32+10%', text2: '1000.00', text3: '500.00', text4: '2500.00', text5: '200.00', text6: '60.00',),
                    ]),
                    TableRow(children: [
                      firstRow(
                        titleRow: '4E',
                      ),
                      tableContainer(
                        text1: '32+10%',
                        text2: '1000.00',
                        text3: '500.00',
                        text4: '2500.00',
                        text5: '200.00',
                        text6: '60.00',
                      ),
                      //  tableContainer(text1: '32+10%', text2: '1000.00', text3: '500.00', text4: '2500.00', text5: '200.00', text6: '60.00',),
                    ]),
                    TableRow(children: [
                      firstRow(
                        titleRow: 'B',
                      ),
                      tableContainer(
                        text1: '32+10%',
                        text2: '1000.00',
                        text3: '500.00',
                        text4: '2500.00',
                        text5: '200.00',
                        text6: '60.00',
                      ),
                      //  tableContainer(text1: '32+10%', text2: '1000.00', text3: '500.00', text4: '2500.00', text5: '200.00', text6: '60.00',),
                    ]),
                    TableRow(children: [
                      firstRow(
                        titleRow: '3A',
                      ),
                      tableContainer(
                        text1: '32+10%',
                        text2: '1000.00',
                        text3: '500.00',
                        text4: '2500.00',
                        text5: '200.00',
                        text6: '60.00',
                      ),
                      //  tableContainer(text1: '32+10%', text2: '1000.00', text3: '500.00', text4: '2500.00', text5: '200.00', text6: '60.00',),
                    ]),
                    TableRow(children: [
                      firstRow(
                        titleRow: '3ABC',
                      ),
                      tableContainer(
                        text1: '32+10%',
                        text2: '1000.00',
                        text3: '500.00',
                        text4: '2500.00',
                        text5: '200.00',
                        text6: '60.00',
                      ),
                      //  tableContainer(text1: '32+10%', text2: '1000.00', text3: '500.00', text4: '2500.00', text5: '200.00', text6: '60.00',),
                    ]),
                    TableRow(children: [
                      firstRow(
                        titleRow: '3B',
                      ),
                      tableContainer(
                        text1: '32+10%',
                        text2: '1000.00',
                        text3: '500.00',
                        text4: '2500.00',
                        text5: '200.00',
                        text6: '60.00',
                      ),
                      //  tableContainer(text1: '32+10%', text2: '1000.00', text3: '500.00', text4: '2500.00', text5: '200.00', text6: '60.00',),
                    ]),
                    TableRow(children: [
                      firstRow(
                        titleRow: '3C',
                      ),
                      tableContainer(
                        text1: '32+10%',
                        text2: '1000.00',
                        text3: '500.00',
                        text4: '2500.00',
                        text5: '200.00',
                        text6: '60.00',
                      ),
                      //  tableContainer(text1: '32+10%', text2: '1000.00', text3: '500.00', text4: '2500.00', text5: '200.00', text6: '60.00',),
                    ]),
                    TableRow(children: [
                      firstRow(
                        titleRow: '3D',
                      ),
                      tableContainer(
                        text1: '32+10%',
                        text2: '1000.00',
                        text3: '500.00',
                        text4: '2500.00',
                        text5: '200.00',
                        text6: '60.00',
                      ),
                      //  tableContainer(text1: '32+10%', text2: '1000.00', text3: '500.00', text4: '2500.00', text5: '200.00', text6: '60.00',),
                    ]),
                    TableRow(children: [
                      firstRow(
                        titleRow: '3E',
                      ),
                      tableContainer(
                        text1: '32+10%',
                        text2: '1000.00',
                        text3: '500.00',
                        text4: '2500.00',
                        text5: '200.00',
                        text6: '60.00',
                      ),
                      //  tableContainer(text1: '32+10%', text2: '1000.00', text3: '500.00', text4: '2500.00', text5: '200.00', text6: '60.00',),
                    ]),
                    TableRow(children: [
                      firstRow(
                        titleRow: '2A',
                      ),
                      tableContainer(
                        text1: '32+10%',
                        text2: '1000.00',
                        text3: '500.00',
                        text4: '2500.00',
                        text5: '200.00',
                        text6: '60.00',
                      ),
                      //  tableContainer(text1: '32+10%', text2: '1000.00', text3: '500.00', text4: '2500.00', text5: '200.00', text6: '60.00',),
                    ]),
                    TableRow(children: [
                      firstRow(
                        titleRow: '2B',
                      ),
                      tableContainer(
                        text1: '32+10%',
                        text2: '1000.00',
                        text3: '500.00',
                        text4: '2500.00',
                        text5: '200.00',
                        text6: '60.00',
                      ),
                      //  tableContainer(text1: '32+10%', text2: '1000.00', text3: '500.00', text4: '2500.00', text5: '200.00', text6: '60.00',),
                    ]),
                    TableRow(children: [
                      firstRow(
                        titleRow: '2ABC',
                      ),
                      tableContainer(
                        text1: '32+10%',
                        text2: '1000.00',
                        text3: '500.00',
                        text4: '2500.00',
                        text5: '200.00',
                        text6: '60.00',
                      ),
                      //  tableContainer(text1: '32+10%', text2: '1000.00', text3: '500.00', text4: '2500.00', text5: '200.00', text6: '60.00',),
                    ]),
                    TableRow(children: [
                      firstRow(
                        titleRow: '2D',
                      ),
                      tableContainer(
                        text1: '32+10%',
                        text2: '1000.00',
                        text3: '500.00',
                        text4: '2500.00',
                        text5: '200.00',
                        text6: '60.00',
                      ),
                      //  tableContainer(text1: '32+10%', text2: '1000.00', text3: '500.00', text4: '2500.00', text5: '200.00', text6: '60.00',),
                    ]),
                    TableRow(children: [
                      firstRow(
                        titleRow: '2E',
                      ),
                      tableContainer(
                        text1: '32+10%',
                        text2: '1000.00',
                        text3: '500.00',
                        text4: '2500.00',
                        text5: '200.00',
                        text6: '60.00',
                      ),
                      //  tableContainer(text1: '32+10%', text2: '1000.00', text3: '500.00', text4: '2500.00', text5: '200.00', text6: '60.00',),
                    ]),
                    TableRow(children: [
                      firstRow(
                        titleRow: '2EX',
                      ),
                      tableContainer(
                        text1: '32+10%',
                        text2: '1000.00',
                        text3: '500.00',
                        text4: '2500.00',
                        text5: '200.00',
                        text6: '60.00',
                      ),
                      //  tableContainer(text1: '32+10%', text2: '1000.00', text3: '500.00', text4: '2500.00', text5: '200.00', text6: '60.00',),
                    ]),
                    TableRow(children: [
                      firstRow(
                        titleRow: '5D',
                      ),
                      tableContainer(
                        text1: '32+10%',
                        text2: '1000.00',
                        text3: '500.00',
                        text4: '2500.00',
                        text5: '200.00',
                        text6: '60.00',
                      ),
                      //  tableContainer(text1: '32+10%', text2: '1000.00', text3: '500.00', text4: '2500.00', text5: '200.00', text6: '60.00',),
                    ]),
                    TableRow(children: [
                      firstRow(
                        titleRow: '6D',
                      ),
                      tableContainer(
                        text1: '32+10%',
                        text2: '1000.00',
                        text3: '500.00',
                        text4: '2500.00',
                        text5: '200.00',
                        text6: '60.00',
                      ),
                      //  tableContainer(text1: '32+10%', text2: '1000.00', text3: '500.00', text4: '2500.00', text5: '200.00', text6: '60.00',),
                    ]),
                  ],
                  // children: const [
                  //   TableRow(children: [
                  //     firstRow(titleRow: 'B',),
                  //     tableContainer(text1: '32+10%', text2: '1000.00', text3: '500.00', text4: '2500.00', text5: '200.00', text6: '60.00',),
                  //   //  tableContainer(text1: '32+10%', text2: '1000.00', text3: '500.00', text4: '2500.00', text5: '200.00', text6: '60.00',),
                  //
                  //   ]),
                  //   TableRow(children: [
                  //     firstRow(titleRow: 'S',),
                  //     tableContainer(text1: '32+10%', text2: '1000.00', text3: '500.00', text4: '2500.00', text5: '200.00', text6: '60.00',),
                  //     //  tableContainer(text1: '32+10%', text2: '1000.00', text3: '500.00', text4: '2500.00', text5: '200.00', text6: '60.00',),
                  //
                  //   ]),
                  //   TableRow(children: [
                  //     firstRow(titleRow: '4A',),
                  //     tableContainer(text1: '32+10%', text2: '1000.00', text3: '500.00', text4: '2500.00', text5: '200.00', text6: '60.00',),
                  //     //  tableContainer(text1: '32+10%', text2: '1000.00', text3: '500.00', text4: '2500.00', text5: '200.00', text6: '60.00',),
                  //
                  //   ]),
                  //   TableRow(children: [
                  //     firstRow(titleRow: '4B',),
                  //     tableContainer(text1: '32+10%', text2: '1000.00', text3: '500.00', text4: '2500.00', text5: '200.00', text6: '60.00',),
                  //     //  tableContainer(text1: '32+10%', text2: '1000.00', text3: '500.00', text4: '2500.00', text5: '200.00', text6: '60.00',),
                  //
                  //   ]),
                  //   TableRow(children: [
                  //     firstRow(titleRow: '4C',),
                  //     tableContainer(text1: '32+10%', text2: '1000.00', text3: '500.00', text4: '2500.00', text5: '200.00', text6: '60.00',),
                  //     //  tableContainer(text1: '32+10%', text2: '1000.00', text3: '500.00', text4: '2500.00', text5: '200.00', text6: '60.00',),
                  //
                  //   ]),
                  //   TableRow(children: [
                  //     firstRow(titleRow: '4D',),
                  //     tableContainer(text1: '32+10%', text2: '1000.00', text3: '500.00', text4: '2500.00', text5: '200.00', text6: '60.00',),
                  //     //  tableContainer(text1: '32+10%', text2: '1000.00', text3: '500.00', text4: '2500.00', text5: '200.00', text6: '60.00',),
                  //
                  //   ]),
                  //   TableRow(children: [
                  //     firstRow(titleRow: '4D',),
                  //     tableContainer(text1: '32+10%', text2: '1000.00', text3: '500.00', text4: '2500.00', text5: '200.00', text6: '60.00',),
                  //     //  tableContainer(text1: '32+10%', text2: '1000.00', text3: '500.00', text4: '2500.00', text5: '200.00', text6: '60.00',),
                  //
                  //   ]),
                  //   TableRow(children: [
                  //     firstRow(titleRow: '4E',),
                  //     tableContainer(text1: '32+10%', text2: '1000.00', text3: '500.00', text4: '2500.00', text5: '200.00', text6: '60.00',),
                  //     //  tableContainer(text1: '32+10%', text2: '1000.00', text3: '500.00', text4: '2500.00', text5: '200.00', text6: '60.00',),
                  //
                  //   ]),TableRow(children: [
                  //     firstRow(titleRow: 'B',),
                  //     tableContainer(text1: '32+10%', text2: '1000.00', text3: '500.00', text4: '2500.00', text5: '200.00', text6: '60.00',),
                  //     //  tableContainer(text1: '32+10%', text2: '1000.00', text3: '500.00', text4: '2500.00', text5: '200.00', text6: '60.00',),
                  //
                  //   ]),
                  //   TableRow(children: [
                  //     firstRow(titleRow: '3A',),
                  //     tableContainer(text1: '32+10%', text2: '1000.00', text3: '500.00', text4: '2500.00', text5: '200.00', text6: '60.00',),
                  //     //  tableContainer(text1: '32+10%', text2: '1000.00', text3: '500.00', text4: '2500.00', text5: '200.00', text6: '60.00',),
                  //
                  //   ]),
                  //   TableRow(children: [
                  //     firstRow(titleRow: '3ABC',),
                  //     tableContainer(text1: '32+10%', text2: '1000.00', text3: '500.00', text4: '2500.00', text5: '200.00', text6: '60.00',),
                  //     //  tableContainer(text1: '32+10%', text2: '1000.00', text3: '500.00', text4: '2500.00', text5: '200.00', text6: '60.00',),
                  //
                  //   ]),
                  //   TableRow(children: [
                  //     firstRow(titleRow: '3B',),
                  //     tableContainer(text1: '32+10%', text2: '1000.00', text3: '500.00', text4: '2500.00', text5: '200.00', text6: '60.00',),
                  //     //  tableContainer(text1: '32+10%', text2: '1000.00', text3: '500.00', text4: '2500.00', text5: '200.00', text6: '60.00',),
                  //
                  //   ]),
                  //   TableRow(children: [
                  //     firstRow(titleRow: '3B',),
                  //     tableContainer(text1: '32+10%', text2: '1000.00', text3: '500.00', text4: '2500.00', text5: '200.00', text6: '60.00',),
                  //     //  tableContainer(text1: '32+10%', text2: '1000.00', text3: '500.00', text4: '2500.00', text5: '200.00', text6: '60.00',),
                  //
                  //   ]),
                  //   TableRow(children: [
                  //     firstRow(titleRow: '3D',),
                  //     tableContainer(text1: '32+10%', text2: '1000.00', text3: '500.00', text4: '2500.00', text5: '200.00', text6: '60.00',),
                  //     //  tableContainer(text1: '32+10%', text2: '1000.00', text3: '500.00', text4: '2500.00', text5: '200.00', text6: '60.00',),
                  //
                  //   ]),
                  //   TableRow(children: [
                  //     firstRow(titleRow: '3E',),
                  //     tableContainer(text1: '32+10%', text2: '1000.00', text3: '500.00', text4: '2500.00', text5: '200.00', text6: '60.00',),
                  //     //  tableContainer(text1: '32+10%', text2: '1000.00', text3: '500.00', text4: '2500.00', text5: '200.00', text6: '60.00',),
                  //
                  //   ]),TableRow(children: [
                  //     firstRow(titleRow: '2A',),
                  //     tableContainer(text1: '32+10%', text2: '1000.00', text3: '500.00', text4: '2500.00', text5: '200.00', text6: '60.00',),
                  //     //  tableContainer(text1: '32+10%', text2: '1000.00', text3: '500.00', text4: '2500.00', text5: '200.00', text6: '60.00',),
                  //
                  //   ]),
                  //   TableRow(children: [
                  //     firstRow(titleRow: '2B',),
                  //     tableContainer(text1: '32+10%', text2: '1000.00', text3: '500.00', text4: '2500.00', text5: '200.00', text6: '60.00',),
                  //     //  tableContainer(text1: '32+10%', text2: '1000.00', text3: '500.00', text4: '2500.00', text5: '200.00', text6: '60.00',),
                  //
                  //   ]),TableRow(children: [
                  //     firstRow(titleRow: '2C',),
                  //     tableContainer(text1: '32+10%', text2: '1000.00', text3: '500.00', text4: '2500.00', text5: '200.00', text6: '60.00',),
                  //     //  tableContainer(text1: '32+10%', text2: '1000.00', text3: '500.00', text4: '2500.00', text5: '200.00', text6: '60.00',),
                  //
                  //   ]),
                  //   TableRow(children: [
                  //     firstRow(titleRow: '2ABC',),
                  //     tableContainer(text1: '32+10%', text2: '1000.00', text3: '500.00', text4: '2500.00', text5: '200.00', text6: '60.00',),
                  //     //  tableContainer(text1: '32+10%', text2: '1000.00', text3: '500.00', text4: '2500.00', text5: '200.00', text6: '60.00',),
                  //
                  //   ]),TableRow(children: [
                  //     firstRow(titleRow: '2D',),
                  //     tableContainer(text1: '32+10%', text2: '1000.00', text3: '500.00', text4: '2500.00', text5: '200.00', text6: '60.00',),
                  //     //  tableContainer(text1: '32+10%', text2: '1000.00', text3: '500.00', text4: '2500.00', text5: '200.00', text6: '60.00',),
                  //
                  //   ]),
                  //   TableRow(children: [
                  //     firstRow(titleRow: '2E',),
                  //     tableContainer(text1: '32+10%', text2: '1000.00', text3: '500.00', text4: '2500.00', text5: '200.00', text6: '60.00',),
                  //     //  tableContainer(text1: '32+10%', text2: '1000.00', text3: '500.00', text4: '2500.00', text5: '200.00', text6: '60.00',),
                  //
                  //   ]),
                  //   TableRow(children: [
                  //     firstRow(titleRow: '2EX',),
                  //     tableContainer(text1: '32+10%', text2: '1000.00', text3: '500.00', text4: '2500.00', text5: '200.00', text6: '60.00',),
                  //     //  tableContainer(text1: '32+10%', text2: '1000.00', text3: '500.00', text4: '2500.00', text5: '200.00', text6: '60.00',),TableRow(children: [
                  //     firstRow(titleRow: '5D',),
                  //     tableContainer(text1: '32+10%', text2: '1000.00', text3: '500.00', text4: '2500.00', text5: '200.00', text6: '60.00',),
                  //     //  tableContainer(text1: '32+10%', text2: '1000.00', text3: '500.00', text4: '2500.00', text5: '200.00', text6: '60.00',),TableRow(children: [
                  //     firstRow(titleRow: '6D',),
                  //     tableContainer(text1: '32+10%', text2: '1000.00', text3: '500.00', text4: '2500.00', text5: '200.00', text6: '60.00',),
                  //     //  tableContainer(text1: '32+10%', text2: '1000.00', text3: '500.00', text4: '2500.00', text5: '200.00', text6: '60.00',),
                  //
                  //   ]),
                  //
                  //
                  //
                  //
                  //
                  //
                  //
                  //
                  //
                  //
                  //
                  // ],
                ),
              ),

              //backButton
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 40,
                  child: FloatingActionButton.extended(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(6),
                        // Border color and width
                      ),
                      onPressed: () {},
                      label: InkWell(
                        onTap: () {
                          Get.back();
                        },
                        child: Container(
                            height: 22,
                            width: 320,
                            child: const Center(
                                child: Text(
                              "Back",
                              style: TextStyle(fontSize: 17),
                            ))),
                      )),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class firstRow extends StatelessWidget {
  final String titleRow;
  const firstRow({
    required this.titleRow,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 20.0, // Set the height of the cell

      child: Center(
        child: Text(titleRow),
      ),
    );
  }
}

class tableContainer extends StatelessWidget {
  final String text1, text2, text3, text4, text5, text6;
  const tableContainer({
    required this.text1,
    required this.text2,
    required this.text3,
    required this.text4,
    required this.text5,
    required this.text6,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 8, top: 2),

      // Set the height of the cell

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(text1),
          SizedBox(
            height: 4,
          ),
          Row(
            children: [
              Text(text2),
              SizedBox(
                width: 10,
              ),
              Text(text3),
              SizedBox(
                width: 10,
              ),
              Text(text4),
            ],
          ),
          SizedBox(
            height: 4,
          ),
          Row(
            children: [
              Text(text5),
              SizedBox(
                width: 10,
              ),
              Text(text6),
            ],
          ),
        ],
      ),
    );
  }
}

class accountRow extends StatelessWidget {
  final String accountTitle, accountText;
  const accountRow({
    super.key,
    required this.accountTitle,
    required this.accountText,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 2,
          child: Padding(
            padding: const EdgeInsets.only(left: 12.0, bottom: 5),
            child: Text(
              accountTitle,
              style: TextStyle(
                fontSize: 14,
              ),
            ),
          ),
        ),
        const Expanded(flex: 1, child: Text(":")),
        Expanded(
          flex: 3,
          child: InkWell(
            onTap: () {},
            child: Text(accountText), // Fixed the typo here
          ),
        ),
      ],
    );
  }
}
