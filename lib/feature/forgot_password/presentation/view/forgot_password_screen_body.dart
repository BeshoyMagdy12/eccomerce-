import 'package:ecommerce/core/widget/custom_text_form_faild.dart';
import 'package:ecommerce/core/widget/defuilt_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ForgotPasswordScreenBody extends StatelessWidget {
  ForgotPasswordScreenBody({super.key});

  TextEditingController emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: Column(
         
            children: [
              SizedBox(height: 30.h),
              Text(
                "Forgot Password",
                style: TextStyle(
                  fontSize: 28.sp,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10.h),
              const Text(
                "Please enter your email and we will send \nyou a link to return to your account",
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 60.h,),
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
                            SizedBox(height: 60.h,),

              DefuiltButton(
                text: 'Continue',
                onPressed: () {},
              ),
                            SizedBox(height: 60.h,),


                     Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                   const Text("Don't have on account?"),
                    TextButton(onPressed: (){}, child:const Text('Sign Up'),),
                  ],
                ),
            ],
          ),
        ),
      ),
    );
  }
}
