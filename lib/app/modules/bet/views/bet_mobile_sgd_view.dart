import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:huawei_new/app/modules/bet/controllers/bet_controller.dart';

class BetMobileSgdView extends StatefulWidget {
  BetMobileSgdView({Key? key}) : super(key: key);

  @override
  State<BetMobileSgdView> createState() => _BetMobileSgdViewState();
}

//
class _BetMobileSgdViewState extends State<BetMobileSgdView> {
  final betController = Get.put(BetController());

  @override
  void dispose() {
    // _betMobileMyrController2.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Container(
        margin: const EdgeInsets.only(top: 25),
        width: MediaQuery.of(context).size.width, // or set a specific width
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  padding: const EdgeInsets.only(left: 5, right: 3),
                  width: MediaQuery.of(context).size.width * 0.85,
                  child: TextField(
                    controller: betController.remarkBetMobileMyrController,
                    decoration: const InputDecoration(
                      hintText: 'Remark',
                      hintStyle: TextStyle(color: Colors.grey, fontSize: 19),
                    ),
                  ),
                ),
                const Icon(
                  Icons.error_outline,
                  color: Colors.blue,
                  size: 32,
                ),
              ],
            ),
            TextField(
              keyboardType: TextInputType.none,
              controller: betController.dController,
              onTap: () {},
              decoration: const InputDecoration(
                border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                ),
              ),
            ),
            TextField(
              keyboardType: TextInputType.none,
              controller: betController.companyBetMobileMyrController,
              onTap: () {},
              style: const TextStyle(
                color: Colors.red, // You can set text color here
                fontSize: 16.0, // You can set font size here
                fontWeight: FontWeight.bold, // You can set font weight here
              ),
              decoration: const InputDecoration(
                labelStyle: TextStyle(
                  color: Colors.red, // You can set label text color here
                ),
                border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                ),
              ),
            ),
            TextField(
              keyboardType: TextInputType.none,
              controller: betController.lotteryBetMobileMyrController,
              onTap: () {},
              decoration: const InputDecoration(
                border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.3,
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 12.0, right: 12),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      InkWell(
                        onTap: () {
                          if (betController.companyBetMobileMyrController.text
                              .contains('1')) {
                            betController.companyBetMobileMyrController.text =
                                betController.companyBetMobileMyrController.text
                                    .replaceAll('1', '');
                          } else {
                            betController.companyBetMobileMyrController.text +=
                                '1';
                          }
                        },
                        child: Padding(
                          padding: const EdgeInsets.all(2.0),
                          child: buttonContainer(
                            button: 'M',
                            isSelected: betController
                                .companyBetMobileMyrController.text
                                .contains('1'),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {},
                        child: Padding(
                          padding: EdgeInsets.all(2.0),
                          child: buttonContainer(
                            isSelected: betController
                                .companyBetMobileMyrController.text
                                .contains('2'),
                            button: 'P',
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {},
                        child: Padding(
                          padding: EdgeInsets.all(2.0),
                          child: buttonContainer(
                            button: 'T',
                            isSelected: betController
                                .companyBetMobileMyrController.text
                                .contains('3'),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {},
                        child: Padding(
                          padding: EdgeInsets.all(2.0),
                          child: buttonContainer(
                            button: 'S',
                            isSelected: betController
                                .companyBetMobileMyrController.text
                                .contains('4'),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {},
                        child: Padding(
                          padding: EdgeInsets.all(2.0),
                          child: buttonContainer(
                            isSelected: betController
                                .companyBetMobileMyrController.text
                                .contains('5'),
                            button: 'B',
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {},
                        child: Padding(
                          padding: EdgeInsets.all(2.0),
                          child: buttonContainer(
                            button: 'K',
                            isSelected: betController
                                .companyBetMobileMyrController.text
                                .contains('6'),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {},
                        child: Padding(
                          padding: EdgeInsets.all(2.0),
                          child: buttonContainer(
                            button: 'W',
                            isSelected: betController
                                .companyBetMobileMyrController.text
                                .contains('7'),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {},
                        child: Padding(
                          padding: EdgeInsets.all(2.0),
                          child: buttonContainer(
                            button: 'G',
                            isSelected: betController
                                .companyBetMobileMyrController.text
                                .contains('8'),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {},
                        child: Padding(
                          padding: EdgeInsets.all(2.0),
                          child: buttonContainer(
                            button: 'E',
                            isSelected: betController
                                .companyBetMobileMyrController.text
                                .contains('9'),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.004,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 12.0, right: 12),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      InkWell(
                          onTap: () {
                            // updateTextField2(1);
                          },
                          child: const numberContainer(
                            number: '1',
                          )),
                      InkWell(
                          onTap: () {
                            // updateTextField2(2);
                          },
                          child: const numberContainer(
                            number: '2',
                          )),
                      InkWell(
                          onTap: () {
                            // updateTextField2(3);
                          },
                          child: const numberContainer(
                            number: '3',
                          )),
                      const numberContainer(
                        number: 'BOX',
                      ),
                      const numberContainer(
                        number: 'D',
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.010,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 12.0, right: 12),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      InkWell(
                          onTap: () {
                            // updateTextField2(4);
                          },
                          child: const numberContainer(
                            number: '4',
                          )),
                      InkWell(
                          onTap: () {
                            // updateTextField2(5);
                          },
                          child: const numberContainer(
                            number: '5',
                          )),
                      InkWell(
                          onTap: () {
                            // updateTextField2(6);
                          },
                          child: const numberContainer(
                            number: '6',
                          )),
                      const numberContainer(
                        number: 'iBOX',
                      ),
                      InkWell(
                          onTap: () {
                            // _betMobileMyrController3.clear();
                          },
                          child: const numberContainer(
                            number: 'C',
                          )),
                    ],
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.010,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 12.0, right: 12),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      InkWell(
                          onTap: () {},
                          child: const numberContainer(
                            number: '7',
                          )),
                      InkWell(
                          onTap: () {},
                          child: const numberContainer(
                            number: '8',
                          )),
                      InkWell(
                          onTap: () {},
                          child: const numberContainer(
                            number: '9',
                          )),
                      const numberContainer(
                        number: 'REV',
                      ),
                      const numberContainer(
                        number: '.',
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.010,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 12.0, right: 12),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      const numberContainer(
                        number: '*',
                      ),
                      InkWell(
                          onTap: () {},
                          child: const numberContainer(
                            number: '0',
                          )),
                      const numberContainer(
                        number: '#',
                      ),
                      Container(
                        height: MediaQuery.of(context).size.height * 0.044,
                        width: MediaQuery.of(context).size.width * 0.368,
                        color: Colors.grey,
                        child: const Center(
                            child: Text(
                          "Enter",
                          style: TextStyle(
                              fontSize: 17, fontWeight: FontWeight.w500),
                        )),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 28, right: 28, top: 5, bottom: 11),
                  child: ElevatedButton(
                      onPressed: () {},
                      child: const Center(
                          child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          "Submit",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 25,
                              fontWeight: FontWeight.bold),
                        ),
                      ))),
                )
              ],
            )
          ],
        ),
      ),
    ));
  }
}

class numberContainer extends StatelessWidget {
  final String number;

  const numberContainer({super.key, required this.number});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.044,
      width: MediaQuery.of(context).size.width * 0.179,
      color: Colors.grey,
      child: Center(
          child: Text(
        number,
        style: const TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
      )),
    );
  }
}

class buttonContainer extends StatelessWidget {
  final String button;
  final bool isSelected;
  const buttonContainer({
    super.key,
    required this.button,
    required this.isSelected,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.054,
      width: MediaQuery.of(context).size.width * 0.092,
      color: Colors.grey,
      child: Center(
          child: Text(
        button,
        style: const TextStyle(
          fontSize: 17,
          fontWeight: FontWeight.w500,
        ),
      )),
    );
  }
}
