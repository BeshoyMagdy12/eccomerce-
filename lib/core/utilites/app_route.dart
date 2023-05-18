import 'package:ecommerce/feature/forgot_password/presentation/view/forgot_password.dart';
import 'package:ecommerce/feature/signin/presentation/view/sign_in_screen.dart';
import 'package:ecommerce/feature/splashe/presentation/splashe_screen.dart';
import 'package:flutter/material.dart';

final Map<String,WidgetBuilder> appRoutes={
  SplasheScreen.routeName:(context) =>const SplasheScreen(),
  SignInScreen.routeName:(context) =>const SignInScreen(),
  ForgotPasswordScreen.routeName:(context) => const ForgotPasswordScreen(),
};