part of 'sign_in_cubit.dart';

abstract class SignInState {}

class SignInInitial extends SignInState {}

class SignInLodding extends SignInState {}
class SignInsuccess extends SignInState{
  
}

class SignInFailure extends SignInState{
 final  String errorMassg;

  SignInFailure(this.errorMassg);
}

