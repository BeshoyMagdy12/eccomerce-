import 'package:ecommerce/core/utilites/app_servecies.dart';
import 'package:ecommerce/feature/signin/data/repo/sign_in_repo.dart';

class SignInRepoImp extends SignInRepo{
  final AppService appService;

  SignInRepoImp(this.appService);
  @override
  Future<Map<String,dynamic>> signIn({required String name, required String email, required String phone, required String password})async {
  late  Map<String,dynamic> response;
  try {
   response=await  appService.post('register', {
      'name':name,
      'email':email,
      'password':password,
      'phone':phone,
  
    });
}  catch (e) {
  print("SignInRepoImp:$e");
}
    
 return response;
  }
}