import 'package:calcon/shared/components/components.dart';
import 'package:flutter/material.dart';
class Not_Eat_Screen extends StatelessWidget {
  const Not_Eat_Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
  var defaultHeight=MediaQuery.of(context).size;
  var defaultWidth=MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color(0xfffbfbfb),
      appBar: AppBar(
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
      body: Padding(
        padding: const EdgeInsets.only(left: 70.0,top: 30),
        child: Center(
          child: Column(
              children: [
                Text("WHAT DO YOU NOT EAT?",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 22),),
                SizedBox(height: 25,),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 50),
                      child: Container(
                        width: 100,
                        height: 120,
                        decoration: BoxDecoration(
                            border: Border.all(color: Color(0xff78c93e)),
                            borderRadius: BorderRadius.circular(5),
                            color:Colors.white
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(top: 25.0),
                          child: Center(
                            child: Column(
                              children: [
                                Image(image: AssetImage("assets/images/meat.jpg",)),
                                SizedBox(height: 15,),
                                Text("meat", style: TextStyle(color: Color(0xff78c93e),fontWeight: FontWeight.w600,fontSize: 15),),
                              ],
                            ),

                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 30,),
                    Padding(
                      padding: const EdgeInsets.only(left: 60),
                      child: Container(
                        width: 100,
                        height: 120,
                        decoration: BoxDecoration(
                            border: Border.all(color: Color(0xff78c93e)),
                            borderRadius: BorderRadius.circular(5),
                            color:Colors.white
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(top: 25.0),
                          child: Center(
                            child: Column(
                              children: [
                                Image(image: AssetImage("assets/images/seafood.jpg",)),
                                SizedBox(height: 15,),
                                Text("sea food", style: TextStyle(color: Color(0xff78c93e),fontWeight: FontWeight.w600,fontSize: 15),),
                              ],
                            ),

                          ),
                        ),
                      ),
                    ),

                  ],
                ),
                SizedBox(height: 20,),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 50),
                      child: Container(
                        width: 100,
                        height: 120,
                        decoration: BoxDecoration(
                            border: Border.all(color: Color(0xff78c93e)),
                            borderRadius: BorderRadius.circular(5),
                            color:Colors.white
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(top: 25.0),
                          child: Center(
                            child: Column(
                              children: [
                                Image(image: AssetImage("assets/images/milk.jpg",)),
                                SizedBox(height: 15,),
                                Text("milk", style: TextStyle(color: Color(0xff78c93e),fontWeight: FontWeight.w600,fontSize: 15),),
                              ],
                            ),

                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 30,),
                    Padding(
                      padding: const EdgeInsets.only(left: 60),
                      child: Container(
                        width: 100,
                        height: 120,
                        decoration: BoxDecoration(
                            border: Border.all(color: Color(0xff78c93e)),
                            borderRadius: BorderRadius.circular(5),
                            color:Colors.white
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(top: 25.0),
                          child: Center(
                            child: Column(
                              children: [
                                Image(image: AssetImage("assets/images/egg.jpg",)),
                                SizedBox(height: 15,),
                                Text("egg", style: TextStyle(color: Color(0xff78c93e),fontWeight: FontWeight.w600,fontSize: 15),),
                              ],
                            ),

                          ),
                        ),
                      ),
                    ),

                  ],
                ),
                SizedBox(height: 20,),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 50),
                      child: Container(
                        width: 100,
                        height: 120,
                        decoration: BoxDecoration(
                            border: Border.all(color: Color(0xff78c93e)),
                            borderRadius: BorderRadius.circular(5),
                            color:Colors.white
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(top: 25.0),
                          child: Center(
                            child: Column(
                              children: [
                                Image(image: AssetImage("assets/images/chicken.jpg",)),
                                SizedBox(height: 15,),
                                Text("chicken", style: TextStyle(color: Color(0xff78c93e),fontWeight: FontWeight.w600,fontSize: 15),),
                              ],
                            ),

                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 30,),
                    Padding(
                      padding: const EdgeInsets.only(left: 60),
                      child: Container(
                        width: 100,
                        height: 120,
                        decoration: BoxDecoration(
                            border: Border.all(color: Color(0xff78c93e)),
                            borderRadius: BorderRadius.circular(5),
                            color:Colors.white
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(top: 25.0),
                          child: Center(
                            child: Column(
                              children: [
                                Image(image: AssetImage("assets/images/chili.jpg",)),
                                SizedBox(height: 15,),
                                Text("chili", style: TextStyle(color: Color(0xff78c93e),fontWeight: FontWeight.w600,fontSize: 15),),
                              ],
                            ),

                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 15,),
                Text("Mention Another Food", style: TextStyle(fontWeight: FontWeight.w500,fontSize: 20),),
                Container(
                  width: 300,
                  height: 70,
                  child: TextFormField(
                    decoration: InputDecoration(
                        labelText: "mashrom..",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                        borderSide: BorderSide(
                          color: Colors.blue
                        )
                      ),

                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 300.0),
                  child: defaultbuttonNext(
                    text: "Next",
                      Width: defaultWidth.width*0.2,
                      Height: defaultHeight.height*0.05
                  ),
                )


              ],

            ),
        ),
      ),
      );


  }
}
