import 'dart:core';

import 'package:flutter/material.dart';

import 'package:get/get.dart';

class BetmobileView extends StatefulWidget {
   BetmobileView({Key? key}) : super(key: key);

  @override
  State<BetmobileView> createState() => _BetmobileViewState();
}

class _BetmobileViewState extends State<BetmobileView> {
  final TextEditingController _betMobileMyrController =
  TextEditingController();

  final TextEditingController _betMobileMyrController2 =
  TextEditingController();

  final TextEditingController _betMobileMyrController3 =
  TextEditingController();

   final TextEditingController buttonTextController =
   TextEditingController();
    bool mChecked=false;
    bool pChecked=false;
    bool tChecked=false;
    bool sChecked=false;
    bool bChecked=false;
    bool kChecked=false;
    bool wChecked=false;
    bool gChecked=false;
    bool eChecked=false;
    bool oneChecked=false;


  bool twoChecked=false;
  bool threeChecked=false;
  bool fourChecked=false;
  bool fiveChecked=false;
  bool sixChecked=false;
  bool sevenChecked=false;
  bool eightChecked=false;
  bool nineChecked=false;
  bool zeroChecked=false;

bool greatChecked=false;


  @override
  void dispose() {
    _betMobileMyrController2.dispose();
    super.dispose();
  }

