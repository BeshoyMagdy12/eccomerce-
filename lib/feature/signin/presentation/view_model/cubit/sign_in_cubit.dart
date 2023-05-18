
import 'package:ecommerce/feature/signin/data/repo/sign_in_repo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
part 'sign_in_state.dart';

class SignInCubit extends Cubit<SignInState> {
  SignInCubit(this.signInRepo) : super(SignInInitial());

final SignInRepo signInRepo;

Future<void> signIn({required String name,required String password,required String email,required String phone})async{
  emit(SignInLodding());
try {
  var x=await signInRepo.signIn(name: name, email: email, phone: phone, password: password);
  if(x['status']==true){
    x['data']['token'];
    emit(SignInsuccess());
  }else{
    emit(SignInFailure(x['message']));
  }
 

}  catch (e) {
  emit(SignInFailure(e.toString()));
}
}


}
