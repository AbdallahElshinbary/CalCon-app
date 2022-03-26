import 'package:calcon/modules/calcon_app/fitnessgoal/fitness_goal2.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:calcon/shared/styles/themes.dart';
import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:calcon/modules/calcon_app/signup/signup_screen.dart';
import 'package:calcon/shared/components/background.dart';
import 'package:calcon/shared/components/components.dart';
import 'package:calcon/shared/components/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'cubit/cubit.dart';
import 'cubit/states.dart';
class LoginScreen extends StatelessWidget {


  var  formkey=  GlobalKey <FormState>();
  var usernameController = TextEditingController();
  var passController = TextEditingController();

  LoginScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    var defaultHeight=MediaQuery.of(context).size;
    var defaultWidth=MediaQuery.of(context).size;
    return  BlocProvider(
      create: (BuildContext context )=> calconLogingCubit(),
      child: BlocConsumer<calconLogingCubit,calconLoginState >(
          listener: (context, state) {},
          builder: (context , state){
            return Stack(
              children: [
                Backgroundimage(),
                Scaffold(
                  backgroundColor: Colors.transparent,
                  appBar: AppBar(
                    backgroundColor: Colors.transparent,
                    elevation: 0.0,
                    leading: IconButton(
                        onPressed: (){},
                        icon:  Icon(Icons.keyboard_backspace_sharp , size: 30,)),
                  ),
                  body:  Center(
                    child: SingleChildScrollView(
                      child: Padding(
                        padding:  EdgeInsets.all(20.0),
                        child: Form(
                          autovalidateMode: AutovalidateMode.onUserInteraction,
                          key: formkey,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children:  [
                              const Text("Welcome Back!", style: TextStyle(
                                fontSize: 45,
                                fontWeight: FontWeight.w700,
                                color: Colors.white
                              ) ),
                              SizedBox(height: defaultHeight.height * 0.04,),
                              Padding(
                                padding: const EdgeInsets.only(left: 10),
                                child: Text("Log in to continue", style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 22,
                                  fontWeight: FontWeight.w500
                                ),),
                              ),
                              SizedBox(height: defaultHeight.height * 0.06,),
                              defaultFormfield(
                                controller: usernameController,
                                validate: ( value){
                                  if(value!.isEmpty  ){
                                    return 'User Name must be filled';
                                  }
                                },
                                label: "username",
                                prefix: Icons.person,
                                type: TextInputType.name,
                              ),
                              SizedBox(height: defaultHeight.height * 0.04,),
                              defaultFormfield(
                                controller: passController,
                                validate: ( value){
                                  if(value!.isEmpty){
                                    return 'password is too short';
                                  }
                                },
                                label: "password",
                                isPassword: true,
                                prefix: Icons.lock,
                                type: TextInputType.visiblePassword,
                                onSubmit: (value){
                                  if(formkey.currentState!.validate()){
                                    calconLogingCubit.get(context).userLogin(
                                        username: usernameController.text,
                                        password: passController.text);
                                  }
                                }
                              ),
                              TextButton(onPressed: (){}, child:
                              Text("Forget your password? ",
                                style: TextStyle(color: Colors.white, fontSize: 18),)),
                               SizedBox(
                                 height:defaultHeight.height * 0.04 ,
                               ),
                               ConditionalBuilder(
                                 fallback: (context) => Center(child: CircularProgressIndicator()),
                                 condition: state is! LoginLoadingState,
                                 builder: (context) =>defaultButton(
                                   height: defaultHeight.height * 0.07,
                                   bordercolor: Colors.white,
                                   function: (){
                                     if(formkey.currentState!.validate()){
                                      calconLogingCubit.get(context).userLogin(username:
                                      usernameController.text, password: passController.text,

                                      );
                                     }
                                     print(usernameController.text);
                                     print(passController.text);

                                   },
                                   text: "LOG IN",
                                   radius: 10,
                                   isUpperCase: true,
                                   background: Colors.transparent,

                                 )
                                 ,
                               ),

                              SizedBox(height: defaultHeight.height * 0.03,),
                              defaultButton(
                                height: defaultHeight.height * 0.07,
                                bordercolor: Colors.green,
                                function: (){
                                  navigateTo(
                                    context, Signup_Screen(),
                                  );
                                },
                                text: "sign up",
                                radius: 10,
                                isUpperCase: true,
                                background: Colors.green,
                              ),
                              SizedBox(height: defaultHeight.height * 0.03,),
                             Container(
                               decoration: BoxDecoration(
                                 color: Colors.blueAccent,
                                 borderRadius: BorderRadius.circular(10),
                               ),
                               height: defaultHeight.height * 0.07,
                               width: double.infinity,
                               child: MaterialButton(
                                 onPressed: (){},
                                 child: Row(
                                  children: [
                                  Icon(FontAwesomeIcons.facebookF,color: Colors.white,),
                                   SizedBox(width: defaultWidth.width *0.20 ),
                                    Text(
                                       "Login with Facebook",
                                       style: TextStyle(
                                       fontSize: 18,
                                    color: Colors.white,
                            fontWeight: FontWeight.w600
                                 ),
                                  )

                                   ],
                                 )
                               ),
                             ),
                             SizedBox(height: defaultHeight.height *  0.03,),
                              Container(
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                height: defaultHeight.height * 0.07,
                                width: double.infinity,
                                child: MaterialButton(
                                    onPressed: (){},
                                    child: Row(
                                      children: [
                                        Icon(FontAwesomeIcons.google,color: Colors.black,),
                                        SizedBox(width: defaultWidth.width *0.20 ),
                                        Text(
                                          "Log in with Gmail",
                                          style: TextStyle(
                                              fontSize: 18,
                                              color: Colors.black,
                                              fontWeight: FontWeight.w600
                                          ),
                                        )

                                      ],

                                    )
                                ),

                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),

                )

              ],

            );
          }
      ),

    );

  }
}
