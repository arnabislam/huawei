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
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            'Huawei',
          ),
          actions: [
            TextButton(
              onPressed: () {
                betController.pasteText();
              },
              child: const Text(
                'Paste',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                ),
              ),
            ),
            TextButton(
              onPressed: () {
                betController.reset();
                betController.isLottery.value = false;

                betController.isCurrentLineStartingWithHash.value = true;
              },
              child: const Text(
                'Reset',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                ),
              ),
            ),
            const Text('    '),
          ],
        ),
        body: Obx(() {
          return LoadingOverlay(
            isLoading: betController.isLoading.value,
            progressIndicator: const SpinKitDoubleBounce(
              color: Colors.blueAccent,
              size: 60,
            ),
            child: SizedBox(
              width:
                  MediaQuery.of(context).size.width, // or set a specific width
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SingleChildScrollView(
                    child: Column(
                      children: [
                        const Align(
                            alignment: Alignment.centerLeft,
                            child: Text('   D')),
                        Scrollbar(
                          child: SingleChildScrollView(
                            scrollDirection: Axis.vertical,
                            reverse: true,
                            child: SizedBox(
                              height: 400,
                              child: TextField(
                                autofocus: true,
                                maxLines: null,
                                scrollController:
                                    betController.scrollController,
                                focusNode: _secondFocusNode,
                                keyboardType: TextInputType.none,
                                controller:
                                    betController.lotteryBetMobileMyrController,
                                decoration: const InputDecoration(
                                  border: OutlineInputBorder(
                                    borderSide: BorderSide.none,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Obx(
                    () => betController.isCurrentLineStartingWithHash.value ==
                            true
                        ? Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 12.0, right: 12),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    //for 1 1
                                    InkWell(
                                      onTap: () {
                                        print('I am from here');
                                        final currentText = betController
                                            .lotteryBetMobileMyrController.text;
                                        final currentPosition = betController
                                            .lotteryBetMobileMyrController
                                            .selection
                                            .start;

                                        // Insert '1' at the current cursor position
                                        final newText =
                                            currentText.replaceRange(
                                          currentPosition,
                                          currentPosition,
                                          '1',
                                        );

                                        // Update the controller's text and cursor position
                                        betController
                                            .lotteryBetMobileMyrController
                                            .value = TextEditingValue(
                                          text: newText,
                                          selection: TextSelection.fromPosition(
                                            TextPosition(
                                                offset: currentPosition +
                                                    1), // Move cursor to after the inserted '1'
                                          ),
                                        );

                                        setState(() {});
                                      },
                                      child: Padding(
                                        padding: const EdgeInsets.all(2.0),
                                        child: buttonContainer(
                                          isSelected: betController
                                              .lotteryBetMobileMyrController
                                              .text
                                              .contains('1'),
                                          button: 'M',
                                        ),
                                      ),
                                    ),

                                    InkWell(
                                      onTap: () {
                                        final currentText = betController
                                            .lotteryBetMobileMyrController.text;
                                        final currentPosition = betController
                                            .lotteryBetMobileMyrController
                                            .selection
                                            .start;

                                        // Insert '1' at the current cursor position
                                        final newText =
                                            currentText.replaceRange(
                                          currentPosition,
                                          currentPosition,
                                          '2',
                                        );

                                        // Update the controller's text and cursor position
                                        betController
                                            .lotteryBetMobileMyrController
                                            .value = TextEditingValue(
                                          text: newText,
                                          selection: TextSelection.fromPosition(
                                            TextPosition(
                                                offset: currentPosition +
                                                    1), // Move cursor to after the inserted '1'
                                          ),
                                        );

                                        setState(() {});
                                      },
                                      child: Padding(
                                        padding: const EdgeInsets.all(2.0),
                                        child: buttonContainer(
                                          isSelected: betController
                                              .lotteryBetMobileMyrController
                                              .text
                                              .contains('2'),
                                          button: 'P',
                                        ),
                                      ),
                                    ),
                                    InkWell(
                                      onTap: () {
                                        final currentText = betController
                                            .lotteryBetMobileMyrController.text;
                                        final currentPosition = betController
                                            .lotteryBetMobileMyrController
                                            .selection
                                            .start;

                                        // Insert '1' at the current cursor position
                                        final newText =
                                            currentText.replaceRange(
                                          currentPosition,
                                          currentPosition,
                                          '3',
                                        );

                                        // Update the controller's text and cursor position
                                        betController
                                            .lotteryBetMobileMyrController
                                            .value = TextEditingValue(
                                          text: newText,
                                          selection: TextSelection.fromPosition(
                                            TextPosition(
                                                offset: currentPosition +
                                                    1), // Move cursor to after the inserted '1'
                                          ),
                                        );

                                        setState(() {});
                                      },
                                      child: Padding(
                                        padding: const EdgeInsets.all(2.0),
                                        child: buttonContainer(
                                          button: 'T',
                                          isSelected: betController
                                              .lotteryBetMobileMyrController
                                              .text
                                              .contains('3'),
                                        ),
                                      ),
                                    ),
                                    InkWell(
                                      onTap: () {
                                        final currentText = betController
                                            .lotteryBetMobileMyrController.text;
                                        final currentPosition = betController
                                            .lotteryBetMobileMyrController
                                            .selection
                                            .start;

                                        // Insert '1' at the current cursor position
                                        final newText =
                                            currentText.replaceRange(
                                          currentPosition,
                                          currentPosition,
                                          '4',
                                        );

                                        // Update the controller's text and cursor position
                                        betController
                                            .lotteryBetMobileMyrController
                                            .value = TextEditingValue(
                                          text: newText,
                                          selection: TextSelection.fromPosition(
                                            TextPosition(
                                                offset: currentPosition +
                                                    1), // Move cursor to after the inserted '1'
                                          ),
                                        );

                                        setState(() {});
                                      },
                                      child: Padding(
                                        padding: const EdgeInsets.all(2.0),
                                        child: buttonContainer(
                                          button: 'S',
                                          isSelected: betController
                                              .lotteryBetMobileMyrController
                                              .text
                                              .contains('4'),
                                        ),
                                      ),
                                    ),
                                    InkWell(
                                      onTap: () {
                                        final currentText = betController
                                            .lotteryBetMobileMyrController.text;
                                        final currentPosition = betController
                                            .lotteryBetMobileMyrController
                                            .selection
                                            .start;

                                        // Insert '1' at the current cursor position
                                        final newText =
                                            currentText.replaceRange(
                                          currentPosition,
                                          currentPosition,
                                          '5',
                                        );

                                        // Update the controller's text and cursor position
                                        betController
                                            .lotteryBetMobileMyrController
                                            .value = TextEditingValue(
                                          text: newText,
                                          selection: TextSelection.fromPosition(
                                            TextPosition(
                                                offset: currentPosition +
                                                    1), // Move cursor to after the inserted '1'
                                          ),
                                        );

                                        setState(() {});
                                      },
                                      child: Padding(
                                        padding: const EdgeInsets.all(2.0),
                                        child: buttonContainer(
                                          isSelected: betController
                                              .lotteryBetMobileMyrController
                                              .text
                                              .contains('5'),
                                          button: 'B',
                                        ),
                                      ),
                                    ),
                                    InkWell(
                                      onTap: () {
                                        final currentText = betController
                                            .lotteryBetMobileMyrController.text;
                                        final currentPosition = betController
                                            .lotteryBetMobileMyrController
                                            .selection
                                            .start;

                                        // Insert '1' at the current cursor position
                                        final newText =
                                            currentText.replaceRange(
                                          currentPosition,
                                          currentPosition,
                                          '6',
                                        );

                                        // Update the controller's text and cursor position
                                        betController
                                            .lotteryBetMobileMyrController
                                            .value = TextEditingValue(
                                          text: newText,
                                          selection: TextSelection.fromPosition(
                                            TextPosition(
                                                offset: currentPosition +
                                                    1), // Move cursor to after the inserted '1'
                                          ),
                                        );

                                        setState(() {});
                                      },
                                      child: Padding(
                                        padding: const EdgeInsets.all(2.0),
                                        child: buttonContainer(
                                          button: 'K',
                                          isSelected: betController
                                              .lotteryBetMobileMyrController
                                              .text
                                              .contains('6'),
                                        ),
                                      ),
                                    ),
                                    InkWell(
                                      onTap: () {
                                        final currentText = betController
                                            .lotteryBetMobileMyrController.text;
                                        final currentPosition = betController
                                            .lotteryBetMobileMyrController
                                            .selection
                                            .start;

                                        // Insert '1' at the current cursor position
                                        final newText =
                                            currentText.replaceRange(
                                          currentPosition,
                                          currentPosition,
                                          '7',
                                        );

                                        // Update the controller's text and cursor position
                                        betController
                                            .lotteryBetMobileMyrController
                                            .value = TextEditingValue(
                                          text: newText,
                                          selection: TextSelection.fromPosition(
                                            TextPosition(
                                                offset: currentPosition +
                                                    1), // Move cursor to after the inserted '1'
                                          ),
                                        );

                                        setState(() {});
                                      },
                                      child: Padding(
                                        padding: const EdgeInsets.all(2.0),
                                        child: buttonContainer(
                                          button: 'W',
                                          isSelected: betController
                                              .lotteryBetMobileMyrController
                                              .text
                                              .contains('7'),
                                        ),
                                      ),
                                    ),
                                    InkWell(
                                      onTap: () {
                                        final currentText = betController
                                            .lotteryBetMobileMyrController.text;
                                        final currentPosition = betController
                                            .lotteryBetMobileMyrController
                                            .selection
                                            .start;

                                        // Insert '1' at the current cursor position
                                        final newText =
                                            currentText.replaceRange(
                                          currentPosition,
                                          currentPosition,
                                          '8',
                                        );

                                        // Update the controller's text and cursor position
                                        betController
                                            .lotteryBetMobileMyrController
                                            .value = TextEditingValue(
                                          text: newText,
                                          selection: TextSelection.fromPosition(
                                            TextPosition(
                                                offset: currentPosition +
                                                    1), // Move cursor to after the inserted '1'
                                          ),
                                        );

                                        setState(() {});
                                      },
                                      child: Padding(
                                        padding: const EdgeInsets.all(2.0),
                                        child: buttonContainer(
                                          button: 'G',
                                          isSelected: betController
                                              .lotteryBetMobileMyrController
                                              .text
                                              .contains('8'),
                                        ),
                                      ),
                                    ),
                                    InkWell(
                                      onTap: () {
                                        final currentText = betController
                                            .lotteryBetMobileMyrController.text;
                                        final currentPosition = betController
                                            .lotteryBetMobileMyrController
                                            .selection
                                            .start;

                                        // Insert '1' at the current cursor position
                                        final newText =
                                            currentText.replaceRange(
                                          currentPosition,
                                          currentPosition,
                                          '9',
                                        );

                                        // Update the controller's text and cursor position
                                        betController
                                            .lotteryBetMobileMyrController
                                            .value = TextEditingValue(
                                          text: newText,
                                          selection: TextSelection.fromPosition(
                                            TextPosition(
                                                offset: currentPosition +
                                                    1), // Move cursor to after the inserted '1'
                                          ),
                                        );

                                        setState(() {});
                                      },
                                      child: Padding(
                                        padding: const EdgeInsets.all(2.0),
                                        child: buttonContainer(
                                          button: 'E',
                                          isSelected: betController
                                              .lotteryBetMobileMyrController
                                              .text
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
                                padding: const EdgeInsets.only(
                                    left: 12.0, right: 12),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    // for 1 2
                                    InkWell(
                                      onTap: () {
                                        print('from here');
                                        final currentText = betController
                                            .lotteryBetMobileMyrController.text;
                                        final currentPosition = betController
                                            .lotteryBetMobileMyrController
                                            .selection
                                            .start;

                                        // Insert '1' at the current cursor position
                                        final newText =
                                            currentText.replaceRange(
                                          currentPosition,
                                          currentPosition,
                                          '1',
                                        );

                                        // Update the controller's text and cursor position
                                        betController
                                            .lotteryBetMobileMyrController
                                            .value = TextEditingValue(
                                          text: newText,
                                          selection: TextSelection.fromPosition(
                                            TextPosition(
                                                offset: currentPosition +
                                                    1), // Move cursor to after the inserted '1'
                                          ),
                                        );

                                        setState(() {});
                                      },
                                      child: const numberContainer(
                                        number: '1',
                                      ),
                                    ),
                                    InkWell(
                                        onTap: () {
                                          print('from here');
                                          final currentText = betController
                                              .lotteryBetMobileMyrController
                                              .text;
                                          final currentPosition = betController
                                              .lotteryBetMobileMyrController
                                              .selection
                                              .start;

                                          // Insert '1' at the current cursor position
                                          final newText =
                                              currentText.replaceRange(
                                            currentPosition,
                                            currentPosition,
                                            '2',
                                          );

                                          // Update the controller's text and cursor position
                                          betController
                                              .lotteryBetMobileMyrController
                                              .value = TextEditingValue(
                                            text: newText,
                                            selection:
                                                TextSelection.fromPosition(
                                              TextPosition(
                                                  offset: currentPosition +
                                                      1), // Move cursor to after the inserted '1'
                                            ),
                                          );

                                          setState(() {});
                                        },
                                        child: const numberContainer(
                                          number: '2',
                                        )),
                                    InkWell(
                                        onTap: () {
                                          final currentText = betController
                                              .lotteryBetMobileMyrController
                                              .text;
                                          final currentPosition = betController
                                              .lotteryBetMobileMyrController
                                              .selection
                                              .start;

                                          // Insert '1' at the current cursor position
                                          final newText =
                                              currentText.replaceRange(
                                            currentPosition,
                                            currentPosition,
                                            '3',
                                          );

                                          // Update the controller's text and cursor position
                                          betController
                                              .lotteryBetMobileMyrController
                                              .value = TextEditingValue(
                                            text: newText,
                                            selection:
                                                TextSelection.fromPosition(
                                              TextPosition(
                                                  offset: currentPosition +
                                                      1), // Move cursor to after the inserted '1'
                                            ),
                                          );

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
                                padding: const EdgeInsets.only(
                                    left: 12.0, right: 12),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    InkWell(
                                        onTap: () {
                                          final currentText = betController
                                              .lotteryBetMobileMyrController
                                              .text;
                                          final currentPosition = betController
                                              .lotteryBetMobileMyrController
                                              .selection
                                              .start;

                                          // Insert '1' at the current cursor position
                                          final newText =
                                              currentText.replaceRange(
                                            currentPosition,
                                            currentPosition,
                                            '4',
                                          );

                                          // Update the controller's text and cursor position
                                          betController
                                              .lotteryBetMobileMyrController
                                              .value = TextEditingValue(
                                            text: newText,
                                            selection:
                                                TextSelection.fromPosition(
                                              TextPosition(
                                                  offset: currentPosition +
                                                      1), // Move cursor to after the inserted '1'
                                            ),
                                          );

                                          setState(() {});
                                        },
                                        child: const numberContainer(
                                          number: '4',
                                        )),
                                    InkWell(
                                        onTap: () {
                                          final currentText = betController
                                              .lotteryBetMobileMyrController
                                              .text;
                                          final currentPosition = betController
                                              .lotteryBetMobileMyrController
                                              .selection
                                              .start;

                                          // Insert '1' at the current cursor position
                                          final newText =
                                              currentText.replaceRange(
                                            currentPosition,
                                            currentPosition,
                                            '5',
                                          );

                                          // Update the controller's text and cursor position
                                          betController
                                              .lotteryBetMobileMyrController
                                              .value = TextEditingValue(
                                            text: newText,
                                            selection:
                                                TextSelection.fromPosition(
                                              TextPosition(
                                                  offset: currentPosition +
                                                      1), // Move cursor to after the inserted '1'
                                            ),
                                          );

                                          setState(() {});
                                        },
                                        child: const numberContainer(
                                          number: '5',
                                        )),
                                    InkWell(
                                      onTap: () {
                                        final currentText = betController
                                            .lotteryBetMobileMyrController.text;
                                        final currentPosition = betController
                                            .lotteryBetMobileMyrController
                                            .selection
                                            .start;

                                        // Insert '1' at the current cursor position
                                        final newText =
                                            currentText.replaceRange(
                                          currentPosition,
                                          currentPosition,
                                          '6',
                                        );

                                        // Update the controller's text and cursor position
                                        betController
                                            .lotteryBetMobileMyrController
                                            .value = TextEditingValue(
                                          text: newText,
                                          selection: TextSelection.fromPosition(
                                            TextPosition(
                                                offset: currentPosition +
                                                    1), // Move cursor to after the inserted '1'
                                          ),
                                        );

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
                                        final currentText = betController
                                            .lotteryBetMobileMyrController.text;
                                        final currentPosition = betController
                                            .lotteryBetMobileMyrController
                                            .selection
                                            .start;

                                        if (currentText.isNotEmpty &&
                                            currentPosition > 0) {
                                          // Remove the character at the current cursor position
                                          final newText =
                                              currentText.replaceRange(
                                            currentPosition - 1,
                                            currentPosition,
                                            '',
                                          );

                                          betController
                                              .lotteryBetMobileMyrController
                                              .value = TextEditingValue(
                                            text: newText,
                                            selection:
                                                TextSelection.fromPosition(
                                              TextPosition(
                                                  offset: currentPosition - 1),
                                            ),
                                          );

                                          // Optionally call onChangedText if needed
                                          betController.onChangedText(newText);
                                        }

                                        setState(() {});
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
                                padding: const EdgeInsets.only(
                                    left: 12.0, right: 12),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    InkWell(
                                        onTap: () {
                                          final currentText = betController
                                              .lotteryBetMobileMyrController
                                              .text;
                                          final currentPosition = betController
                                              .lotteryBetMobileMyrController
                                              .selection
                                              .start;

                                          // Insert '1' at the current cursor position
                                          final newText =
                                              currentText.replaceRange(
                                            currentPosition,
                                            currentPosition,
                                            '7',
                                          );

                                          // Update the controller's text and cursor position
                                          betController
                                              .lotteryBetMobileMyrController
                                              .value = TextEditingValue(
                                            text: newText,
                                            selection:
                                                TextSelection.fromPosition(
                                              TextPosition(
                                                  offset: currentPosition +
                                                      1), // Move cursor to after the inserted '1'
                                            ),
                                          );

                                          setState(() {});
                                        },
                                        child: const numberContainer(
                                          number: '7',
                                        )),
                                    InkWell(
                                        onTap: () {
                                          final currentText = betController
                                              .lotteryBetMobileMyrController
                                              .text;
                                          final currentPosition = betController
                                              .lotteryBetMobileMyrController
                                              .selection
                                              .start;

                                          // Insert '1' at the current cursor position
                                          final newText =
                                              currentText.replaceRange(
                                            currentPosition,
                                            currentPosition,
                                            '8',
                                          );

                                          // Update the controller's text and cursor position
                                          betController
                                              .lotteryBetMobileMyrController
                                              .value = TextEditingValue(
                                            text: newText,
                                            selection:
                                                TextSelection.fromPosition(
                                              TextPosition(
                                                  offset: currentPosition +
                                                      1), // Move cursor to after the inserted '1'
                                            ),
                                          );

                                          setState(() {});
                                        },
                                        child: const numberContainer(
                                          number: '8',
                                        )),
                                    InkWell(
                                        onTap: () {
                                          final currentText = betController
                                              .lotteryBetMobileMyrController
                                              .text;
                                          final currentPosition = betController
                                              .lotteryBetMobileMyrController
                                              .selection
                                              .start;

                                          // Insert '1' at the current cursor position
                                          final newText =
                                              currentText.replaceRange(
                                            currentPosition,
                                            currentPosition,
                                            '9',
                                          );

                                          // Update the controller's text and cursor position
                                          betController
                                              .lotteryBetMobileMyrController
                                              .value = TextEditingValue(
                                            text: newText,
                                            selection:
                                                TextSelection.fromPosition(
                                              TextPosition(
                                                  offset: currentPosition +
                                                      1), // Move cursor to after the inserted '1'
                                            ),
                                          );
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
                                padding: const EdgeInsets.only(
                                    left: 12.0, right: 12),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    InkWell(
                                      onTap: () {
                                        final currentText = betController
                                            .lotteryBetMobileMyrController.text;
                                        final currentPosition = betController
                                            .lotteryBetMobileMyrController
                                            .selection
                                            .start;

                                        // Insert the '*' at the current cursor position
                                        final newText =
                                            currentText.replaceRange(
                                          currentPosition,
                                          currentPosition,
                                          '*',
                                        );

                                        // Update the controller's text and set the cursor position after the inserted text
                                        betController
                                            .lotteryBetMobileMyrController
                                            .value = TextEditingValue(
                                          text: newText,
                                          selection: TextSelection.fromPosition(
                                            TextPosition(
                                                offset: currentPosition + 1),
                                          ),
                                        );

                                        // Optionally call onChangedText if needed
                                        betController.onChangedText(newText);

                                        setState(() {});
                                      },
                                      child: const numberContainer(
                                        number: '*',
                                      ),
                                    ),
                                    InkWell(
                                      onTap: () {},
                                      child: const numberContainer(
                                        number: '0',
                                      ),
                                    ),
                                    InkWell(
                                      onTap: () {
                                        final currentText = betController
                                            .lotteryBetMobileMyrController.text;
                                        final currentPosition = betController
                                            .lotteryBetMobileMyrController
                                            .selection
                                            .start;

                                        // Insert the '#' at the current cursor position
                                        final newText =
                                            currentText.replaceRange(
                                          currentPosition,
                                          currentPosition,
                                          '#',
                                        );

                                        // Update the controller's text and set the cursor position after the inserted text
                                        betController
                                            .lotteryBetMobileMyrController
                                            .value = TextEditingValue(
                                          text: newText,
                                          selection: TextSelection.fromPosition(
                                            TextPosition(
                                                offset: currentPosition + 1),
                                          ),
                                        );

                                        // Optionally call onChangedText if needed
                                        betController.onChangedText(newText);

                                        setState(() {});
                                      },
                                      child: const numberContainer(
                                        number: '#',
                                      ),
                                    ),
                                    InkWell(
                                      onTap: () {
                                        betController.isLottery.value = true;

                                        // Call the addNewLine method to insert a new line
                                        betController.addNewLine();

                                        // Reset the flag for hash check (optional, based on your logic)
                                        betController
                                            .isCurrentLineStartingWithHash
                                            .value = false;

                                        setState(() {});
                                      },
                                      child: Container(
                                        height:
                                            MediaQuery.of(context).size.height *
                                                0.044,
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.368,
                                        color: Colors.grey,
                                        child: const Center(
                                          child: Text(
                                            "Enter",
                                            style: TextStyle(
                                              fontSize: 17,
                                              fontWeight: FontWeight.w500,
                                            ),
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
                                    // for 1
                                    InkWell(
                                      onTap: () {
                                        print('from here');
                                        final currentText = betController
                                            .lotteryBetMobileMyrController.text;
                                        final currentPosition = betController
                                            .lotteryBetMobileMyrController
                                            .selection
                                            .start;

                                        // Insert '1' at the current cursor position
                                        final newText =
                                            currentText.replaceRange(
                                          currentPosition,
                                          currentPosition,
                                          '1',
                                        );

                                        // Update the controller's text and cursor position
                                        betController
                                            .lotteryBetMobileMyrController
                                            .value = TextEditingValue(
                                          text: newText,
                                          selection: TextSelection.fromPosition(
                                            TextPosition(
                                                offset: currentPosition +
                                                    1), // Move cursor to after the inserted '1'
                                          ),
                                        );

                                        setState(() {});
                                      },
                                      child: const numberContainer(
                                        number: '1',
                                      ),
                                    ),

                                    InkWell(
                                        onTap: () {
                                          print('from here');
                                          final currentText = betController
                                              .lotteryBetMobileMyrController
                                              .text;
                                          final currentPosition = betController
                                              .lotteryBetMobileMyrController
                                              .selection
                                              .start;

                                          // Insert '1' at the current cursor position
                                          final newText =
                                              currentText.replaceRange(
                                            currentPosition,
                                            currentPosition,
                                            '2',
                                          );

                                          // Update the controller's text and cursor position
                                          betController
                                              .lotteryBetMobileMyrController
                                              .value = TextEditingValue(
                                            text: newText,
                                            selection:
                                                TextSelection.fromPosition(
                                              TextPosition(
                                                  offset: currentPosition +
                                                      1), // Move cursor to after the inserted '1'
                                            ),
                                          );

                                          setState(() {});
                                        },
                                        child: const numberContainer(
                                          number: '2',
                                        )),
                                    InkWell(
                                        onTap: () {
                                          print('from here');
                                          final currentText = betController
                                              .lotteryBetMobileMyrController
                                              .text;
                                          final currentPosition = betController
                                              .lotteryBetMobileMyrController
                                              .selection
                                              .start;

                                          // Insert '1' at the current cursor position
                                          final newText =
                                              currentText.replaceRange(
                                            currentPosition,
                                            currentPosition,
                                            '3',
                                          );

                                          // Update the controller's text and cursor position
                                          betController
                                              .lotteryBetMobileMyrController
                                              .value = TextEditingValue(
                                            text: newText,
                                            selection:
                                                TextSelection.fromPosition(
                                              TextPosition(
                                                  offset: currentPosition +
                                                      1), // Move cursor to after the inserted '1'
                                            ),
                                          );

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
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.179,
                                        decoration: BoxDecoration(
                                            color: betController
                                                    .isCurrentLineStartingWithDoubleStar
                                                    .value
                                                ? Colors.red
                                                : Colors.grey,
                                            borderRadius:
                                                BorderRadius.circular(10)),
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
                                padding: const EdgeInsets.only(
                                    left: 12.0, right: 12),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    InkWell(
                                        onTap: () {
                                          print('from here');
                                          final currentText = betController
                                              .lotteryBetMobileMyrController
                                              .text;
                                          final currentPosition = betController
                                              .lotteryBetMobileMyrController
                                              .selection
                                              .start;

                                          // Insert '1' at the current cursor position
                                          final newText =
                                              currentText.replaceRange(
                                            currentPosition,
                                            currentPosition,
                                            '4',
                                          );

                                          // Update the controller's text and cursor position
                                          betController
                                              .lotteryBetMobileMyrController
                                              .value = TextEditingValue(
                                            text: newText,
                                            selection:
                                                TextSelection.fromPosition(
                                              TextPosition(
                                                  offset: currentPosition +
                                                      1), // Move cursor to after the inserted '1'
                                            ),
                                          );

                                          setState(() {});
                                        },
                                        child: const numberContainer(
                                          number: '4',
                                        )),
                                    InkWell(
                                        onTap: () {
                                          print('from here');
                                          final currentText = betController
                                              .lotteryBetMobileMyrController
                                              .text;
                                          final currentPosition = betController
                                              .lotteryBetMobileMyrController
                                              .selection
                                              .start;

                                          // Insert '1' at the current cursor position
                                          final newText =
                                              currentText.replaceRange(
                                            currentPosition,
                                            currentPosition,
                                            '5',
                                          );

                                          // Update the controller's text and cursor position
                                          betController
                                              .lotteryBetMobileMyrController
                                              .value = TextEditingValue(
                                            text: newText,
                                            selection:
                                                TextSelection.fromPosition(
                                              TextPosition(
                                                  offset: currentPosition +
                                                      1), // Move cursor to after the inserted '1'
                                            ),
                                          );

                                          setState(() {});
                                        },
                                        child: const numberContainer(
                                          number: '5',
                                        )),
                                    InkWell(
                                      onTap: () {
                                        print('from here');
                                        final currentText = betController
                                            .lotteryBetMobileMyrController.text;
                                        final currentPosition = betController
                                            .lotteryBetMobileMyrController
                                            .selection
                                            .start;

                                        // Insert '1' at the current cursor position
                                        final newText =
                                            currentText.replaceRange(
                                          currentPosition,
                                          currentPosition,
                                          '6',
                                        );

                                        // Update the controller's text and cursor position
                                        betController
                                            .lotteryBetMobileMyrController
                                            .value = TextEditingValue(
                                          text: newText,
                                          selection: TextSelection.fromPosition(
                                            TextPosition(
                                                offset: currentPosition +
                                                    1), // Move cursor to after the inserted '1'
                                          ),
                                        );

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
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.179,
                                        decoration: BoxDecoration(
                                            color: betController
                                                    .isCurrentLineStartingWithDoubleStar
                                                    .value
                                                ? Colors.red
                                                : Colors.grey,
                                            borderRadius:
                                                BorderRadius.circular(10)),
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
                                        final currentText = betController
                                            .lotteryBetMobileMyrController.text;
                                        final currentPosition = betController
                                            .lotteryBetMobileMyrController
                                            .selection
                                            .start;

                                        if (currentText.isNotEmpty &&
                                            currentPosition > 0) {
                                          // Remove the character at the current cursor position
                                          final newText =
                                              currentText.replaceRange(
                                            currentPosition - 1,
                                            currentPosition,
                                            '',
                                          );

                                          betController
                                              .lotteryBetMobileMyrController
                                              .value = TextEditingValue(
                                            text: newText,
                                            selection:
                                                TextSelection.fromPosition(
                                              TextPosition(
                                                  offset: currentPosition - 1),
                                            ),
                                          );

                                          // Optionally call onChangedText if needed
                                          betController.onChangedText(newText);
                                        }

                                        setState(() {});
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
                                padding: const EdgeInsets.only(
                                    left: 12.0, right: 12),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    InkWell(
                                        onTap: () {
                                          print('from here');
                                          final currentText = betController
                                              .lotteryBetMobileMyrController
                                              .text;
                                          final currentPosition = betController
                                              .lotteryBetMobileMyrController
                                              .selection
                                              .start;

                                          // Insert '1' at the current cursor position
                                          final newText =
                                              currentText.replaceRange(
                                            currentPosition,
                                            currentPosition,
                                            '7',
                                          );

                                          // Update the controller's text and cursor position
                                          betController
                                              .lotteryBetMobileMyrController
                                              .value = TextEditingValue(
                                            text: newText,
                                            selection:
                                                TextSelection.fromPosition(
                                              TextPosition(
                                                  offset: currentPosition +
                                                      1), // Move cursor to after the inserted '1'
                                            ),
                                          );

                                          setState(() {});
                                        },
                                        child: const numberContainer(
                                          number: '7',
                                        )),
                                    InkWell(
                                        onTap: () {
                                          print('from here');
                                          final currentText = betController
                                              .lotteryBetMobileMyrController
                                              .text;
                                          final currentPosition = betController
                                              .lotteryBetMobileMyrController
                                              .selection
                                              .start;

                                          // Insert '1' at the current cursor position
                                          final newText =
                                              currentText.replaceRange(
                                            currentPosition,
                                            currentPosition,
                                            '8',
                                          );

                                          // Update the controller's text and cursor position
                                          betController
                                              .lotteryBetMobileMyrController
                                              .value = TextEditingValue(
                                            text: newText,
                                            selection:
                                                TextSelection.fromPosition(
                                              TextPosition(
                                                  offset: currentPosition +
                                                      1), // Move cursor to after the inserted '1'
                                            ),
                                          );

                                          setState(() {});
                                        },
                                        child: const numberContainer(
                                          number: '8',
                                        )),
                                    InkWell(
                                        onTap: () {
                                          print('from here');
                                          final currentText = betController
                                              .lotteryBetMobileMyrController
                                              .text;
                                          final currentPosition = betController
                                              .lotteryBetMobileMyrController
                                              .selection
                                              .start;

                                          // Insert '1' at the current cursor position
                                          final newText =
                                              currentText.replaceRange(
                                            currentPosition,
                                            currentPosition,
                                            '9',
                                          );

                                          // Update the controller's text and cursor position
                                          betController
                                              .lotteryBetMobileMyrController
                                              .value = TextEditingValue(
                                            text: newText,
                                            selection:
                                                TextSelection.fromPosition(
                                              TextPosition(
                                                  offset: currentPosition +
                                                      1), // Move cursor to after the inserted '1'
                                            ),
                                          );

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
                                padding: const EdgeInsets.only(
                                    left: 12.0, right: 12),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    InkWell(
                                      onTap: () {
                                        final currentText = betController
                                            .lotteryBetMobileMyrController.text;
                                        final currentPosition = betController
                                            .lotteryBetMobileMyrController
                                            .selection
                                            .start;

                                        // Insert the '*' at the current cursor position
                                        final newText =
                                            currentText.replaceRange(
                                          currentPosition,
                                          currentPosition,
                                          '*',
                                        );

                                        // Update the controller's text and set the cursor position after the inserted text
                                        betController
                                            .lotteryBetMobileMyrController
                                            .value = TextEditingValue(
                                          text: newText,
                                          selection: TextSelection.fromPosition(
                                            TextPosition(
                                                offset: currentPosition + 1),
                                          ),
                                        );

                                        // Optionally call onChangedText if needed
                                        betController.onChangedText(newText);

                                        setState(() {});
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
                                        final currentText = betController
                                            .lotteryBetMobileMyrController.text;
                                        final currentPosition = betController
                                            .lotteryBetMobileMyrController
                                            .selection
                                            .start;

                                        // Insert the '#' at the current cursor position
                                        final newText =
                                            currentText.replaceRange(
                                          currentPosition,
                                          currentPosition,
                                          '#',
                                        );

                                        // Update the controller's text and set the cursor position after the inserted text
                                        betController
                                            .lotteryBetMobileMyrController
                                            .value = TextEditingValue(
                                          text: newText,
                                          selection: TextSelection.fromPosition(
                                            TextPosition(
                                                offset: currentPosition + 1),
                                          ),
                                        );

                                        // Optionally call onChangedText if needed
                                        betController.onChangedText(newText);

                                        setState(() {});
                                      },
                                      child: const numberContainer(
                                        number: '#',
                                      ),
                                    ),
                                    InkWell(
                                      onTap: () {
                                        betController.isLottery.value = true;

                                        // Call the addNewLine method to insert a new line
                                        betController.addNewLine();

                                        // Reset the flag for hash check (optional, based on your logic)
                                        betController
                                            .isCurrentLineStartingWithHash
                                            .value = false;

                                        setState(() {});
                                      },
                                      child: Container(
                                        height:
                                            MediaQuery.of(context).size.height *
                                                0.044,
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.368,
                                        color: Colors.grey,
                                        child: const Center(
                                          child: Text(
                                            "Enter",
                                            style: TextStyle(
                                              fontSize: 17,
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(
                                height: 10,
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
      decoration: BoxDecoration(
          color: Colors.grey, borderRadius: BorderRadius.circular(10)),
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
      decoration: BoxDecoration(
          color: isSelected ? Colors.red : Colors.grey,
          borderRadius: BorderRadius.circular(10)),
      height: MediaQuery.of(context).size.height * 0.054,
      width: MediaQuery.of(context).size.width * 0.092,
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
