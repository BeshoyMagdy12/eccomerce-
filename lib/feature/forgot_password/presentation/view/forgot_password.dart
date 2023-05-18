import 'package:ecommerce/feature/forgot_password/presentation/view/forgot_password_screen_body.dart';
import 'package:flutter/material.dart';


class ForgotPasswordScreen extends StatelessWidget {
  const ForgotPasswordScreen({super.key});

   static String routeName='/forgot_password_screen';

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        appBar: AppBar(
        title:const Text('Forgot Password',style: TextStyle(color: Colors.grey),),
        centerTitle: true,
      ),
      body: ForgotPasswordScreenBody(),
    );
  }
}