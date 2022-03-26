abstract class calconLoginState {}

class LoginIntialState extends calconLoginState{}

class LoginLoadingState extends calconLoginState{}

class LoginSucessState extends calconLoginState{}

class LoginerrorState extends calconLoginState{
  final String error;
  LoginerrorState(this.error);
}


