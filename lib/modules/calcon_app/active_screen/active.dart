import 'package:calcon/shared/components/components.dart';
import 'package:calcon/shared/cubit/cubit.dart';
import 'package:calcon/shared/cubit/states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
class Active_Screen extends StatelessWidget {
  const Active_Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var defaultHeight=MediaQuery.of(context).size.height;
    var defaultWidth=MediaQuery.of(context).size.width;
    return BlocProvider(
      create: (BuildContext context  )=> CalconappCubit(),
      child: BlocConsumer<CalconappCubit,CalconStates>(
        listener: (context,state){},
        builder: (context,state){
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
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text("HOW ACTIVE ARE YOU?" , style: TextStyle(fontWeight: FontWeight.w600, fontSize: 25),),
                    SizedBox(height: defaultHeight * 0.05,),
                    containerActive(text: "Little or no exercise", Height: defaultHeight*0.08,
                        background: CalconappCubit.get(context).background,
                        color: CalconappCubit.get(context).textcolor,

                        onpress: (){
                          CalconappCubit.get(context).ChangeColortext();
                    }),
                    SizedBox(height: defaultHeight * 0.05,),
                    containerActive(text: "1-3 workouts/week", Height: defaultHeight*0.08,
                        background: CalconappCubit.get(context).background,
                        color: CalconappCubit.get(context).textcolor,
                        onpress: (){
                      CalconappCubit.get(context).ChangeColortext();
                    }),
                    SizedBox(height: defaultHeight * 0.05,),
                    containerActive(text: "4-5 workouts/week", Height: defaultHeight*0.08, onpress: (){
                   }),
                    SizedBox(height: defaultHeight * 0.05,),
                    containerActive(text: "6-7 workouts/week", Height: defaultHeight*0.08, onpress: (){
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
        },

      ),
    );
  }
}
