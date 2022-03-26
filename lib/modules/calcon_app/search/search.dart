import 'package:flutter/material.dart';
class Search_Screen extends StatelessWidget {
  const Search_Screen({Key? key}) : super(key: key);

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
            color: Color(0xff78c93e),
            fontWeight: FontWeight.w500
        ),
        ),
        centerTitle: true,

      ),

    );
  }
}
