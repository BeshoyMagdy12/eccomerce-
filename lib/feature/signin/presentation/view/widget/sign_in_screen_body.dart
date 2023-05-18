import 'package:ecommerce/constants.dart';
import 'package:ecommerce/core/widget/custom_text_form_faild.dart';
import 'package:ecommerce/core/widget/defuilt_button.dart';
import 'package:ecommerce/core/widget/social_media_buttons.dart';
import 'package:ecommerce/feature/forgot_password/presentation/view/forgot_password.dart';
import 'package:ecommerce/feature/register/presentation/view/register_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SignInScreenBody extends StatefulWidget {
  SignInScreenBody({super.key});

  @override
  State<SignInScreenBody> createState() => _SignInScreenBodyState();
}

class _SignInScreenBodyState extends State<SignInScreenBody> {
  final _key = GlobalKey<FormState>();
  bool rememperMe = false;
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10.w),
        child: SizedBox(
          width: double.infinity,
          child: Form(
            key: _key,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(
                    height: 20.h,
                  ),
                  Text(
                    'Welcome Back',
                    style: TextStyle(
                      fontSize: 28.sp,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  const Text(
                    "Sign in with your email and password  \nor continue with social media",
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: 50.h,
                  ),
                  CustomTextFormFaild(
                    textEditingController: emailController,
                    validator: (p0) {
                      if (p0!.isEmpty) {
                        return 'email is required';
                      }
                    },
                    label: 'Email',
                    hintText: "Enter your email",
                    assetName: 'assets/icons/Mail.svg',
                    textInputType: TextInputType.emailAddress,
                  ),
                  SizedBox(
                    height: 30.h,
                  ),
                  CustomTextFormFaild(
                    textEditingController: passwordController,
                    validator: (p0) {
                      if (p0!.isEmpty) {
                        return 'password is required';
                      } else if (p0.length < 8) {
                        return 'Password must be greater than or equal to 8 characters long';
                      }
                    },
                    label: 'Password',
                    hintText: "Enter your password",
                    assetName: 'assets/icons/Lock.svg',
                    textInputType: TextInputType.visiblePassword,
                    obscureText: true,
                  ),
                  SizedBox(
                    height: 25.h,
                  ),
                  Row(
                    children: [
                      Checkbox(
                          value: rememperMe,
                          onChanged: (v) {
                            setState(() {
                              rememperMe = v!;
                            });
                          }),
                      const Text('Remember me'),
                      const Spacer(),
                      GestureDetector(
                        onTap: () => Navigator.pushNamed(
                            context, ForgotPasswordScreen.routeName),
                        child: const Text(
                          'Forgot Password',
                          style:
                              TextStyle(decoration: TextDecoration.underline),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 25.h,
                  ),
                  DefuiltButton(
                    text: 'continue',
                    onPressed: () {},
                  ),
                  SizedBox(
                    height: 60.h,
                  ),
                  const SocialMediaButtons(),
                  SizedBox(
                    height: 10.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Don't have on account?"),
                      TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (ctx) => const RegisterScreen()));
                        },
                        child: const Text('Rigister'),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
