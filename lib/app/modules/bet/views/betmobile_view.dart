import 'dart:core';

import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:get/get.dart';
import 'package:loading_overlay/loading_overlay.dart';

import '../controllers/bet_controller.dart';

class BetmobileView extends StatefulWidget {
  BetmobileView({Key? key}) : super(key: key);

  @override
  State<BetmobileView> createState() => _BetmobileViewState();
}

class _BetmobileViewState extends State<BetmobileView> {
  final betController = Get.put(BetController());

  FocusNode _firstFocusNode = FocusNode();
  FocusNode _secondFocusNode = FocusNode();

  @override
  void dispose() {
    _firstFocusNode.dispose();
    _secondFocusNode.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Obx(() {
      return LoadingOverlay(
        isLoading: betController.isLoading.value,
        progressIndicator: const SpinKitDoubleBounce(
          color: Colors.blueAccent,
          size: 60,
        ),
        child: SingleChildScrollView(
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
                          hintStyle:
                              TextStyle(color: Colors.grey, fontSize: 19),
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
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
                TextField(
                  maxLines: null,
                  focusNode: _secondFocusNode,
                  keyboardType: TextInputType.none,
                  controller: betController.lotteryBetMobileMyrController,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.3,
                ),
                Obx(
                  () => betController.isCurrentLineStartingWithHash.value ==
                          true
                      ? Column(
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 12.0, right: 12),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  InkWell(
                                    onTap: () {
                                      if (betController
                                          .lotteryBetMobileMyrController.text
                                          .contains('1')) {
                                        betController
                                                .lotteryBetMobileMyrController
                                                .text =
                                            betController
                                                .lotteryBetMobileMyrController
                                                .text
                                                .replaceAll('1', '');
                                      } else {
                                        betController
                                            .lotteryBetMobileMyrController
                                            .text += '1';
                                      }
                                      setState(() {});
                                    },
                                    child: Padding(
                                      padding: const EdgeInsets.all(2.0),
                                      child: buttonContainer(
                                        button: 'M',
                                        isSelected: betController
                                            .lotteryBetMobileMyrController.text
                                            .contains('1'),
                                      ),
                                    ),
                                  ),
                                  InkWell(
                                    onTap: () {
                                      if (betController
                                          .lotteryBetMobileMyrController.text
                                          .contains('2')) {
                                        betController
                                                .lotteryBetMobileMyrController
                                                .text =
                                            betController
                                                .lotteryBetMobileMyrController
                                                .text
                                                .replaceAll('2', '');
                                      } else {
                                        betController
                                            .lotteryBetMobileMyrController
                                            .text += '2';
                                      }
                                      setState(() {});
                                    },
                                    child: Padding(
                                      padding: const EdgeInsets.all(2.0),
                                      child: buttonContainer(
                                        isSelected: betController
                                            .lotteryBetMobileMyrController.text
                                            .contains('2'),
                                        button: 'P',
                                      ),
                                    ),
                                  ),
                                  InkWell(
                                    onTap: () {
                                      if (betController
                                          .lotteryBetMobileMyrController.text
                                          .contains('3')) {
                                        betController
                                                .lotteryBetMobileMyrController
                                                .text =
                                            betController
                                                .lotteryBetMobileMyrController
                                                .text
                                                .replaceAll('3', '');
                                      } else {
                                        betController
                                            .lotteryBetMobileMyrController
                                            .text += '3';
                                      }
                                      setState(() {});
                                    },
                                    child: Padding(
                                      padding: const EdgeInsets.all(2.0),
                                      child: buttonContainer(
                                        button: 'T',
                                        isSelected: betController
                                            .lotteryBetMobileMyrController.text
                                            .contains('3'),
                                      ),
                                    ),
                                  ),
                                  InkWell(
                                    onTap: () {
                                      if (betController
                                          .lotteryBetMobileMyrController.text
                                          .contains('4')) {
                                        betController
                                                .lotteryBetMobileMyrController
                                                .text =
                                            betController
                                                .lotteryBetMobileMyrController
                                                .text
                                                .replaceAll('4', '');
                                      } else {
                                        betController
                                            .lotteryBetMobileMyrController
                                            .text += '4';
                                      }
                                      setState(() {});
                                    },
                                    child: Padding(
                                      padding: const EdgeInsets.all(2.0),
                                      child: buttonContainer(
                                        button: 'S',
                                        isSelected: betController
                                            .lotteryBetMobileMyrController.text
                                            .contains('4'),
                                      ),
                                    ),
                                  ),
                                  InkWell(
                                    onTap: () {
                                      if (betController
                                          .lotteryBetMobileMyrController.text
                                          .contains('5')) {
                                        betController
                                                .lotteryBetMobileMyrController
                                                .text =
                                            betController
                                                .lotteryBetMobileMyrController
                                                .text
                                                .replaceAll('5', '');
                                      } else {
                                        betController
                                            .lotteryBetMobileMyrController
                                            .text += '5';
                                      }
                                      setState(() {});
                                    },
                                    child: Padding(
                                      padding: const EdgeInsets.all(2.0),
                                      child: buttonContainer(
                                        isSelected: betController
                                            .lotteryBetMobileMyrController.text
                                            .contains('5'),
                                        button: 'B',
                                      ),
                                    ),
                                  ),
                                  InkWell(
                                    onTap: () {
                                      if (betController
                                          .lotteryBetMobileMyrController.text
                                          .contains('6')) {
                                        betController
                                                .lotteryBetMobileMyrController
                                                .text =
                                            betController
                                                .lotteryBetMobileMyrController
                                                .text
                                                .replaceAll('6', '');
                                      } else {
                                        betController
                                            .lotteryBetMobileMyrController
                                            .text += '6';
                                      }
                                      setState(() {});
                                    },
                                    child: Padding(
                                      padding: const EdgeInsets.all(2.0),
                                      child: buttonContainer(
                                        button: 'K',
                                        isSelected: betController
                                            .lotteryBetMobileMyrController.text
                                            .contains('6'),
                                      ),
                                    ),
                                  ),
                                  InkWell(
                                    onTap: () {
                                      if (betController
                                          .lotteryBetMobileMyrController.text
                                          .contains('7')) {
                                        betController
                                                .lotteryBetMobileMyrController
                                                .text =
                                            betController
                                                .lotteryBetMobileMyrController
                                                .text
                                                .replaceAll('7', '');
                                      } else {
                                        betController
                                            .lotteryBetMobileMyrController
                                            .text += '7';
                                      }
                                      setState(() {});
                                    },
                                    child: Padding(
                                      padding: const EdgeInsets.all(2.0),
                                      child: buttonContainer(
                                        button: 'W',
                                        isSelected: betController
                                            .lotteryBetMobileMyrController.text
                                            .contains('7'),
                                      ),
                                    ),
                                  ),
                                  InkWell(
                                    onTap: () {
                                      if (betController
                                          .lotteryBetMobileMyrController.text
                                          .contains('8')) {
                                        betController
                                                .lotteryBetMobileMyrController
                                                .text =
                                            betController
                                                .lotteryBetMobileMyrController
                                                .text
                                                .replaceAll('8', '');
                                      } else {
                                        betController
                                            .lotteryBetMobileMyrController
                                            .text += '8';
                                      }
                                      setState(() {});
                                    },
                                    child: Padding(
                                      padding: const EdgeInsets.all(2.0),
                                      child: buttonContainer(
                                        button: 'G',
                                        isSelected: betController
                                            .lotteryBetMobileMyrController.text
                                            .contains('8'),
                                      ),
                                    ),
                                  ),
                                  InkWell(
                                    onTap: () {
                                      if (betController
                                          .lotteryBetMobileMyrController.text
                                          .contains('9')) {
                                        betController
                                                .lotteryBetMobileMyrController
                                                .text =
                                            betController
                                                .lotteryBetMobileMyrController
                                                .text
                                                .replaceAll('9', '');
                                      } else {
                                        betController
                                            .lotteryBetMobileMyrController
                                            .text += '9';
                                      }
                                      setState(() {});
                                    },
                                    child: Padding(
                                      padding: const EdgeInsets.all(2.0),
                                      child: buttonContainer(
                                        button: 'E',
                                        isSelected: betController
                                            .lotteryBetMobileMyrController.text
                                            .contains('9'),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height:
                                  MediaQuery.of(context).size.height * 0.004,
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 12.0, right: 12),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  InkWell(
                                      onTap: () {
                                        if (betController
                                            .lotteryBetMobileMyrController.text
                                            .contains('1')) {
                                          betController
                                                  .lotteryBetMobileMyrController
                                                  .text =
                                              betController
                                                  .lotteryBetMobileMyrController
                                                  .text
                                                  .replaceAll('1', '');
                                        } else {
                                          betController
                                              .lotteryBetMobileMyrController
                                              .text += '1';
                                        }
                                        setState(() {});
                                      },
                                      child: const numberContainer(
                                        number: '1',
                                      )),
                                  InkWell(
                                      onTap: () {
                                        if (betController
                                            .lotteryBetMobileMyrController.text
                                            .contains('2')) {
                                          betController
                                                  .lotteryBetMobileMyrController
                                                  .text =
                                              betController
                                                  .lotteryBetMobileMyrController
                                                  .text
                                                  .replaceAll('2', '');
                                        } else {
                                          betController
                                              .lotteryBetMobileMyrController
                                              .text += '2';
                                        }
                                        setState(() {});
                                      },
                                      child: const numberContainer(
                                        number: '2',
                                      )),
                                  InkWell(
                                      onTap: () {
                                        if (betController
                                            .lotteryBetMobileMyrController.text
                                            .contains('3')) {
                                          betController
                                                  .lotteryBetMobileMyrController
                                                  .text =
                                              betController
                                                  .lotteryBetMobileMyrController
                                                  .text
                                                  .replaceAll('3', '');
                                        } else {
                                          betController
                                              .lotteryBetMobileMyrController
                                              .text += '3';
                                        }
                                        setState(() {});
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
                              height:
                                  MediaQuery.of(context).size.height * 0.010,
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 12.0, right: 12),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  InkWell(
                                      onTap: () {
                                        if (betController
                                            .lotteryBetMobileMyrController.text
                                            .contains('4')) {
                                          betController
                                                  .lotteryBetMobileMyrController
                                                  .text =
                                              betController
                                                  .lotteryBetMobileMyrController
                                                  .text
                                                  .replaceAll('4', '');
                                        } else {
                                          betController
                                              .lotteryBetMobileMyrController
                                              .text += '4';
                                        }
                                        setState(() {});
                                      },
                                      child: const numberContainer(
                                        number: '4',
                                      )),
                                  InkWell(
                                      onTap: () {
                                        if (betController
                                            .lotteryBetMobileMyrController.text
                                            .contains('5')) {
                                          betController
                                                  .lotteryBetMobileMyrController
                                                  .text =
                                              betController
                                                  .lotteryBetMobileMyrController
                                                  .text
                                                  .replaceAll('5', '');
                                        } else {
                                          betController
                                              .lotteryBetMobileMyrController
                                              .text += '5';
                                        }
                                        setState(() {});
                                      },
                                      child: const numberContainer(
                                        number: '5',
                                      )),
                                  InkWell(
                                    onTap: () {
                                      if (betController
                                          .lotteryBetMobileMyrController.text
                                          .contains('6')) {
                                        betController
                                                .lotteryBetMobileMyrController
                                                .text =
                                            betController
                                                .lotteryBetMobileMyrController
                                                .text
                                                .replaceAll('6', '');
                                      } else {
                                        betController
                                            .lotteryBetMobileMyrController
                                            .text += '6';
                                      }
                                      setState(() {});
                                    },
                                    child: const numberContainer(
                                      number: '6',
                                    ),
                                  ),
                                  const numberContainer(
                                    number: 'iBOX',
                                  ),
                                  InkWell(
                                    onTap: () {
                                      if (betController
                                          .lotteryBetMobileMyrController
                                          .text
                                          .isNotEmpty) {
                                        setState(() {
                                          betController
                                                  .lotteryBetMobileMyrController
                                                  .text =
                                              betController
                                                  .lotteryBetMobileMyrController
                                                  .text
                                                  .substring(
                                            0,
                                            betController
                                                    .lotteryBetMobileMyrController
                                                    .text
                                                    .length -
                                                1,
                                          );
                                        });
                                      }
                                      betController.onChangedText(betController
                                          .lotteryBetMobileMyrController.text);
                                    },
                                    child: const numberContainer(
                                      number: 'C',
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height:
                                  MediaQuery.of(context).size.height * 0.010,
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 12.0, right: 12),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  InkWell(
                                      onTap: () {
                                        if (betController
                                            .lotteryBetMobileMyrController.text
                                            .contains('7')) {
                                          betController
                                                  .lotteryBetMobileMyrController
                                                  .text =
                                              betController
                                                  .lotteryBetMobileMyrController
                                                  .text
                                                  .replaceAll('7', '');
                                        } else {
                                          betController
                                              .lotteryBetMobileMyrController
                                              .text += '7';
                                        }
                                        setState(() {});
                                      },
                                      child: const numberContainer(
                                        number: '7',
                                      )),
                                  InkWell(
                                      onTap: () {
                                        if (betController
                                            .lotteryBetMobileMyrController.text
                                            .contains('8')) {
                                          betController
                                                  .lotteryBetMobileMyrController
                                                  .text =
                                              betController
                                                  .lotteryBetMobileMyrController
                                                  .text
                                                  .replaceAll('8', '');
                                        } else {
                                          betController
                                              .lotteryBetMobileMyrController
                                              .text += '8';
                                        }
                                        setState(() {});
                                      },
                                      child: const numberContainer(
                                        number: '8',
                                      )),
                                  InkWell(
                                      onTap: () {
                                        if (betController
                                            .lotteryBetMobileMyrController.text
                                            .contains('9')) {
                                          betController
                                                  .lotteryBetMobileMyrController
                                                  .text =
                                              betController
                                                  .lotteryBetMobileMyrController
                                                  .text
                                                  .replaceAll('9', '');
                                        } else {
                                          betController
                                              .lotteryBetMobileMyrController
                                              .text += '9';
                                        }
                                        setState(() {});
                                      },
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
                              height:
                                  MediaQuery.of(context).size.height * 0.010,
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 12.0, right: 12),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  const numberContainer(
                                    number: '*',
                                  ),
                                  InkWell(
                                    onTap: () {},
                                    child: const numberContainer(
                                      number: '0',
                                    ),
                                  ),
                                  InkWell(
                                    onTap: () {
                                      betController.onChangedText(betController
                                          .lotteryBetMobileMyrController.text);
                                    },
                                    child: const numberContainer(
                                      number: '#',
                                    ),
                                  ),
                                  InkWell(
                                    onTap: () {
                                      betController.isLottery.value = true;
                                      betController
                                          .lotteryBetMobileMyrController
                                          .text += '\n';
                                      betController
                                          .isCurrentLineStartingWithHash
                                          .value = false;

                                      setState(() {});
                                    },
                                    child: Container(
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.044,
                                      width: MediaQuery.of(context).size.width *
                                          0.368,
                                      color: Colors.grey,
                                      child: const Center(
                                        child: Text(
                                          "Enter",
                                          style: TextStyle(
                                              fontSize: 17,
                                              fontWeight: FontWeight.w500),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 28, right: 28, top: 5, bottom: 11),
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.blue),
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
                                  ),
                                ),
                              ),
                            )
                          ],
                        )
                      : Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                left: 12.0,
                                right: 12,
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  InkWell(
                                      onTap: () {
                                        betController
                                            .lotteryBetMobileMyrController
                                            .text += '1';
                                        setState(() {});
                                      },
                                      child: const numberContainer(
                                        number: '1',
                                      )),
                                  InkWell(
                                      onTap: () {
                                        betController
                                            .lotteryBetMobileMyrController
                                            .text += '2';
                                        setState(() {});
                                      },
                                      child: const numberContainer(
                                        number: '2',
                                      )),
                                  InkWell(
                                      onTap: () {
                                        betController
                                            .lotteryBetMobileMyrController
                                            .text += '3';
                                        setState(() {});
                                      },
                                      child: const numberContainer(
                                        number: '3',
                                      )),
                                  Obx(() {
                                    return Container(
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.044,
                                      width: MediaQuery.of(context).size.width *
                                          0.179,
                                      color: betController
                                              .isCurrentLineStartingWithStar
                                              .value
                                          ? Colors.red
                                          : Colors.grey,
                                      child: const Center(
                                          child: Text(
                                        'Box',
                                        style: TextStyle(
                                            fontSize: 17,
                                            fontWeight: FontWeight.w500),
                                      )),
                                    );
                                  }),
                                  const numberContainer(
                                    number: 'D',
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height:
                                  MediaQuery.of(context).size.height * 0.010,
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 12.0, right: 12),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  InkWell(
                                      onTap: () {
                                        betController
                                            .lotteryBetMobileMyrController
                                            .text += '4';
                                        setState(() {});
                                      },
                                      child: const numberContainer(
                                        number: '4',
                                      )),
                                  InkWell(
                                      onTap: () {
                                        betController
                                            .lotteryBetMobileMyrController
                                            .text += '5';
                                        setState(() {});
                                      },
                                      child: const numberContainer(
                                        number: '5',
                                      )),
                                  InkWell(
                                    onTap: () {
                                      betController
                                          .lotteryBetMobileMyrController
                                          .text += '6';
                                      setState(() {});
                                    },
                                    child: const numberContainer(
                                      number: '6',
                                    ),
                                  ),
                                  Obx(() {
                                    return Container(
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.044,
                                      width: MediaQuery.of(context).size.width *
                                          0.179,
                                      color: betController
                                              .isCurrentLineStartingWithDoubleStar
                                              .value
                                          ? Colors.red
                                          : Colors.grey,
                                      child: const Center(
                                          child: Text(
                                        'iBox',
                                        style: TextStyle(
                                            fontSize: 17,
                                            fontWeight: FontWeight.w500),
                                      )),
                                    );
                                  }),
                                  InkWell(
                                    onTap: () {
                                      if (betController
                                          .lotteryBetMobileMyrController
                                          .text
                                          .isNotEmpty) {
                                        setState(() {
                                          betController
                                                  .lotteryBetMobileMyrController
                                                  .text =
                                              betController
                                                  .lotteryBetMobileMyrController
                                                  .text
                                                  .substring(
                                            0,
                                            betController
                                                    .lotteryBetMobileMyrController
                                                    .text
                                                    .length -
                                                1,
                                          );
                                        });
                                      }
                                      betController.onChangedText(betController
                                          .lotteryBetMobileMyrController.text);
                                    },
                                    child: const numberContainer(
                                      number: 'C',
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height:
                                  MediaQuery.of(context).size.height * 0.010,
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 12.0, right: 12),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  InkWell(
                                      onTap: () {
                                        betController
                                            .lotteryBetMobileMyrController
                                            .text += '7';
                                        setState(() {});
                                      },
                                      child: const numberContainer(
                                        number: '7',
                                      )),
                                  InkWell(
                                      onTap: () {
                                        betController
                                            .lotteryBetMobileMyrController
                                            .text += '8';
                                        setState(() {});
                                      },
                                      child: const numberContainer(
                                        number: '8',
                                      )),
                                  InkWell(
                                      onTap: () {
                                        betController
                                            .lotteryBetMobileMyrController
                                            .text += '9';
                                        setState(() {});
                                      },
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
                              height:
                                  MediaQuery.of(context).size.height * 0.010,
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 12.0, right: 12),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  InkWell(
                                    onTap: () {
                                      betController
                                          .lotteryBetMobileMyrController
                                          .text += '*';
                                      betController.onChangedText(betController
                                          .lotteryBetMobileMyrController.text);
                                    },
                                    child: const numberContainer(
                                      number: '*',
                                    ),
                                  ),
                                  InkWell(
                                    onTap: () {
                                      betController
                                          .lotteryBetMobileMyrController
                                          .text += '0';
                                      setState(() {});
                                    },
                                    child: const numberContainer(
                                      number: '0',
                                    ),
                                  ),
                                  InkWell(
                                    onTap: () {
                                      betController
                                          .lotteryBetMobileMyrController
                                          .text += '#';
                                      betController.onChangedText(betController
                                          .lotteryBetMobileMyrController.text);
                                      setState(() {});
                                    },
                                    child: const numberContainer(
                                      number: '#',
                                    ),
                                  ),
                                  InkWell(
                                    onTap: () {
                                      betController.isLottery.value = true;
                                      betController
                                          .lotteryBetMobileMyrController
                                          .text += '\n';
                                      betController
                                          .isCurrentLineStartingWithHash
                                          .value = false;
                                    },
                                    child: Container(
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.044,
                                      width: MediaQuery.of(context).size.width *
                                          0.368,
                                      color: Colors.grey,
                                      child: const Center(
                                          child: Text(
                                        "Enter",
                                        style: TextStyle(
                                            fontSize: 17,
                                            fontWeight: FontWeight.w500),
                                      )),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(
                              height: 15,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 28, right: 28, top: 5, bottom: 11),
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.blue),
                                onPressed: () {
                                  betController.tryToMakeOrder();
                                  // Get.to(BetHistoryResult2View());
                                },
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
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                ),
              ],
            ),
          ),
        ),
      );
    }));
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
      color: isSelected ? Colors.red : Colors.grey,
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
