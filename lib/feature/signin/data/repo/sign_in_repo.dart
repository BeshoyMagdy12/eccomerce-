abstract class SignInRepo{
  Future<Map<String,dynamic>> signIn({required String name,required String email,required String phone,required String password});
}