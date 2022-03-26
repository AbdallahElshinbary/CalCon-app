
import 'package:calcon/shared/components/components.dart';
import 'package:group_button/group_button.dart';
import 'package:flutter/material.dart';
class Active extends StatefulWidget {
  const Active({Key? key}) : super(key: key);

  @override
  _ActiveState createState() => _ActiveState();
}

class _ActiveState extends State<Active> {
  List<String> actives=[
    "Little or no exercise",
    "1-3 workouts/week",
    "4-5 workouts/week",
    "6-7 workouts/week"
  ];
  bool isSelected=false;

  @override
  Widget build(BuildContext context) {
    var defaultHeight=MediaQuery.of(context).size.height;
    var defaultWidth=MediaQuery.of(context).size.width;
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
        child: Center(
          child: Column(
            children: [
            Text("HOW ACTIVE ARE YOU?" , style: TextStyle(fontWeight: FontWeight.w600, fontSize: 25),),
              SizedBox(height: defaultHeight * 0.05,),
              containerActive(text: actives[0], Height: defaultHeight*0.08,
                  color: isSelected ?  Color(0xff78c93e):Colors.white,
                  background: isSelected?   Colors.white: Color(0xff78c93e),
                  onpress: (){
                     setState(() {
                       if(actives[0]==0){
                         isSelected=!isSelected;
                       }
                     });
                  }),
              SizedBox(height: defaultHeight * 0.05,),
              containerActive(text: actives[1], Height: defaultHeight*0.08,
                  color: isSelected ? Colors.white : Color(0xff78c93e) ,
                  background: isSelected?   Color(0xff78c93e): Colors.white,
                  onpress: (){
                setState(() {
                if(actives[1]==1) {
                  isSelected = !isSelected;
    }
                }
                );
                  }),
              SizedBox(height: defaultHeight * 0.05,),
              containerActive(text: actives[2], Height: defaultHeight*0.08,
                  color: isSelected ? Colors.white : Color(0xff78c93e) ,
                  background: isSelected?   Color(0xff78c93e): Colors.white,
                  onpress: (){
                setState(() {
                  if(actives[2]==2){
                    isSelected=!isSelected;

                  }

                });


              }),
              SizedBox(height: defaultHeight * 0.05,),
              containerActive(text: actives[3], Height: defaultHeight*0.08,
                  color: isSelected ? Colors.white : Color(0xff78c93e) ,
                  background: isSelected?   Color(0xff78c93e): Colors.white,

                  onpress: (){
                   setState(() {
                 if(actives[3]==3){
                   isSelected=!isSelected;}
                   });
              }),
              Spacer(),
              Padding(
                padding: const EdgeInsets.only(left:200.0),
                child: defaultbuttonNext(Width: defaultWidth*0.4),
              ),

            ],

          ),
        ),
      ),
    );
  }
}

