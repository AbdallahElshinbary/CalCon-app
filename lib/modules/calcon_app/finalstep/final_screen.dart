import 'package:calcon/shared/components/components.dart';
import 'package:flutter/material.dart';
class Final_Screen extends StatelessWidget {
  const Final_Screen({Key? key}) : super(key: key);

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
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Final Step :", style: TextStyle(fontSize: 20,fontWeight:FontWeight.w600),),
            SizedBox(height: 40,),
            Text("Do you Have Any chronic diseases or health proplems? ",
              style: TextStyle(fontSize:30,fontWeight: FontWeight.w600),),
            Text("please tell us", style: TextStyle(fontSize:30,fontWeight: FontWeight.w600),),
            SizedBox(height: 60,),
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("if yes write the problem"),
                  SizedBox(height: 10,),
                  TextFormField(
                    cursorColor: Color(0xff78c93e),
                    decoration: InputDecoration(
                      labelText: "NO/YES I HAVE..",
                      labelStyle: TextStyle(fontSize: 20),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Color(0xff78c93e)),
                          borderRadius: BorderRadius.circular(5),
                      ),
                      floatingLabelStyle: TextStyle(color: Color(0xff78c93e)),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Color(0xff78c93e)),
                        borderRadius: BorderRadius.circular(5),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 280.0, top: 150),
                    child: defaultbuttonNext(
                      text: "Next",
                        Width: defaultWidth.width*0.2,
                        Height: defaultHeight.height*0.05
                    ),
                  )
                ],
              ),
            )

          ],
        ),
      ),
    );
  }
}
