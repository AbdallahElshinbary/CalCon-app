import 'package:calcon/shared/components/components.dart';
import 'package:calcon/shared/styles/colors.dart';
import 'package:flutter/material.dart';
class congratlation extends StatelessWidget {
  const congratlation({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
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
            color: defaultcolor,
            fontWeight: FontWeight.w500
        ),
        ),
        centerTitle: true,

      ),
      body: Center(
        child: Column(
          children: const [
            Text("CONGRATULATION!", style: TextStyle(color: Color(0xff78c93e), fontWeight: FontWeight.w700, fontSize: 20),),
            Text("You Are Now one of CalCon Family", style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),),
            SizedBox(height: 100,),
           Icon(Icons.check_circle,size: 200,color: Color(0xff78c93e)) ,
            SizedBox(height: 100,),


          ],
        ),
      ),

    );
  }
}
