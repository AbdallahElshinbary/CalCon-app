
import 'package:calcon/modules/calcon_app/fitnessgoal/fitness_goal.dart';
import 'package:calcon/modules/calcon_app/login/login_screen.dart';
import 'package:calcon/modules/calcon_app/signup/cubit/states.dart';
import 'package:calcon/shared/components/background.dart';
import 'package:calcon/shared/components/components.dart';
import 'package:calcon/shared/network/endpoints.dart';
import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'cubit/cubit.dart';
class Signup_Screen extends StatelessWidget {
  const Signup_Screen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    var defaultHeight=MediaQuery.of(context).size;
    var  formkey=  GlobalKey <FormState>();

    var nameController = TextEditingController();
    var emailController = TextEditingController();
    var passwordController = TextEditingController();
    var confirmPassController = TextEditingController();
    var phoneController = TextEditingController();
    var dateController = TextEditingController();
    var genderController = TextEditingController();

    return BlocProvider(
         create:(BuildContext context )=> calconSignupCubit(),
      child:BlocConsumer<calconSignupCubit, calconSignupState>(
        listener: (context , state ){},
        builder: (context , state){
          return Stack(
            children: [
              Backgroundimage(),
              Scaffold(
                backgroundColor: Colors.transparent,
                appBar: AppBar(
                  backgroundColor: Colors.transparent,
                  elevation: 0.0,
                ),
                body:  Center(
                  child: SingleChildScrollView(
                    child: Padding(
                      padding:  EdgeInsets.all(20.0),
                      child: Form(
                        key: formkey,
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children:  [
                            Text("Create Account", style: TextStyle(color: Colors.white,fontSize: 45,fontWeight: FontWeight.bold),),
                            SizedBox(height: 5,),
                            Text("Lot\'s begin our journey together", style: TextStyle(color: Colors.white,fontSize: 20),),
                            SizedBox(height: 20,),
                            defaultFormfield(
                                controller: nameController,
                                label: "Full Name",
                                prefix: Icons.person,
                                type: TextInputType.name,
                                validate: ( value){
                                  if(value!.isEmpty){
                                    return 'please enter your full name';
                                  }
                                }
                            ),
                            SizedBox(height: 20,),
                            defaultFormfield(
                              controller: emailController,
                              validate: ( value){
                                if(value!.isEmpty){
                                  return 'please enter your email address';
                                }
                              },
                              label: "Email",
                              prefix: Icons.mail,
                              type: TextInputType.emailAddress,
                            ),
                            SizedBox(height: 20,),
                            defaultFormfield(
                              controller: passwordController,
                              validate: ( value){
                                if(value!.isEmpty){
                                  return 'password is too short';
                                }
                              },
                              label: "Password",
                              prefix: Icons.lock,
                              type: TextInputType.visiblePassword,
                            ),
                            SizedBox(height: 20,),

                            defaultFormfield(
                              controller: confirmPassController,
                              validate: ( value){
                                if(value!.isEmpty){
                                  return 'please enter password again' ;
                                }
                              },
                              label: "Confirm Password",
                              prefix: Icons.lock,
                              type: TextInputType.visiblePassword,
                            ),
                            SizedBox(height: 20,),

                            defaultFormfield(
                              controller: phoneController,
                              validate: ( value){
                                if(value!.isEmpty){
                                  return 'رقم التليفون غير صحيح';
                                }
                              },
                              label: "Phone",
                              prefix: Icons.phone,
                              type: TextInputType.phone,
                            ),
                            SizedBox(height: 20,),
                            defaultFormfield(
                              controller: dateController,
                              validate: ( value){
                                if(value!.isEmpty){
                                  return 'please enter your date';
                                }
                              },
                              label: "Date of birth",
                              prefix: Icons.date_range,
                              type: TextInputType.datetime,
                            ),
                            SizedBox(height: 20,),
                            defaultFormfield(

                              controller: genderController,
                              validate: (value){
                                if(value!.isEmpty){
                                  return 'please choose your gender';
                                }
                              },
                              label: "Gender",
                              prefix: Icons.accessibility_sharp,
                              type: TextInputType.text,
                            ),
                            SizedBox(height: 25,),
                            ConditionalBuilder(
                              fallback: (context) => Center(child: CircularProgressIndicator()),
                              condition: state is! SignupLoadingState,
                              builder: (context) =>defaultButton(

                                height: defaultHeight.height * 0.07,
                                bordercolor: Colors.white,
                                function: (){
                                  if(formkey.currentState!.validate()){
                                    calconSignupCubit.get(context).userSignup(
                                      name:nameController.text,
                                      email: emailController.text,
                                      phone: phoneController.text,
                                      password: passwordController.text,
                                    );
                                  }

                                },
                                text: "SIGN UP",
                                radius: 10,
                                isUpperCase: true,
                                background: Colors.transparent,

                              )
                              ,
                            ),
                            SizedBox(height: 18,),
                            Row(
                              children: [
                                Text("Aleardy have an account?! ", style: TextStyle(color: Colors.white, fontSize: 20),),
                                TextButton(onPressed: (){
                                  navigateTo(context, LoginScreen());
                                }, child: Text("Log in ",style: TextStyle(color: Colors.white, fontSize: 20) ))
                              ],
                            )

                          ],
                        ),
                      ),
                    ),
                  ),
                ),

              )

            ],

          );
        } ,
      )

    );

  }
}