  void updateTextField(int buttonNumber) {
    setState(() {
      _betMobileMyrController2.text += '$buttonNumber';
    });
  }
  void updateTextField2(int buttonNumber) {
    setState(() {
      _betMobileMyrController3.text += '$buttonNumber';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body:SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          margin:  EdgeInsets.only(top: 25),
          width: MediaQuery.of(context).size.width, // or set a specific width
          child: Column(
            children: [
              Row(
                children: [
                  Container(
                    padding: EdgeInsets.only(left: 5,right: 3),
                    width: MediaQuery.of(context).size.width*0.85,
                    child:  TextField(


                      controller: _betMobileMyrController,
                      decoration: InputDecoration(
                        hintText: 'Remark',
                        hintStyle: TextStyle(color: Colors.grey, fontSize: 19),
                      ),
                    ),
                  ),
                  Icon(Icons.error_outline,color: Colors.blue,size: 32,),
                ],
              ),
               TextField(
                 keyboardType: TextInputType.none,
                controller: _betMobileMyrController2,
                 onTap: (){
                   setState(() {
                     greatChecked=true;
                   });
                 },
                decoration: InputDecoration(


                  border: OutlineInputBorder(
                      borderSide: BorderSide.none,

                  ),
                ),
              ),

               TextField(
                 keyboardType: TextInputType.none,
controller: _betMobileMyrController3,
                 onTap: (){
                   setState(() {
                     greatChecked=false;
                   });
                 },
                decoration: const InputDecoration(


                  border: OutlineInputBorder(
                    borderSide: BorderSide.none,


                  ),
                ),
              ),
              SizedBox(height:MediaQuery.of(context).size.height*0.43,),





              if (greatChecked)
                Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 12.0,right: 12),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          InkWell(
                            onTap: (){
                              setState(() {
                                mChecked=!mChecked;
                                if(mChecked!=false){
                                  updateTextField(1);

                                }else if(mChecked==false){
                                  updateTextField(1);
                                }
                              });

                            },
                            child:
                            const Padding(
                              padding: EdgeInsets.all(2.0),
                              child: buttonContainer(button: 'M',),
                            ),
                          ),
                          InkWell(
                            onTap: (){
                              setState(() {
                                pChecked=!pChecked;
                                if(pChecked!=false){
                                  updateTextField(2);

                                }
                              });

                            },
                            child:  Padding(
                              padding: EdgeInsets.all(2.0),
                              child: buttonContainer(button: 'P',),
                            ),
                          ),
                          InkWell(
                            onTap: (){
                              setState(() {
                                tChecked=!tChecked;
                                if(tChecked!=false){
                                  updateTextField(3);

                                }
                              });

                            },
                            child: Padding(
                              padding: EdgeInsets.all(2.0),
                              child: buttonContainer(button: 'T',),
                            ),
                          ),
                          InkWell(
                            onTap: (){
                              setState(() {
                                sChecked=!sChecked;
                                if(sChecked!=false){
                                  updateTextField(4);

                                }
                              });

                            },
                            child:  Padding(
                              padding: EdgeInsets.all(2.0),
                              child: buttonContainer(button: 'S',),
                            ),
                          ),
                          InkWell(
                            onTap: (){
                              setState(() {
                                bChecked=!bChecked;
                                if(bChecked!=false){
                                  updateTextField(5);

                                }
                              });

                            },
                            child:  Padding(
                              padding: EdgeInsets.all(2.0),
                              child: buttonContainer(button: 'B',),
                            ),
                          ),
                          InkWell(
                            onTap: (){
                              setState(() {
                                kChecked=!kChecked;
                                if(kChecked!=false){
                                  updateTextField(6);

                                }
                              });

                            },
                            child:  Padding(
                              padding: EdgeInsets.all(2.0),
                              child: buttonContainer(button: 'K',),
                            ),
                          ),
                          InkWell(
                            onTap: (){
                              setState(() {
                                wChecked=!wChecked;
                                if(wChecked!=false){
                                  updateTextField(7);

                                }
                              });

                            },
                            child:  Padding(
                              padding: EdgeInsets.all(2.0),
                              child: buttonContainer(button: 'W',),
                            ),
                          ),
                          InkWell(
                            onTap: (){
                              setState(() {
                                gChecked=!gChecked;
                                if(gChecked!=false){
                                  updateTextField(8);

                                }
                              });

                            },
                            child: Padding(
                              padding: EdgeInsets.all(2.0),
                              child: buttonContainer(button: 'G',),
                            ),
                          ),
                          InkWell(
                            onTap: (){
                              setState(() {
                                eChecked=!eChecked;
                                if(eChecked!=false){
                                  updateTextField(9);

                                }
                              });

                            },
                            child: Padding(
                              padding: EdgeInsets.all(2.0),
                              child: buttonContainer(button: 'E',),
                            ),
                          ),



                        ],
                      ),
                    ),  SizedBox(height:MediaQuery.of(context).size.height*0.004,),
                    Padding(
                      padding: EdgeInsets.only(left: 12.0,right: 12),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          InkWell(
                              onTap: (){
                                updateTextField(1);

                              },

                              child: numberContainer(number: '1',)),
                          InkWell(


                              onTap: (){
                                updateTextField(2);
                              },
                              child: numberContainer(number: '2',)),
                          InkWell(

                              onTap: (){
                                updateTextField(3);

                              },
                              child: numberContainer(number: '3',)),
                          numberContainer(number: 'BOX',),
                          numberContainer(number: 'D',),
                        ],
                      ),
                    ),
                    SizedBox(height:MediaQuery.of(context).size.height*0.010,),
                    Padding(
                      padding: EdgeInsets.only(left: 12.0,right: 12),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          InkWell(
                              onTap: (){
                                updateTextField(4);

                              },
                              child: numberContainer(number: '4',)),
                          InkWell(

                              onTap: (){
                                updateTextField(5);

                              },
                              child: numberContainer(number: '5',)),
                          InkWell(

                              onTap: (){
                                updateTextField(6);

                              },
                              child: numberContainer(number: '6',)),
                          numberContainer(number: 'iBOX',),
                          InkWell(

                              onTap: (){
                                _betMobileMyrController2.clear();

                              },
                              child: numberContainer(number: 'C',)),
                        ],
                      ),
                    ),
                    SizedBox(height:MediaQuery.of(context).size.height*0.010,),
                    Padding(
                      padding: const EdgeInsets.only(left: 12.0,right: 12),
                      child:  Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          InkWell(
                              onTap: (){
                                updateTextField(7);

                              },
                              child: numberContainer(number: '7',)),
                          InkWell(
                              onTap: (){
                                updateTextField(8);

                              },
                              child: numberContainer(number: '8',)),
                          InkWell(
                              onTap: (){
                                updateTextField(9);

                              },

                              child: numberContainer(number: '9',)),
                          numberContainer(number: 'REV',),
                          numberContainer(number: '.',),
                        ],
                      ),
                    ),
                    SizedBox(height:MediaQuery.of(context).size.height*0.010,),
                    Padding(
                      padding: const EdgeInsets.only(left: 12.0,right: 12),
                      child:  Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          numberContainer(number: '*',),
                          InkWell( onTap: (){
                            updateTextField(0);

                          },child: numberContainer(number: '0',)),
                          numberContainer(number: '#',),
                          Container(
                            height:MediaQuery.of(context).size.height*0.044 ,
                            width:MediaQuery.of(context).size.width*0.368,
                            color: Colors.grey,
                            child: Center(child: Text("Enter",style: TextStyle(fontSize: 17,fontWeight: FontWeight.w500),)),
                          ),


                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 28,right: 28,top: 5,bottom: 11),
                      child: ElevatedButton(onPressed: (){}, child: Center(child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text("Submit",style: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.bold),),
                      ))),
                    )

                  ],
                )
              else
                Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 12.0,right: 12),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          InkWell(
                            onTap: (){
                              setState(() {
                                mChecked=!mChecked;
                                if(mChecked!=false){
                                  updateTextField2(1);

                                }else if(mChecked==false){
                                  updateTextField2(1);
                                }
                              });
                              // if(mChecked=false){
                              //   updateTextField(1);
                              //
                              // }
                              print("bangladesh");
                              print(mChecked);
                              //  _betMobileMyrController.text="1";
                              //  setState(() {
                              //    mChecked = !mChecked;
                              //  });
                            },
                            child:
                            const Padding(
                              padding: EdgeInsets.all(2.0),
                              child: buttonContainer(button: 'M',),
                            ),
                          ),
                          InkWell(
                            onTap: (){
                              setState(() {
                                pChecked=!pChecked;
                                if(pChecked!=false){
                                  updateTextField2(2);

                                }
                              });

                            },
                            child:  Padding(
                              padding: EdgeInsets.all(2.0),
                              child: buttonContainer(button: 'P',),
                            ),
                          ),
                          InkWell(
                            onTap: (){
                              setState(() {
                                tChecked=!tChecked;
                                if(tChecked!=false){
                                  updateTextField2(3);

                                }
                              });

                            },
                            child: Padding(
                              padding: EdgeInsets.all(2.0),
                              child: buttonContainer(button: 'T',),
                            ),
                          ),
                          InkWell(
                            onTap: (){
                              setState(() {
                                sChecked=!sChecked;
                                if(sChecked!=false){
                                  updateTextField2(4);

                                }
                              });

                            },
                            child:  const Padding(
                              padding: EdgeInsets.all(2.0),
                              child: buttonContainer(button: 'S',),
                            ),
                          ),
                          InkWell(
                            onTap: (){
                              setState(() {
                                bChecked=!bChecked;
                                if(bChecked!=false){
                                  updateTextField2(5);

                                }
                              });

                            },
                            child:  Padding(
                              padding: EdgeInsets.all(2.0),
                              child: buttonContainer(button: 'B',),
                            ),
                          ),
                          InkWell(
                            onTap: (){
                              setState(() {
                                kChecked=!kChecked;
                                if(kChecked!=false){
                                  updateTextField2(6);

                                }
                              });

                            },
                            child:  Padding(
                              padding: EdgeInsets.all(2.0),
                              child: buttonContainer(button: 'K',),
                            ),
                          ),
                          InkWell(
                            onTap: (){
                              setState(() {
                                wChecked=!wChecked;
                                if(wChecked!=false){
                                  updateTextField2(7);

                                }
                              });

                            },
                            child:  Padding(
                              padding: EdgeInsets.all(2.0),
                              child: buttonContainer(button: 'W',),
                            ),
                          ),
                          InkWell(
                            onTap: (){
                              setState(() {
                                gChecked=!gChecked;
                                if(gChecked!=false){
                                  updateTextField2(8);

                                }
                              });

                            },
                            child: Padding(
                              padding: EdgeInsets.all(2.0),
                              child: buttonContainer(button: 'G',),
                            ),
                          ),
                          InkWell(
                            onTap: (){
                              setState(() {
                                eChecked=!eChecked;
                                if(eChecked!=false){
                                  updateTextField2(9);

                                }
                              });

                            },
                            child: Padding(
                              padding: EdgeInsets.all(2.0),
                              child: buttonContainer(button: 'E',),
                            ),
                          ),



                        ],
                      ),
                    ),  SizedBox(height:MediaQuery.of(context).size.height*0.004,),
                    Padding(
                      padding: EdgeInsets.only(left: 12.0,right: 12),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          InkWell(
                              onTap: (){
                                updateTextField2(1);

                              },

                              child: numberContainer(number: '1',)),
                          InkWell(


                              onTap: (){
                                updateTextField2(2);
                              },
                              child: numberContainer(number: '2',)),
                          InkWell(

                              onTap: (){
                                updateTextField2(3);

                              },
                              child: numberContainer(number: '3',)),
                          numberContainer(number: 'BOX',),
                          numberContainer(number: 'D',),
                        ],
                      ),
                    ),
                    SizedBox(height:MediaQuery.of(context).size.height*0.010,),
                    Padding(
                      padding: EdgeInsets.only(left: 12.0,right: 12),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          InkWell(
                              onTap: (){
                                updateTextField2(4);

                              },
                              child: numberContainer(number: '4',)),
                          InkWell(

                              onTap: (){
                                updateTextField2(5);

                              },
                              child: numberContainer(number: '5',)),
                          InkWell(

                              onTap: (){
                                updateTextField2(6);

                              },
                              child: numberContainer(number: '6',)),
                          numberContainer(number: 'iBOX',),
                          InkWell(

                              onTap: (){
                                _betMobileMyrController3.clear();

                              },
                              child: numberContainer(number: 'C',)),
                        ],
                      ),
                    ),
                    SizedBox(height:MediaQuery.of(context).size.height*0.010,),
                    Padding(
                      padding: const EdgeInsets.only(left: 12.0,right: 12),
                      child:  Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          InkWell(
                              onTap: (){
                                updateTextField2(7);

                              },
                              child: numberContainer(number: '7',)),
                          InkWell(
                              onTap: (){
                                updateTextField2(8);

                              },
                              child: numberContainer(number: '8',)),
                          InkWell(
                              onTap: (){
                                updateTextField2(9);

                              },

                              child: numberContainer(number: '9',)),
                          numberContainer(number: 'REV',),
                          numberContainer(number: '.',),
                        ],
                      ),
                    ),
                    SizedBox(height:MediaQuery.of(context).size.height*0.010,),
                    Padding(
                      padding: const EdgeInsets.only(left: 12.0,right: 12),
                      child:  Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          numberContainer(number: '*',),
                          InkWell( onTap: (){
                            updateTextField2(0);

                          },child: numberContainer(number: '0',)),
                          numberContainer(number: '#',),
                          Container(
                            height:MediaQuery.of(context).size.height*0.044 ,
                            width:MediaQuery.of(context).size.width*0.368,
                            color: Colors.grey,
                            child: Center(child: Text("Enter",style: TextStyle(fontSize: 17,fontWeight: FontWeight.w500),)),
                          ),


                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 28,right: 28,top: 5,bottom: 11),
                      child: ElevatedButton(onPressed: (){}, child: Center(child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text("Submit",style: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.bold),),
                      ))),
                    )

                  ],
                )



            ],
          ),
        ),
      )


    );
  }
}

class numberContainer extends StatelessWidget {
  final String number;

  const numberContainer({
    super.key,required this.number
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height:MediaQuery.of(context).size.height*0.044 ,
      width:MediaQuery.of(context).size.width*0.179,
      color: Colors.grey,
      child: Center(child: Text(number,style: TextStyle(fontSize: 17,fontWeight: FontWeight.w500),)),
    );
  }
}

class buttonContainer extends StatelessWidget {
  final String button;
  const buttonContainer({
    super.key,required this.button,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
     height:MediaQuery.of(context).size.height*0.054 ,
      width:MediaQuery.of(context).size.width*0.092,
      color:Colors.grey,
      child: Center(child: Text(button,style: TextStyle(fontSize: 17,fontWeight: FontWeight.w500,),)),
    );
  }
}
