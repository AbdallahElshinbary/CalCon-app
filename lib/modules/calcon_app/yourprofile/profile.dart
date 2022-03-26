import 'package:calcon/shared/cubit/cubit.dart';
import 'package:calcon/shared/cubit/states.dart';
import 'package:flutter/material.dart';
import 'package:calcon/shared/components/components.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Profile extends StatelessWidget {
  int weight =60;
  int height= 160;
  int targetweight=50;
   Profile({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    var defaultHeight=MediaQuery.of(context).size.height;
    var defaultWidth=MediaQuery.of(context).size.height;
    return BlocProvider(
      create: (BuildContext context) => CalconappCubit(),
      child: BlocConsumer<CalconappCubit,CalconStates>(
        listener: ( context ,  state){},
        builder: ( context ,  state){
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
                                 CalconappCubit.get(context).MinusWeight();
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
                                          '${CalconappCubit.get(context).weight}'
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
                                    thickness: 1,
                                    color: Colors.grey,
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.only(left: 170),
                                  child: TextFormField(
                                    decoration: InputDecoration(
                                        labelText: "kg",
                                        labelStyle: TextStyle(
                                            color: Colors.grey
                                        )
                                    ),
                                  ),
                                ),



                              ],
                            ),
                          ),
                          SizedBox(width: defaultWidth* 0.02,),
                          Container(
                            width: 50,
                            child: MaterialButton(onPressed: (){
                               CalconappCubit.get(context).PluseWeight();
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
                                     CalconappCubit.get(context).MinusHeight();
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
                                          '${CalconappCubit.get(context).height}'
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
                                    thickness: 1,
                                    color: Colors.grey,
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.only(left: 170),
                                  child: TextFormField(
                                    decoration: InputDecoration(
                                        labelText: "cm",
                                        labelStyle: TextStyle(
                                            color: Colors.grey
                                        )
                                    ),
                                  ),
                                ),

                              ],
                            ),
                          ),
                          SizedBox(width: defaultWidth* 0.02,),
                          Container(

                            width: 50,
                            child: MaterialButton(onPressed: (){
                                  CalconappCubit.get(context).PlusHeight();
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
                                 CalconappCubit.get(context).MinusTargetWeight();
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
                                          '${CalconappCubit.get(context).targetweight}'                                      ),

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
                                    thickness: 1,
                                    color: Colors.grey,
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.only(left: 170),
                                  child: TextFormField(
                                    decoration: InputDecoration(
                                        labelText: "kg",
                                        labelStyle: TextStyle(
                                            color: Colors.grey
                                        )
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(width: defaultWidth* 0.02,),
                          Container(

                            width: 50,
                            child: MaterialButton(onPressed: (){
                              CalconappCubit.get(context).PlusTargetWeight();
                            },
                              child: Icon(Icons.add, color: Colors.white,size: 20,),
                              color: Color(0xff78c93e),),
                          ),

                        ],

                      ),

                    ),
                    Spacer(),
                    Padding(
                      padding: const EdgeInsets.only(left: 200),
                      child: defaultbuttonNext(text: 'Next', Width: defaultWidth *0.4)
                    ),


                  ],
                ),
              ),
            ),

          );
        },

      ),
    );
  }
}
