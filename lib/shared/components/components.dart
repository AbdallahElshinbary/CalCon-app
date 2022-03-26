
import 'package:calcon/shared/styles/themes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
Widget defaultFormfield({
  required TextInputType type,
  required IconData prefix,
  Color prefixColor = Colors.white,
  required String label,
  Color labeltext = Colors.white,
   // Function ? validate,
  required TextEditingController controller,
  bool isPassword = false,
  Function? onSubmit,
  required String ? Function(String?) validate,

}) => TextFormField(

  onFieldSubmitted: (s){
    onSubmit!(s);
  },

  controller: controller,
  validator: validate,
  keyboardType: type,
  cursorColor: Colors.white,
  cursorHeight: 25,
  obscureText: isPassword,
  style: TextStyle(color: Colors.white),
  decoration: InputDecoration(
    prefixIcon: Icon(prefix, color: prefixColor,),
    labelText: label,
    labelStyle: TextStyle(color: labeltext, fontSize: 18),
    enabledBorder: OutlineInputBorder(
      borderSide: const BorderSide(
        color: Colors.white,
      ),
      borderRadius: BorderRadius.circular(30),
    ),
   errorStyle: TextStyle(
     color: Colors.white,
     fontSize: 18
   ),
    errorBorder: OutlineInputBorder(
      borderSide: const BorderSide(
        color: Colors.white,
      ),
      borderRadius: BorderRadius.circular(30),
    ),
    focusedBorder: OutlineInputBorder(
      borderSide: BorderSide(
        color: Colors.white,
      ),
      borderRadius: BorderRadius.circular(30),
    ),
    focusedErrorBorder: OutlineInputBorder(
      borderSide: BorderSide(
        color: Colors.white
      ),
      borderRadius: BorderRadius.circular(15)
    )

  ),

);
Widget defaultButton({

  double width = double.infinity,
  Color background = Colors.blue,
  double? height,
  bool isUpperCase = true,
  double radius = 3.0,
  required Function function,
  required String text,
  required Color bordercolor ,
  double sizeFont =25,
  Color textColor=Colors.white,
  IconData? icon ,
  Color ? iconcolor,
}) =>
    Container(
      width: width,
      height: height ,
      child: MaterialButton(

        onPressed: (){
          function();
        },
        child: Container(
         child:
           Text(
             isUpperCase ? text.toUpperCase() : text,
             style: TextStyle(
                 color: textColor,
                 fontWeight: FontWeight.w700,
                 fontSize: sizeFont
             ),
           )

        ),
      ),
      decoration: BoxDecoration(
        border: Border.all(color: bordercolor),
        borderRadius: BorderRadius.circular(
          radius,
        ),
        color: background,
      ),
    );
void navigateTo(context, widget) => Navigator.push(
  context,
  MaterialPageRoute(
    builder: (context) => widget,
  ),
);
Widget defaultbuttonNext ({
  double? Width,
   String text="Next",
  double? Height

})=> Container(
  width: Width,
   height: Height,
  decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(5),
      color:Color(0xff078c93e)
  ),
  child: MaterialButton(
    onPressed: (){

    },
    child: Text(text, style: TextStyle(color: Colors.white,fontSize: 20),),
  ),
);
Widget containerActive ({
  double ? Height,
  required String text,
  required Function onpress,
  Color ? color,
  Color ? background,
})=> Container(
  decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(10),
    color: background,
    border: Border.all(
      width: 2,
      color: Color(0xff78c93e),
    ),
  ),
  width: double.infinity,
  height: Height,
  child: MaterialButton(
    highlightColor: Color(0xff78c93e),
    onPressed: (){
      onpress();

    },
    
    child: Padding(
      padding: const EdgeInsets.only(top: 5.0),
      child: Text(text,
        style: TextStyle(fontSize: 20,fontWeight: FontWeight.w600, color: color,),
        textAlign: TextAlign.center,

      ),
    ),
  ),
);


