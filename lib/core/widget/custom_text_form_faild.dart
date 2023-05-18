
import 'package:ecommerce/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomTextFormFaild extends StatelessWidget {
  const CustomTextFormFaild({
    super.key,
    required this.label,
    required this.hintText,
    required this.assetName,
    required this.textInputType,
    this.obscureText = false,
    this.validator, 
    required this.textEditingController,
  });
  final String label;
  final String hintText;
  final String assetName;
  final TextInputType textInputType;
  final bool obscureText;
  final String? Function(String?)? validator;
  final TextEditingController textEditingController;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextFormField(
          controller: textEditingController,
          validator: validator,
          obscureText: obscureText,
          keyboardType: textInputType,
          decoration: InputDecoration(
            suffixIcon: Padding(
              padding: EdgeInsets.fromLTRB(0, 20.w, 20.w, 20.w),
              child: SvgPicture.asset(
                assetName,
                height: 17.h,
              ),
            ),
            floatingLabelBehavior: FloatingLabelBehavior.always,
            label: Text(label),
            hintText: hintText,
            contentPadding:
                EdgeInsets.symmetric(horizontal: 35.w, vertical: 17.h),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(28),
              borderSide: const BorderSide(color: kTextColor),
              gapPadding: 10,
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(28),
              borderSide: const BorderSide(color: kTextColor),
              gapPadding: 10,
            ),
          ),
        ),
      ],
    );
  }
}