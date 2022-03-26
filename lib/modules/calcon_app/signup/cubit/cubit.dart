import 'package:calcon/modules/calcon_app/signup/cubit/states.dart';
import 'package:calcon/shared/network/endpoints.dart';
import 'package:calcon/shared/network/remote/dio_helper.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class calconSignupCubit extends Cubit<calconSignupState>{
  calconSignupCubit() : super(SignupIntialState());

  static calconSignupCubit get(context ) =>
      BlocProvider.of(context);
  void userSignup({
    required String name,
    required String email,
    required String password,
    required String phone,

  })
  {
    emit(SignupLoadingState());
    DioHelper.postData(url: LOGIN,
      data: {
        'name': name,
        'email': email,
        'password' :password,
        'phone' : phone

      },
    ).then((value) {

      emit(SignupSucessState());
    }
    ).catchError((error){
      print(error.toString());
      emit(SignuperrorState(error.toString()));
    });


  }
}