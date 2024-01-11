import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'betmobile_view.dart';

class BetMobileSgdView extends StatefulWidget {
   BetMobileSgdView({Key? key}) : super(key: key);

  @override
  State<BetMobileSgdView> createState() => _BetMobileSgdViewState();
}

//
class _BetMobileSgdViewState extends State<BetMobileSgdView> {
  final TextEditingController _betMobileMyrSgdController1 =
  TextEditingController();

  final TextEditingController _betMobileMyrSgdController2 =
  TextEditingController();

  final TextEditingController _betMobileMyrSgdController3 =
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
    _betMobileMyrSgdController2.dispose();
    super.dispose();
  }

  void updateTextField(int buttonNumber) {
    setState(() {
      _betMobileMyrSgdController2.text += '$buttonNumber';
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


                        controller: _betMobileMyrSgdController1,
                        decoration: InputDecoration(
                          hintText: 'Remark',
                          hintStyle: TextStyle(color: Colors.grey, fontSize: 19),
                        ),
                      ),
                    ),
                    Icon(Icons.error_outline,color: Colors.blue,size: 32,),
                  ],
                ),
                InkWell(
                  onTap: (){

                  },
                  child: TextField(
                    keyboardType: TextInputType.none,
                    controller: _betMobileMyrSgdController2,
                    decoration: InputDecoration(


                      border: OutlineInputBorder(
                        borderSide: BorderSide.none,

                      ),
                    ),
                  ),
                ),

                TextField(
                  keyboardType: TextInputType.none,
                  controller: _betMobileMyrSgdController3,
                  decoration: const InputDecoration(


                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,


                    ),
                  ),
                ),
                SizedBox(height:MediaQuery.of(context).size.height*0.43,),
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
          Padding(
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
  ),
  SizedBox(height:MediaQuery.of(context).size.height*0.004,),
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
              _betMobileMyrSgdController2.clear();

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
    padding: const EdgeInsets.only(left: 28,right: 28,top: 5),
    child: ElevatedButton(onPressed: (){}, child: Center(child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text("Submit",style: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.bold),),
    ))),
  )


              ],
            ),
          ),
        )


    );
  }
}