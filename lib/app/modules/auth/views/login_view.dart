import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:huawei_new/app/modules/auth/controllers/auth_controller.dart';
import 'package:huawei_new/app/modules/auth/views/server_view.dart';
import 'package:huawei_new/app/modules/bet/views/bet_view.dart';

class LoginView extends GetView {
  LoginView({Key? key}) : super(key: key);
  final authController = Get.put(AuthController());
  final TextEditingController _userNameController = TextEditingController();
  final TextEditingController _passWordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Stack(
          children: [
            Positioned(
                top: 45,
                right: 0,
                child: IconButton(
                    onPressed: () {
                      showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return AlertDialog(
                            title: InkWell(
                                onTap: () {
                                  Get.to(const ServerView());
                                },
                                child: const Text('Server')),
                          );
                        },
                      );
                    },
                    icon: const Icon(Icons.settings))),
            SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // Align(
                  //     alignment: Alignment.topRight,
                  //     child: Icon(Icons.ac_unit,color: Colors.red,size: 25,)),
                  Container(
                    height: 530,
                    width: 250,
                    decoration: BoxDecoration(
                        border: Border.all(width: 1, color: Colors.black)),
                    child: Column(
                      children: [
                        Image.asset(
                          "images/default/huawei.png",
                          width: 250,
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        const Text(
                          "WELCOME",
                          style: TextStyle(color: Colors.grey, fontSize: 25),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: TextField(
                            controller: _userNameController,
                            decoration: const InputDecoration(
                              border: OutlineInputBorder(),
                              hintText: 'UserName',
                              hintStyle: TextStyle(color: Colors.black),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: TextField(
                            controller: _passWordController,
                            decoration: const InputDecoration(
                              border: OutlineInputBorder(),
                              hintText: 'Password',
                              hintStyle: TextStyle(color: Colors.black),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.blue),
                            onPressed: () {
                              Get.to(const BetView());
                              // authController.tryToSignIn(
                              //   userName: _userNameController.text,
                              //   password: _passWordController.text,
                              // );
                            },
                            child: const Center(
                                child: Text("Login",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 14))),
                          ),
                        ),
                        const Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text("English",
                                    style: TextStyle(
                                        color: Colors.blue,
                                        fontSize: 13,
                                        fontWeight: FontWeight.bold)),
                                Text("|", style: TextStyle(color: Colors.grey)),
                                Text("Eng",
                                    style: TextStyle(color: Colors.blue)),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text("Version",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 13,
                                        fontWeight: FontWeight.bold)),
                                Text(":", style: TextStyle(color: Colors.grey)),
                                Text("7.2",
                                    style: TextStyle(color: Colors.black)),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  const Text(
                    "Visit Our Website",
                    style: TextStyle(
                        color: Colors.blue,
                        fontSize: 14,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    "Copyright 2018. All rights reserved",
                    style: TextStyle(fontSize: 10, color: Colors.black),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
