import 'package:ecommerce/feature/signin/presentation/view/widget/sign_in_screen_body.dart';
import 'package:flutter/material.dart';


class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});
static String routeName='/sign_in';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const Text('Sign In',style: TextStyle(color: Colors.grey),),
        centerTitle: true,
      ),
      body: SignInScreenBody() ,
    );
  }
}