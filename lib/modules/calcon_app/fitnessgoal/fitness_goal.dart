import 'package:calcon/shared/components/components.dart';

import 'package:flutter/material.dart';


class Fitnees_Screen extends StatelessWidget {
  const Fitnees_Screen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    var defaultHeight=MediaQuery.of(context).size;
    var defaultWidth=MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color(0xfffbfbfb),
      appBar:  AppBar(
        toolbarHeight: 70,
        backgroundColor: Color(0xfffbfbfb),
        elevation: 0,
        leading:  IconButton(
            icon: Icon(Icons.keyboard_backspace_sharp, size: 30, color:Colors.black ,),
            onPressed: (){
            },
            color: Color(0xff2ab179) ),
        title: Text("CalCon", style: TextStyle(
            fontSize: 28,
            color: Color(0xff78c93e),
            fontWeight: FontWeight.w500
        ),
        ),
        centerTitle: true,

      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text("WHAT\'S YOUR FITNESS GOAL?", style: TextStyle(fontSize:22,color: Colors.black, fontWeight:FontWeight.w600 ,wordSpacing: 0.02 ),),
              SizedBox(height: defaultHeight.height * 0.04,),
              Container(
                width: defaultWidth.width ,
                height: defaultHeight.height * 0.2,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black12,
                      blurRadius: 10,
                    )
                  ]
                ),
                child: MaterialButton(
                  focusColor: Colors.grey,
                  autofocus: true,
                  onPressed: (){},
                  child: Row(
                  children: [
                    Icon(Icons.face , size: 100,),
                    SizedBox(width: 10,),
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 10,),
                          Text("Lose Weight", style: TextStyle(fontSize: 22, color: Colors.black,fontWeight: FontWeight.bold),),
                          Text("we well help you with a safe & healthy rate of weight and fat loss , while preserving your muscle and athletic performance",
                            maxLines: 6,
                            style: TextStyle(fontSize: 15, color: Colors.grey),),

                        ],
                      ),
                    )
                  ],
              ),
                ),),
              SizedBox(height: defaultHeight.height * 0.04,),
              Container(
                width: defaultWidth.width ,
                height: defaultHeight.height * 0.2,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black12,
                        blurRadius: 10,
                      )
                    ]
                ),
                child: MaterialButton(
                  onPressed: (){},
                  child: Row(
                    children: [
                      Icon(Icons.face , size: 100,),
                      SizedBox(width: 10,),
                      Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: 10,),
                            Text("Gain Muscle", style: TextStyle(fontSize: 22, color: Colors.black,fontWeight: FontWeight.bold),),
                            Text("If you\'re looking to build up muscles, this is for you. We\'ll recommend the best macronutrients to Gain Muscle & muscle while minimizing fat again ",
                              maxLines: 6,
                              style: TextStyle(fontSize: 14, color: Colors.grey),),
                          ],
                        ),
                      )

                    ],
                  ),
                ),),
              SizedBox(height: defaultHeight.height * 0.04,),
              Container(
                width: defaultWidth.width ,
                height: defaultHeight.height * 0.2,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black12,
                        blurRadius: 10,
                      )
                    ]
                ),
                child: Row(
                  children: [
                    Icon(Icons.face , size: 100,),
                    SizedBox(width: 10,),
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 10,),
                          Text("Maintain Weight", style: TextStyle(fontSize: 22, color: Colors.black,fontWeight: FontWeight.bold),),
                          Text("Happy with your current weight but still want to eat healthy, wholesome food? You\'re at the right place",
                            textAlign: TextAlign.left,
                            style: TextStyle(fontSize: 15, color: Colors.grey),),
                        ],

                      ),

                    ),




                  ],
                ),
              ),
             SizedBox(height: defaultHeight.height * 0.01,),
              defaultbuttonNext(
                text: "Next",
                Width: defaultWidth.width*0.2,
                Height: defaultHeight.height*0.05
              )

            ],
          ),
        ),
      ),


    );
  }
}
