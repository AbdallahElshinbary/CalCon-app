
import 'package:bloc/bloc.dart';
import 'package:calcon/shared/cubit/states.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CalconappCubit extends Cubit<CalconStates>{
  CalconappCubit() : super(InitialState());

  static CalconappCubit  get(context ) =>
      BlocProvider.of(context);

  int weight =60;
  int height= 160;
  int targetweight=50;
  void PluseWeight(){
    weight++;
    emit(PlusWeightState());

  }
  void MinusWeight(){
    weight--;
    emit(MinusWeightState());

  }
  void PlusHeight(){
    height++;
    emit(PlusHeightState());
  }
  void MinusHeight(){
    height--;
    emit(MinusHeightState());
  }
  void PlusTargetWeight(){
    targetweight++;
    emit(PlusTargetWeightState());
  }
  void MinusTargetWeight(){
    targetweight--;
    emit(MinusTargetWeightState());
  }
Color textcolor=Color(0xff78c93e);
  Color background =Colors.white;
  bool onpress=false;

  void ChangeColortext(){
    onpress=!onpress;
    textcolor= onpress ?     Colors.white :Color(0xff78c93e);
    background=onpress? Color(0xff78c93e) : Colors.white;
    emit(ChangeTextColorState());
  }








}