abstract class calconSignupState {}

class SignupIntialState extends calconSignupState{}

class SignupLoadingState extends calconSignupState{}

class SignupSucessState extends calconSignupState{}

class SignuperrorState extends calconSignupState{
  final String error;
  SignuperrorState(this.error);
}