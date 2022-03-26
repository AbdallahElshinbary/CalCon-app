import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class Backgroundimage extends StatelessWidget {
  const Backgroundimage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container
      (
      width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/background.jpeg"),
            fit: BoxFit.fill,
            colorFilter: ColorFilter.mode(Colors.green, BlendMode.modulate),
          )
        ),

     );
  }
}
