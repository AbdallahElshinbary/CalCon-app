import 'package:flutter/material.dart';
class Goal extends StatefulWidget {

  const Goal({Key? key}) : super(key: key);

  @override
  _GoalState createState() => _GoalState();
}
class _GoalState extends State<Goal> {
  List<String> actives=[
    "Little or no exercise",
    "1-3 workouts/week",
    "4-5 workouts/week",
    "6-7 workouts/week"
  ];
  @override
  Widget build(BuildContext context) {
    var defaultHeight=MediaQuery.of(context).size;
    var defaultWidth=MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 70,
        backgroundColor: Color(0xfffbfbfb),
        elevation: 0,
        leading:  IconButton(
            icon: Icon(Icons.keyboard_backspace_sharp, size: 30, color:Colors.black ,),
            onPressed: (

                ){
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
        padding: const EdgeInsets.all(15.0),
        child: Center(
          child: Column(
            children: [
              Text("WHAT\'S YOUR FITNESS GOAL?", style: TextStyle(fontSize:22,color: Colors.black, fontWeight:FontWeight.w600 ,wordSpacing: 0.02 ),),
              SizedBox(height: defaultHeight.height * 0.04,),




            ],
          ),
        ),
      ),
    );
  }
}
