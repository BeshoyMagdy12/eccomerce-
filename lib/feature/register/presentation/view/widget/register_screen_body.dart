import 'package:ecommerce/constants.dart';
import 'package:ecommerce/core/widget/custom_text_form_faild.dart';
import 'package:ecommerce/core/widget/defuilt_button.dart';
import 'package:ecommerce/core/widget/social_media_buttons.dart';
import 'package:ecommerce/feature/forgot_password/presentation/view/forgot_password.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../complete_profile/presentation/view/complete_profile_screen.dart';

class RegisterScreenBody extends StatefulWidget {
  RegisterScreenBody({super.key});

  @override
  State<RegisterScreenBody> createState() => _RegisterScreenBody();
}

class _RegisterScreenBody extends State<RegisterScreenBody> {
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
                    'Register Account',
                    style: TextStyle(
                      fontSize: 28.sp,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  const Text(
                    "Register with your email and password  \nor continue with social media",
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
                  CustomTextFormFaild(
                    textEditingController: passwordController,
                    validator: (p0) {
                      if (p0!.isEmpty) {
                        return 'password is required';
                      } else if (p0.length < 8) {
                        return 'Password must be greater than or equal to 8 characters long';
                      }
                    },
                    label: 'Confirm Password',
                    hintText: "Re-enter your password",
                    assetName: 'assets/icons/Lock.svg',
                    textInputType: TextInputType.visiblePassword,
                    obscureText: true,
                  ),
                  SizedBox(
                    height: 25.h,
                  ),
                  DefuiltButton(
                    text: 'continue',
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (ctx) => const CompleteProfileScreen(),
                        ),
                      );
                    },
                  ),
                  SizedBox(
                    height: 40.h,
                  ),
                  const SocialMediaButtons(),
                  SizedBox(
                    height: 20.h,
                  ),
                  Text(
                    'By continuing your confirm that you agree \nwith our Term and Condition',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 15.sp, color: Colors.grey[400]),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
