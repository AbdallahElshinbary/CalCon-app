import 'dart:async';

import 'package:calcon/modules/calcon_app/login/login_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
class Splash_Screen extends StatefulWidget {
  const Splash_Screen({Key? key}) : super(key: key);

  @override
  _Splash_ScreenState createState() => _Splash_ScreenState();
}

class _Splash_ScreenState extends State<Splash_Screen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(milliseconds: 5), () => Navigator.pushReplacement(context,
        MaterialPageRoute(builder: (context)=> LoginScreen()))
    );

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/background.jpeg", ),
            fit: BoxFit.fill,


          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: double.infinity,
              child: Column(
                children: [
                  Image.asset("assets/images/logo.jpg", width: 100, height: 100,),
                  Text("CalCon", style: TextStyle(
                      fontSize: 40.0,
                      fontWeight: FontWeight.bold
                  ),
                  ),
                  Text("For Healthy Life Style ", style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold
                  )
                    ,)
                ],
              ),
            )
          ],
        ),
      ),


    );
  }
}

