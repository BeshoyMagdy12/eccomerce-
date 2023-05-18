import 'package:ecommerce/constants.dart';
import 'package:ecommerce/core/widget/custom_text_form_faild.dart';
import 'package:ecommerce/core/widget/defuilt_button.dart';
import 'package:ecommerce/core/widget/social_media_buttons.dart';
import 'package:ecommerce/feature/forgot_password/presentation/view/forgot_password.dart';
import 'package:ecommerce/feature/otp/presentation/view/otp_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CompleteProfileScreenBody extends StatefulWidget {
  CompleteProfileScreenBody({super.key});

  @override
  State<CompleteProfileScreenBody> createState() =>
      _CompleteProfileScreenBody();
}

class _CompleteProfileScreenBody extends State<CompleteProfileScreenBody> {
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
                    'Complete Profile',
                    style: TextStyle(
                      fontSize: 28.sp,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  const Text(
                    "Complete Profile with your details  \nor continue with social media",
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: 50.h,
                  ),
                  CustomTextFormFaild(
                    textEditingController: emailController,
                    validator: (p0) {
                      if (p0!.isEmpty) {
                        return 'first name';
                      }
                    },
                    label: 'first name',
                    hintText: "Enter your first name",
                    assetName: 'assets/icons/User.svg',
                    textInputType: TextInputType.text,
                  ),
                  SizedBox(
                    height: 30.h,
                  ),
                  CustomTextFormFaild(
                    textEditingController: emailController,
                    validator: (p0) {
                      if (p0!.isEmpty) {
                        return 'last name';
                      }
                    },
                    label: 'last name',
                    hintText: "Enter your last name",
                    assetName: 'assets/icons/User.svg',
                    textInputType: TextInputType.text,
                  ),
                  SizedBox(
                    height: 30.h,
                  ),
                  CustomTextFormFaild(
                    textEditingController: passwordController,
                    validator: (p0) {
                      if (p0!.isEmpty) {
                        return 'Phone Number is required';
                      }
                    },
                    label: 'Phone Number',
                    hintText: "Enter your phone number",
                    assetName: 'assets/icons/Phone.svg',
                    textInputType: TextInputType.phone,
                    obscureText: true,
                  ),
                  SizedBox(
                    height: 25.h,
                  ),
                  CustomTextFormFaild(
                    textEditingController: passwordController,
                    validator: (p0) {
                      if (p0!.isEmpty) {
                        return 'Address is required';
                      }
                    },
                    label: 'Address',
                    hintText: "Enter your address",
                    assetName: 'assets/icons/Location point.svg',
                    textInputType: TextInputType.streetAddress,
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
                              builder: (ctx) => const OTPScreen()));
                    },
                  ),
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
