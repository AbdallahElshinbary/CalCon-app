import 'package:calcon/modules/calcon_app/login/cubit/states.dart';
import 'package:calcon/shared/network/remote/dio_helper.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:calcon/shared/network/endpoints.dart';

class calconLogingCubit extends Cubit<calconLoginState>{
  calconLogingCubit() : super(LoginIntialState());

  static calconLogingCubit get(context ) =>
      BlocProvider.of(context);
  void userLogin({
  required String username,
    required String password
})
  {
    emit(LoginLoadingState());
    DioHelper.postData(url: LOGIN,
        data: {
      'email': username,
       'password' :password
        },
    ).then((value) {

       emit(LoginSucessState());
    }
    ).catchError((error){
      print(error.toString());
        emit(LoginerrorState(error.toString()));
    });
  }
}