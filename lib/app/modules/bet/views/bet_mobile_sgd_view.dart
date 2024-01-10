import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'betmobile_view.dart';

class BetMobileSgdView extends GetView {
   BetMobileSgdView({Key? key}) : super(key: key);

  final TextEditingController _betMobileSgdController =
  TextEditingController();
   final TextEditingController _betMobileSgdController2=
   TextEditingController();

   final TextEditingController _betMobileSgdController3=
   TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.black,
          title: const Text('HUAWEI88'),
          leading: IconButton(onPressed: (){
            Get.back();
          }, icon: Icon(Icons.arrow_back_ios)),


        ),

        body:SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Container(
            margin: const EdgeInsets.only(top: 25),
            width: MediaQuery.of(context).size.width, // or set a specific width
            child: Column(
              children: [
                Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.only(left: 5,right: 3),
                      width: MediaQuery.of(context).size.width*0.85,
                      child:  TextField(
                        controller: _betMobileSgdController,
                        decoration: const InputDecoration(
                          hintText: 'Remark',
                          hintStyle: TextStyle(color: Colors.grey, fontSize: 19),
                        ),
                      ),
                    ),
                    const Icon(Icons.error_outline,color: Colors.blue,size: 32,),
                  ],
                ),
                 TextField(
                  controller: _betMobileSgdController2,
                  decoration: const InputDecoration(


                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,

                    ),
                  ),
                ),

                 TextField(
                  controller: _betMobileSgdController3,

                  decoration: const InputDecoration(


                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,


                    ),
                  ),
                ),
                SizedBox(height:MediaQuery.of(context).size.height*0.43,),
                const Padding(
                  padding: EdgeInsets.only(left: 12.0,right: 12),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Padding(
                        padding: EdgeInsets.all(2.0),
                        child: buttonContainer(button: 'M',),
                      ),
                      Padding(
                        padding: EdgeInsets.all(2.0),
                        child: buttonContainer(button: 'P',),
                      ),  Padding(
                        padding: EdgeInsets.all(2.0),
                        child: buttonContainer(button: 'T',),
                      ),  Padding(
                        padding: EdgeInsets.all(2.0),
                        child: buttonContainer(button: 'S',),
                      ),  Padding(
                        padding: EdgeInsets.all(2.0),
                        child: buttonContainer(button: 'B',),
                      ),  Padding(
                        padding: EdgeInsets.all(2.0),
                        child: buttonContainer(button: 'K',),
                      ),  Padding(
                        padding: EdgeInsets.all(2.0),
                        child: buttonContainer(button: 'W',),
                      ),  Padding(
                        padding: EdgeInsets.all(2.0),
                        child: buttonContainer(button: 'G',),
                      ),  Padding(
                        padding: EdgeInsets.all(2.0),
                        child: buttonContainer(button: 'E',),
                      ),
                    ],
                  ),
                ),
                SizedBox(height:MediaQuery.of(context).size.height*0.004,),
                const Padding(
                  padding: EdgeInsets.only(left: 12.0,right: 12),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      numberContainer(number: '1',),
                      numberContainer(number: '2',),
                      numberContainer(number: '3',),
                      numberContainer(number: 'BOX',),
                      numberContainer(number: 'D',),
                    ],
                  ),
                ),
                SizedBox(height:MediaQuery.of(context).size.height*0.010,),
                const Padding(
                  padding: EdgeInsets.only(left: 12.0,right: 12),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      numberContainer(number: '4',),
                      numberContainer(number: '5',),
                      numberContainer(number: '6',),
                      numberContainer(number: 'iBOX',),
                      numberContainer(number: 'C',),
                    ],
                  ),
                ),
                SizedBox(height:MediaQuery.of(context).size.height*0.010,),
                const Padding(
                  padding: EdgeInsets.only(left: 12.0,right: 12),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      numberContainer(number: '7',),
                      numberContainer(number: '8',),
                      numberContainer(number: '9',),
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
                      const numberContainer(number: '*',),
                      const numberContainer(number: '0',),
                      const numberContainer(number: '#',),
                      Container(
                        height:MediaQuery.of(context).size.height*0.044 ,
                        width:MediaQuery.of(context).size.width*0.368,
                        color: Colors.grey,
                        child: const Center(child: Text("Enter",style: TextStyle(fontSize: 17,fontWeight: FontWeight.w500),)),
                      ),


                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 28,right: 28,top: 5),
                  child: ElevatedButton(onPressed: (){}, child: const Center(child: Padding(
                    padding: EdgeInsets.all(8.0),
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