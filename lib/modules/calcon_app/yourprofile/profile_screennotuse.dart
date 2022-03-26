

import 'package:calcon/shared/components/components.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class Profile_Screen extends StatefulWidget {
  const Profile_Screen({Key? key}) : super(key: key);

  @override
  State<Profile_Screen> createState() => _Profile_ScreenState();
}
class _Profile_ScreenState extends State<Profile_Screen> {
  int weight =60;
  int height= 160;
  int targetweight=50;

  @override
  Widget build(BuildContext context) {
    var defaultHeight=MediaQuery.of(context).size.height;
    var defaultWidth=MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 70,
        backgroundColor: Color(0xfffbfbfb),
        elevation: 0,
        leading:  IconButton(
            icon: Icon(Icons.keyboard_backspace_sharp, size: 30, color:Color(0xff78c93e) ,),
            onPressed: (){
            },
            color: Color(0xff2ab179) ),
        title: Text("CalCon", style: TextStyle(
            fontSize: 25,
            color: Color(0xff78c93e),
            fontWeight: FontWeight.w500
        ),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.all(10),
        child: Center(
          child: Column(
            children: [
              Text("YOUR PROFILE INFO ", style: TextStyle(fontWeight: FontWeight.w600, fontSize: 25 ),),
              SizedBox(height: defaultHeight * 0.05,),
              Text("Tell us your current weight",style: TextStyle(fontWeight: FontWeight.w500, fontSize: 22),),
              SizedBox(height: defaultHeight * 0.04,),
              SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 50,
                      child: MaterialButton(onPressed: (){
                        setState(() {
                          weight --;
                        });
                      },
                        child: Icon(Icons.remove, color: Colors.white,size: 20,),
                        color: Color(0xff78c93e),),
                    ),
                  SizedBox(width: defaultWidth* 0.02,),
                  Container(
                    width: 200,
                    height: 38,
                    child: Stack(
                      children: [
                        TextFormField(
                          decoration: InputDecoration(
                            label: Text(
                                '$weight'
                            ),

                            enabledBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                color: Colors.black,
                              ),
                              borderRadius: BorderRadius.circular(5),
                            ),
                            errorBorder: OutlineInputBorder(

                              borderSide: const BorderSide(
                                color: Colors.black,
                              ),
                              borderRadius: BorderRadius.circular(5),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5),
                              borderSide: BorderSide(
                                color: Colors.black
                              )
                            )
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(left: 150),
                          child: VerticalDivider(
                            thickness: 3,

                          ),
                        ),

                      ],
                    ),
                  ),
                    SizedBox(width: defaultWidth* 0.02,),
                    Container(

                      width: 50,
                      child: MaterialButton(onPressed: (){
                        setState(() {
                          weight++;
                        });
                      },
                        child: Icon(Icons.add, color: Colors.white,size: 20,),
                        color: Color(0xff78c93e),),
                    ),

                ],

                ),
                
              ),
              SizedBox(height: defaultHeight * 0.09,),
              Text("Tell us your height",style: TextStyle(fontWeight: FontWeight.w500, fontSize: 22),),
              SizedBox(height: defaultHeight * 0.04,),
              SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 50,
                      child: MaterialButton(onPressed: (){
                        setState(() {
                          height --;
                        });
                      },
                        child: Icon(Icons.remove, color: Colors.white,size: 20,),
                        color: Color(0xff78c93e),),
                    ),
                    SizedBox(width: defaultWidth* 0.02,),
                    Container(
                      width: 200,
                      height: 38,
                      child: Stack(
                        children: [
                          TextFormField(
                            decoration: InputDecoration(
                                label: Text(
                                    '$height'
                                ),

                                enabledBorder: OutlineInputBorder(
                                  borderSide: const BorderSide(
                                    color: Colors.black,
                                  ),
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                errorBorder: OutlineInputBorder(

                                  borderSide: const BorderSide(
                                    color: Colors.black,
                                  ),
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(5),
                                    borderSide: BorderSide(
                                        color: Colors.black
                                    )
                                )
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.only(left: 150),
                            child: VerticalDivider(
                              thickness: 3,

                            ),
                          ),

                        ],
                      ),
                    ),
                    SizedBox(width: defaultWidth* 0.02,),
                    Container(

                      width: 50,
                      child: MaterialButton(onPressed: (){
                        setState(() {
                          height++;
                        });
                      },
                        child: Icon(Icons.add, color: Colors.white,size: 20,),
                        color: Color(0xff78c93e),),
                    ),

                  ],

                ),

              ),

              SizedBox(height: defaultHeight * 0.09,),
              Text("what\'s your target weight?",style: TextStyle(fontWeight: FontWeight.w500, fontSize: 22),),
              SizedBox(height: defaultHeight * 0.04,),
              SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 50,
                      child: MaterialButton(onPressed: (){
                        setState(() {
                          targetweight --;
                        });
                      },
                        child: Icon(Icons.remove, color: Colors.white,size: 20,),
                        color: Color(0xff78c93e),),
                    ),
                    SizedBox(width: defaultWidth* 0.02,),
                    Container(
                      width: 200,
                      height: 38,
                      child: Stack(
                        children: [
                          TextFormField(
                            decoration: InputDecoration(
                                label: Text(
                                    '$targetweight'
                                ),

                                enabledBorder: OutlineInputBorder(
                                  borderSide: const BorderSide(
                                    color: Colors.black,
                                  ),
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                errorBorder: OutlineInputBorder(

                                  borderSide: const BorderSide(
                                    color: Colors.black,
                                  ),
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(5),
                                    borderSide: BorderSide(
                                        color: Colors.black
                                    )
                                )
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.only(left: 150),
                            child: VerticalDivider(
                              thickness: 3,

                            ),
                          ),

                        ],
                      ),
                    ),
                    SizedBox(width: defaultWidth* 0.02,),
                    Container(

                      width: 50,
                      child: MaterialButton(onPressed: (){
                        setState(() {
                          targetweight++;
                        });
                      },
                        child: Icon(Icons.add, color: Colors.white,size: 20,),
                        color: Color(0xff78c93e),),
                    ),

                  ],

                ),

              ),
              Spacer(),
              Padding(
                padding: const EdgeInsets.only(left: 250),
                child: MaterialButton(
                  onPressed: (){},
                  color: Color(0xff078c93e),
                  child: Text("Next", style: TextStyle(color: Colors.white,fontSize: 15),),
                ),
              ),



            ],
          ),
        ),
      ),

    );
  }
}


