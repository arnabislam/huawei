// Obx(
//   () => betController.isCurrentLineStartingWithHash.value ==
//           true
//       ? Column(
//           children: [
//             Padding(
//               padding: const EdgeInsets.only(
//                   left: 12.0, right: 12),
//               child: Row(
//                 mainAxisAlignment:
//                     MainAxisAlignment.spaceAround,
//                 children: [
//                   InkWell(
//                     onTap: () {
//                       betController
//                           .lotteryBetMobileMyrController
//                           .text += '1';
//
//                       setState(() {});
//                     },
//                     child: Padding(
//                       padding: const EdgeInsets.all(2.0),
//                       child: buttonContainer(
//                         button: 'M',
//                         isSelected: betController
//                             .lotteryBetMobileMyrController
//                             .text
//                             .contains('1'),
//                       ),
//                     ),
//                   ),
//                   InkWell(
//                     onTap: () {
//                       betController
//                           .lotteryBetMobileMyrController
//                           .text += '2';
//
//                       setState(() {});
//                     },
//                     child: Padding(
//                       padding: const EdgeInsets.all(2.0),
//                       child: buttonContainer(
//                         isSelected: betController
//                             .lotteryBetMobileMyrController
//                             .text
//                             .contains('2'),
//                         button: 'P',
//                       ),
//                     ),
//                   ),
//                   InkWell(
//                     onTap: () {
//                       betController
//                           .lotteryBetMobileMyrController
//                           .text += '3';
//
//                       setState(() {});
//                     },
//                     child: Padding(
//                       padding: const EdgeInsets.all(2.0),
//                       child: buttonContainer(
//                         button: 'T',
//                         isSelected: betController
//                             .lotteryBetMobileMyrController
//                             .text
//                             .contains('3'),
//                       ),
//                     ),
//                   ),
//                   InkWell(
//                     onTap: () {
//                       betController
//                           .lotteryBetMobileMyrController
//                           .text += '4';
//
//                       setState(() {});
//                     },
//                     child: Padding(
//                       padding: const EdgeInsets.all(2.0),
//                       child: buttonContainer(
//                         button: 'S',
//                         isSelected: betController
//                             .lotteryBetMobileMyrController
//                             .text
//                             .contains('4'),
//                       ),
//                     ),
//                   ),
//                   InkWell(
//                     onTap: () {
//                       betController
//                           .lotteryBetMobileMyrController
//                           .text += '5';
//
//                       setState(() {});
//                     },
//                     child: Padding(
//                       padding: const EdgeInsets.all(2.0),
//                       child: buttonContainer(
//                         isSelected: betController
//                             .lotteryBetMobileMyrController
//                             .text
//                             .contains('5'),
//                         button: 'B',
//                       ),
//                     ),
//                   ),
//                   InkWell(
//                     onTap: () {
//                       betController
//                           .lotteryBetMobileMyrController
//                           .text += '6';
//
//                       setState(() {});
//                     },
//                     child: Padding(
//                       padding: const EdgeInsets.all(2.0),
//                       child: buttonContainer(
//                         button: 'K',
//                         isSelected: betController
//                             .lotteryBetMobileMyrController
//                             .text
//                             .contains('6'),
//                       ),
//                     ),
//                   ),
//                   InkWell(
//                     onTap: () {
//                       betController
//                           .lotteryBetMobileMyrController
//                           .text += '7';
//
//                       setState(() {});
//                     },
//                     child: Padding(
//                       padding: const EdgeInsets.all(2.0),
//                       child: buttonContainer(
//                         button: 'W',
//                         isSelected: betController
//                             .lotteryBetMobileMyrController
//                             .text
//                             .contains('7'),
//                       ),
//                     ),
//                   ),
//                   InkWell(
//                     onTap: () {
//                       betController
//                           .lotteryBetMobileMyrController
//                           .text += '8';
//
//                       setState(() {});
//                     },
//                     child: Padding(
//                       padding: const EdgeInsets.all(2.0),
//                       child: buttonContainer(
//                         button: 'G',
//                         isSelected: betController
//                             .lotteryBetMobileMyrController
//                             .text
//                             .contains('8'),
//                       ),
//                     ),
//                   ),
//                   InkWell(
//                     onTap: () {
//                       betController
//                           .lotteryBetMobileMyrController
//                           .text += '9';
//
//                       setState(() {});
//                     },
//                     child: Padding(
//                       padding: const EdgeInsets.all(2.0),
//                       child: buttonContainer(
//                         button: 'E',
//                         isSelected: betController
//                             .lotteryBetMobileMyrController
//                             .text
//                             .contains('9'),
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//             SizedBox(
//               height:
//                   MediaQuery.of(context).size.height * 0.004,
//             ),
//             Padding(
//               padding: const EdgeInsets.only(
//                   left: 12.0, right: 12),
//               child: Row(
//                 mainAxisAlignment:
//                     MainAxisAlignment.spaceAround,
//                 children: [
//                   InkWell(
//                       onTap: () {
//                         betController
//                             .lotteryBetMobileMyrController
//                             .text += '1';
//
//                         setState(() {});
//                       },
//                       child: const numberContainer(
//                         number: '1',
//                       )),
//                   InkWell(
//                       onTap: () {
//                         betController
//                             .lotteryBetMobileMyrController
//                             .text += '2';
//
//                         setState(() {});
//                       },
//                       child: const numberContainer(
//                         number: '2',
//                       )),
//                   InkWell(
//                       onTap: () {
//                         betController
//                             .lotteryBetMobileMyrController
//                             .text += '3';
//
//                         setState(() {});
//                       },
//                       child: const numberContainer(
//                         number: '3',
//                       )),
//                   const numberContainer(
//                     number: 'BOX',
//                   ),
//                   const numberContainer(
//                     number: 'D',
//                   ),
//                 ],
//               ),
//             ),
//             SizedBox(
//               height:
//                   MediaQuery.of(context).size.height * 0.010,
//             ),
//             Padding(
//               padding: const EdgeInsets.only(
//                   left: 12.0, right: 12),
//               child: Row(
//                 mainAxisAlignment:
//                     MainAxisAlignment.spaceAround,
//                 children: [
//                   InkWell(
//                       onTap: () {
//                         betController
//                             .lotteryBetMobileMyrController
//                             .text += '4';
//
//                         setState(() {});
//                       },
//                       child: const numberContainer(
//                         number: '4',
//                       )),
//                   InkWell(
//                       onTap: () {
//                         betController
//                             .lotteryBetMobileMyrController
//                             .text += '5';
//
//                         setState(() {});
//                       },
//                       child: const numberContainer(
//                         number: '5',
//                       )),
//                   InkWell(
//                     onTap: () {
//                       betController
//                           .lotteryBetMobileMyrController
//                           .text += '6';
//
//                       setState(() {});
//                     },
//                     child: const numberContainer(
//                       number: '6',
//                     ),
//                   ),
//                   const numberContainer(
//                     number: 'iBOX',
//                   ),
//                   InkWell(
//                     onTap: () {
//                       if (betController
//                           .lotteryBetMobileMyrController
//                           .text
//                           .isNotEmpty) {
//                         setState(() {
//                           betController
//                                   .lotteryBetMobileMyrController
//                                   .text =
//                               betController
//                                   .lotteryBetMobileMyrController
//                                   .text
//                                   .substring(
//                             0,
//                             betController
//                                     .lotteryBetMobileMyrController
//                                     .text
//                                     .length -
//                                 1,
//                           );
//                         });
//                       }
//                       betController.onChangedText(
//                           betController
//                               .lotteryBetMobileMyrController
//                               .text);
//                     },
//                     child: const numberContainer(
//                       number: 'C',
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//             SizedBox(
//               height:
//                   MediaQuery.of(context).size.height * 0.010,
//             ),
//             Padding(
//               padding: const EdgeInsets.only(
//                   left: 12.0, right: 12),
//               child: Row(
//                 mainAxisAlignment:
//                     MainAxisAlignment.spaceAround,
//                 children: [
//                   InkWell(
//                       onTap: () {
//                         betController
//                             .lotteryBetMobileMyrController
//                             .text += '7';
//
//                         setState(() {});
//                       },
//                       child: const numberContainer(
//                         number: '7',
//                       )),
//                   InkWell(
//                       onTap: () {
//                         betController
//                             .lotteryBetMobileMyrController
//                             .text += '8';
//
//                         setState(() {});
//                       },
//                       child: const numberContainer(
//                         number: '8',
//                       )),
//                   InkWell(
//                       onTap: () {
//                         betController
//                             .lotteryBetMobileMyrController
//                             .text += '9';
//                       },
//                       child: const numberContainer(
//                         number: '9',
//                       )),
//                   const numberContainer(
//                     number: 'REV',
//                   ),
//                   const numberContainer(
//                     number: '.',
//                   ),
//                 ],
//               ),
//             ),
//             SizedBox(
//               height:
//                   MediaQuery.of(context).size.height * 0.010,
//             ),
//             Padding(
//               padding: const EdgeInsets.only(
//                   left: 12.0, right: 12),
//               child: Row(
//                 mainAxisAlignment:
//                     MainAxisAlignment.spaceAround,
//                 children: [
//                   const numberContainer(
//                     number: '*',
//                   ),
//                   InkWell(
//                     onTap: () {},
//                     child: const numberContainer(
//                       number: '0',
//                     ),
//                   ),
//                   InkWell(
//                     onTap: () {
//                       betController.onChangedText(
//                           betController
//                               .lotteryBetMobileMyrController
//                               .text);
//                     },
//                     child: const numberContainer(
//                       number: '#',
//                     ),
//                   ),
//                   InkWell(
//                     onTap: () {
//                       betController.isLottery.value = true;
//                       betController
//                           .lotteryBetMobileMyrController
//                           .text += '\n';
//                       betController
//                           .isCurrentLineStartingWithHash
//                           .value = false;
//
//                       setState(() {});
//                     },
//                     child: Container(
//                       height:
//                           MediaQuery.of(context).size.height *
//                               0.044,
//                       width:
//                           MediaQuery.of(context).size.width *
//                               0.368,
//                       color: Colors.grey,
//                       child: const Center(
//                         child: Text(
//                           "Enter",
//                           style: TextStyle(
//                               fontSize: 17,
//                               fontWeight: FontWeight.w500),
//                         ),
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//             Padding(
//               padding: const EdgeInsets.only(
//                   left: 28, right: 28, top: 5, bottom: 11),
//               child: ElevatedButton(
//                 style: ElevatedButton.styleFrom(
//                     backgroundColor: Colors.blue),
//                 onPressed: () {},
//                 child: const Center(
//                   child: Padding(
//                     padding: EdgeInsets.all(8.0),
//                     child: Text(
//                       "Submit",
//                       style: TextStyle(
//                           color: Colors.white,
//                           fontSize: 25,
//                           fontWeight: FontWeight.bold),
//                     ),
//                   ),
//                 ),
//               ),
//             )
//           ],
//         )
//       : Column(
//           children: [
//             Padding(
//               padding: const EdgeInsets.only(
//                 left: 12.0,
//                 right: 12,
//               ),
//               child: Row(
//                 mainAxisAlignment:
//                     MainAxisAlignment.spaceAround,
//                 children: [
//                   InkWell(
//                       onTap: () {
//                         betController
//                             .lotteryBetMobileMyrController
//                             .text += '1';
//                         setState(() {});
//                       },
//                       child: const numberContainer(
//                         number: '1',
//                       )),
//                   InkWell(
//                       onTap: () {
//                         betController
//                             .lotteryBetMobileMyrController
//                             .text += '2';
//                         setState(() {});
//                       },
//                       child: const numberContainer(
//                         number: '2',
//                       )),
//                   InkWell(
//                       onTap: () {
//                         betController
//                             .lotteryBetMobileMyrController
//                             .text += '3';
//                         setState(() {});
//                       },
//                       child: const numberContainer(
//                         number: '3',
//                       )),
//                   Obx(() {
//                     return Container(
//                       height:
//                           MediaQuery.of(context).size.height *
//                               0.044,
//                       width:
//                           MediaQuery.of(context).size.width *
//                               0.179,
//                       decoration: BoxDecoration(
//                           color: betController
//                                   .isCurrentLineStartingWithDoubleStar
//                                   .value
//                               ? Colors.red
//                               : Colors.grey,
//                           borderRadius:
//                               BorderRadius.circular(10)),
//                       child: const Center(
//                           child: Text(
//                         'Box',
//                         style: TextStyle(
//                             fontSize: 17,
//                             fontWeight: FontWeight.w500),
//                       )),
//                     );
//                   }),
//                   const numberContainer(
//                     number: 'D',
//                   ),
//                 ],
//               ),
//             ),
//             SizedBox(
//               height:
//                   MediaQuery.of(context).size.height * 0.010,
//             ),
//             Padding(
//               padding: const EdgeInsets.only(
//                   left: 12.0, right: 12),
//               child: Row(
//                 mainAxisAlignment:
//                     MainAxisAlignment.spaceAround,
//                 children: [
//                   InkWell(
//                       onTap: () {
//                         betController
//                             .lotteryBetMobileMyrController
//                             .text += '4';
//                         setState(() {});
//                       },
//                       child: const numberContainer(
//                         number: '4',
//                       )),
//                   InkWell(
//                       onTap: () {
//                         betController
//                             .lotteryBetMobileMyrController
//                             .text += '5';
//                         setState(() {});
//                       },
//                       child: const numberContainer(
//                         number: '5',
//                       )),
//                   InkWell(
//                     onTap: () {
//                       betController
//                           .lotteryBetMobileMyrController
//                           .text += '6';
//                       setState(() {});
//                     },
//                     child: const numberContainer(
//                       number: '6',
//                     ),
//                   ),
//                   Obx(() {
//                     return Container(
//                       height:
//                           MediaQuery.of(context).size.height *
//                               0.044,
//                       width:
//                           MediaQuery.of(context).size.width *
//                               0.179,
//                       decoration: BoxDecoration(
//                           color: betController
//                                   .isCurrentLineStartingWithDoubleStar
//                                   .value
//                               ? Colors.red
//                               : Colors.grey,
//                           borderRadius:
//                               BorderRadius.circular(10)),
//                       child: const Center(
//                           child: Text(
//                         'iBox',
//                         style: TextStyle(
//                             fontSize: 17,
//                             fontWeight: FontWeight.w500),
//                       )),
//                     );
//                   }),
//                   InkWell(
//                     onTap: () {
//                       if (betController
//                           .lotteryBetMobileMyrController
//                           .text
//                           .isNotEmpty) {
//                         setState(() {
//                           betController
//                                   .lotteryBetMobileMyrController
//                                   .text =
//                               betController
//                                   .lotteryBetMobileMyrController
//                                   .text
//                                   .substring(
//                             0,
//                             betController
//                                     .lotteryBetMobileMyrController
//                                     .text
//                                     .length -
//                                 1,
//                           );
//                         });
//                       }
//                       betController.onChangedText(
//                           betController
//                               .lotteryBetMobileMyrController
//                               .text);
//                     },
//                     child: const numberContainer(
//                       number: 'C',
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//             SizedBox(
//               height:
//                   MediaQuery.of(context).size.height * 0.010,
//             ),
//             Padding(
//               padding: const EdgeInsets.only(
//                   left: 12.0, right: 12),
//               child: Row(
//                 mainAxisAlignment:
//                     MainAxisAlignment.spaceAround,
//                 children: [
//                   InkWell(
//                       onTap: () {
//                         betController
//                             .lotteryBetMobileMyrController
//                             .text += '7';
//                         setState(() {});
//                       },
//                       child: const numberContainer(
//                         number: '7',
//                       )),
//                   InkWell(
//                       onTap: () {
//                         betController
//                             .lotteryBetMobileMyrController
//                             .text += '8';
//                         setState(() {});
//                       },
//                       child: const numberContainer(
//                         number: '8',
//                       )),
//                   InkWell(
//                       onTap: () {
//                         betController
//                             .lotteryBetMobileMyrController
//                             .text += '9';
//                         setState(() {});
//                       },
//                       child: const numberContainer(
//                         number: '9',
//                       )),
//                   const numberContainer(
//                     number: 'REV',
//                   ),
//                   const numberContainer(
//                     number: '.',
//                   ),
//                 ],
//               ),
//             ),
//             SizedBox(
//               height:
//                   MediaQuery.of(context).size.height * 0.010,
//             ),
//             Padding(
//               padding: const EdgeInsets.only(
//                   left: 12.0, right: 12),
//               child: Row(
//                 mainAxisAlignment:
//                     MainAxisAlignment.spaceAround,
//                 children: [
//                   InkWell(
//                     onTap: () {
//                       betController
//                           .lotteryBetMobileMyrController
//                           .text += '*';
//                       betController.onChangedText(
//                           betController
//                               .lotteryBetMobileMyrController
//                               .text);
//                     },
//                     child: const numberContainer(
//                       number: '*',
//                     ),
//                   ),
//                   InkWell(
//                     onTap: () {
//                       betController
//                           .lotteryBetMobileMyrController
//                           .text += '0';
//                       setState(() {});
//                     },
//                     child: const numberContainer(
//                       number: '0',
//                     ),
//                   ),
//                   InkWell(
//                     onTap: () {
//                       betController
//                           .lotteryBetMobileMyrController
//                           .text += '#';
//                       betController.onChangedText(
//                           betController
//                               .lotteryBetMobileMyrController
//                               .text);
//                       setState(() {});
//                     },
//                     child: const numberContainer(
//                       number: '#',
//                     ),
//                   ),
//                   InkWell(
//                     onTap: () {
//                       betController.isLottery.value = true;
//                       betController
//                           .lotteryBetMobileMyrController
//                           .text += '\n';
//                       betController
//                           .isCurrentLineStartingWithHash
//                           .value = false;
//                     },
//                     child: Container(
//                       height:
//                           MediaQuery.of(context).size.height *
//                               0.044,
//                       width:
//                           MediaQuery.of(context).size.width *
//                               0.368,
//                       decoration: BoxDecoration(
//                           color: Colors.grey,
//                           borderRadius:
//                               BorderRadius.circular(10)),
//                       child: const Center(
//                           child: Text(
//                         "Enter",
//                         style: TextStyle(
//                             fontSize: 17,
//                             fontWeight: FontWeight.w500),
//                       )),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//             const SizedBox(
//               height: 10,
//             ),
//             Padding(
//               padding: const EdgeInsets.only(
//                   left: 28, right: 28, top: 5, bottom: 11),
//               child: ElevatedButton(
//                 style: ElevatedButton.styleFrom(
//                     backgroundColor: Colors.blue),
//                 onPressed: () {
//                   betController.tryToMakeOrder();
//                   // Get.to(BetHistoryResult2View());
//                 },
//                 child: const Center(
//                   child: Padding(
//                     padding: EdgeInsets.all(8.0),
//                     child: Text(
//                       "Submit",
//                       style: TextStyle(
//                           color: Colors.white,
//                           fontSize: 25,
//                           fontWeight: FontWeight.bold),
//                     ),
//                   ),
//                 ),
//               ),
//             )
//           ],
//         ),
// ),
